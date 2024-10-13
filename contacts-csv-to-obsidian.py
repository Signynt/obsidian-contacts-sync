import csv
import os
import yaml
import datetime
import regex as re

# Path to the CSV file
csv_file = '/Users/vmitchell/GitHub/obsidian-contacts-sync/contacts-export.csv'

# Path to the Contacts folder
contacts_folder = '/Users/vmitchell/Obsidian/Vault/References/People I Know'

def represent_none(self, _):
    return self.represent_scalar('tag:yaml.org,2002:null', '')

yaml.add_representer(type(None), represent_none)

# Read the CSV file
with open(csv_file, 'r') as file:
    reader = csv.DictReader(file)
    contacts_data = list(reader)

# Iterate over the markdown files in the Contacts folder
    for filename in os.listdir(contacts_folder):
        if filename.endswith(".md"):
            file_path = os.path.join(contacts_folder, filename)
            with open(file_path, "r", encoding='utf-8') as file:
                content = file.read()
                match = re.match(r'^---\s*\n(.*?\n?)^---\s*\n', content, re.DOTALL | re.MULTILINE)
                if not match:
                    continue  # Skip files without YAML front matter
                
                yaml_content = match.group(1)

                yaml_data = yaml.safe_load(yaml_content)
                
                for contact_data in contacts_data:
                # Check if the first name and last name match in the CSV and YAML
                    if contact_data['First Name'] == yaml_data.get('first-name') and contact_data['Last Name'] == yaml_data.get('last-name'):
                        #print(contact_data)
                        #print(yaml_data)
                        # Set the mobile and birthday fields from the CSV
                        phone_number = contact_data['Mobile Phone']
                        email = contact_data['Email']
                        birthday = contact_data['Birthday'].split(' at ')[0]
                        if birthday:
                            birthday_date = datetime.datetime.strptime(birthday, '%A, %d. %B %Y').date().isoformat()
                        
                        # Use regex to match the line with email in it, and replace it in the file
                        email_pattern = r'(email:.*\n)(  - .*\n)*'
                        phone_pattern = r'(phone-number:.*\n)(  - .*\n)*'
                        birthday_pattern = r'(birthday:.*\n)(  - .*\n)*'

                        #print(f'Processing {file_path}...')
                        if email != '':
                            #print(f'Email: {email}')
                            if re.search(email_pattern, content):
                                content = re.sub(email_pattern, f'email:\n  - {email}\n', content)
                            else:
                                content = re.sub(r'---((\n.*)*)(---)', fr'---\1email:\n  - {email}\n---', content)

                        if phone_number != '':
                            #print(f'Phone Number: {phone_number}')
                            if re.search(phone_pattern, content):
                                content = re.sub(phone_pattern, f'phone-number:\n  - \"{phone_number}\"\n', content)
                            else:
                                content = re.sub(r'---((\n.*)*)(---)', fr'---\1phone-number:\n  - {phone_number}\n---', content)
                        
                        if birthday != '':
                            #print(f'Birthday: {birthday_date}')
                            if re.search(birthday_pattern, content):
                                content = re.sub(birthday_pattern, f'birthday: {birthday_date}\n', content)
                            else:
                                content = re.sub(r'---((\n.*)*)(---)', fr'---\1birthday: {birthday_date}\n---', content)

                        # Write the modified content back to the file
                        if email != '' or phone_number != '' or birthday != '':
                            with open(file_path, "w", encoding='utf-8') as file:
                                file.write(content)