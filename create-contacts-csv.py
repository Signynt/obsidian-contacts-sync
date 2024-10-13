import os
import csv
import yaml
import re
from geopy.geocoders import Nominatim


def parse_location_files(folder_path, filename):
    file_path = os.path.join(folder_path, (filename + ".md"))
    with open(file_path, "r", encoding='utf-8') as file:
        content = file.read()
        match = re.match(r'^---\s*\n(.*?\n?)^---\s*\n', content, re.DOTALL | re.MULTILINE)
        if not match:
            return
        
        yaml_content = match.group(1)

        yaml_data = yaml.safe_load(yaml_content)

        if "location" in yaml_data:
            if yaml_data["location"] is not None:
                location = str(yaml_data["location"])
                location = re.sub(r'\[|\]', '', location)
                return location

def parse_yaml_files(folder_path):
    csv_data = []
    for filename in os.listdir(folder_path):
        if filename.endswith(".md"):
            file_path = os.path.join(folder_path, filename)
            with open(file_path, "r", encoding='utf-8') as file:
                content = file.read()
                match = re.match(r'^---\s*\n(.*?\n?)^---\s*\n', content, re.DOTALL | re.MULTILINE)
                if not match:
                    continue  # Skip files without YAML front matter
                
                yaml_content = match.group(1)

                yaml_data = yaml.safe_load(yaml_content)

                if "first-name" in yaml_data and "last-name" in yaml_data and "address" in yaml_data:
                    if yaml_data["first-name"] is not None and yaml_data["last-name"] is not None and yaml_data["address"] is not None:
                        if yaml_data["address"] != []:
                            if yaml_data["address"] != []:
                                address = str(yaml_data["address"])
                                address = re.sub(r'\[|\]', '', address)
                                address = address.strip("'")
                                address = address.strip('"')
                                address_simplified = re.sub(r'\(.*?\)', '', address)
                                address_simplified = address_simplified.strip()
                                #print(address)
                                coordinates = parse_location_files(location_path, address)
                                geolocator = Nominatim(user_agent="your_app_name")

                                location_info = geolocator.reverse(coordinates, exactly_one=True)

                                if location_info is not None:
                                    postal_code = location_info.raw.get('address', {}).get('postcode')
                                    city = location_info.raw.get('address', {}).get('city')
                                    country = location_info.raw.get('address', {}).get('country')

                                    csv_data.append([yaml_data["first-name"], yaml_data["last-name"], address_simplified, postal_code, city, country])

                                #csv_data.append([yaml_data["first-name"], yaml_data["last-name"], address_simplified])

    return csv_data

def write_to_csv(csv_data, output_file):
    if csv_data is not None:
        with open(output_file, "w", newline="") as file:
            writer = csv.writer(file)
            writer.writerow(["First Name", "Last Name", "Address", "Postal Code", "City", "Country"])
            writer.writerows(csv_data)

contacts_path = "/Users/vmitchell/Obsidian/Vault/References/People I Know"
location_path = "/Users/vmitchell/Obsidian/Vault/References/Locations"
output_file = "/Users/vmitchell/GitHub/obsidian-contacts-sync/contact-addresses.csv"

csv_data = parse_yaml_files(contacts_path)
write_to_csv(csv_data, output_file)