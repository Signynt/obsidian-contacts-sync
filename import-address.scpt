FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ' ! Define the path to your CSV file     � 	 	 B   D e f i n e   t h e   p a t h   t o   y o u r   C S V   f i l e   
  
 l     ����  r         m        �   � / U s e r s / v m i t c h e l l / G i t H u b / o b s i d i a n - c o n t a c t s - s y n c / c o n t a c t - a d d r e s s e s . c s v  o      ���� 0 csvfilepath csvFilePath��  ��        l     ��������  ��  ��        l     ��  ��    J D Convert the POSIX path to an AppleScript file object before reading     �   �   C o n v e r t   t h e   P O S I X   p a t h   t o   a n   A p p l e S c r i p t   f i l e   o b j e c t   b e f o r e   r e a d i n g      l    ����  r        c    
    4    �� 
�� 
psxf  o    ���� 0 csvfilepath csvFilePath  m    	��
�� 
alis  o      ���� 0 csvfile csvFile��  ��       !   l     ��������  ��  ��   !  " # " l     �� $ %��   $ $  Read the CSV file into a list    % � & & <   R e a d   t h e   C S V   f i l e   i n t o   a   l i s t #  ' ( ' l    )���� ) r     * + * I    �� ,���� 0 readcsvfile readCSVFile ,  -�� - o    ���� 0 csvfile csvFile��  ��   + o      ���� 0 csvdata csvData��  ��   (  . / . l     ��������  ��  ��   /  0 1 0 l     �� 2 3��   2 ' ! display dialog "Test " & csvData    3 � 4 4 B   d i s p l a y   d i a l o g   " T e s t   "   &   c s v D a t a 1  5 6 5 l     ��������  ��  ��   6  7 8 7 l     �� 9 :��   9 . ( Loop through each entry in the CSV data    : � ; ; P   L o o p   t h r o u g h   e a c h   e n t r y   i n   t h e   C S V   d a t a 8  < = < l  B >���� > X   B ?�� @ ? k   &= A A  B C B r   & , D E D n   & * F G F 4   ' *�� H
�� 
cobj H m   ( )����  G o   & '���� 0 
personinfo 
personInfo E o      ���� 0 	firstname 	firstName C  I J I r   - 3 K L K n   - 1 M N M 4   . 1�� O
�� 
cobj O m   / 0����  N o   - .���� 0 
personinfo 
personInfo L o      ���� 0 lastname lastName J  P Q P r   4 : R S R n   4 8 T U T 4   5 8�� V
�� 
cobj V m   6 7����  U o   4 5���� 0 
personinfo 
personInfo S o      ���� 0 personaddress personAddress Q  W X W r   ; A Y Z Y n   ; ? [ \ [ 4   < ?�� ]
�� 
cobj ] m   = >����  \ o   ; <���� 0 
personinfo 
personInfo Z o      ���� $0 personpostalcode personPostalCode X  ^ _ ^ r   B J ` a ` n   B F b c b 4   C F�� d
�� 
cobj d m   D E����  c o   B C���� 0 
personinfo 
personInfo a o      ���� 0 
personcity 
personCity _  e f e r   K U g h g n   K Q i j i 4   L Q�� k
�� 
cobj k m   M P����  j o   K L���� 0 
personinfo 
personInfo h o      ���� 0 personcountry personCountry f  l m l l  V V��������  ��  ��   m  n o n l  V V�� p q��   p ) # Inline function to remove newlines    q � r r F   I n l i n e   f u n c t i o n   t o   r e m o v e   n e w l i n e s o  s t s r   V f u v u J   V ^ w w  x y x o   V Y��
�� 
ret  y  z�� z 1   Y \��
�� 
lnfd��   v n      { | { 1   a e��
�� 
txdl | 1   ^ a��
�� 
ascr t  } ~ } r   g r  �  n   g n � � � 2  j n��
�� 
citm � o   g j���� 0 personcountry personCountry � o      ���� 0 personcountry personCountry ~  � � � r   s ~ � � � m   s v � � � � �   � n      � � � 1   y }��
�� 
txdl � 1   v y��
�� 
ascr �  � � � r    � � � � c    � � � � o    ����� 0 personcountry personCountry � m   � ���
�� 
TEXT � o      ���� 0 personcountry personCountry �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � ) # Search for the contact in Contacts    � � � � F   S e a r c h   f o r   t h e   c o n t a c t   i n   C o n t a c t s �  ��� � O   �= � � � k   �< � �  � � � r   � � � � � l  � � ����� � 6  � � � � � 2   � ���
�� 
azf4 � F   � � � � � =  � � � � � 1   � ���
�� 
azf7 � o   � ����� 0 	firstname 	firstName � =  � � � � � 1   � ���
�� 
azf8 � o   � ����� 0 lastname lastName��  ��   � o      ���� $0 matchingcontacts matchingContacts �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � ; 5 If a matching contact is found, update their address    � � � � j   I f   a   m a t c h i n g   c o n t a c t   i s   f o u n d ,   u p d a t e   t h e i r   a d d r e s s �  ��� � X   �< ��� � � k   �7 � �  � � � Z   � � � ����� � =  � � � � � l  � � ����� � I  � ��� ���
�� .corecnte****       **** � n   � � � � � 2  � ���
�� 
az27 � o   � ����� 0 contact  ��  ��  ��   � m   � �����   � k   � � � �  � � � I  � ����� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   � ���
�� 
az27 � �� � �
�� 
insh � n   � � � � �  ;   � � � n   � � � � � 2  � ���
�� 
az27 � o   � ����� 0 contact   � �� ���
�� 
prdt � K   � � � � �� ���
�� 
az18 � m   � � � � � � �  h o m e��  ��   �  ��� � l  � ��� � ���   � + % display dialog "Added address field"    � � � � J   d i s p l a y   d i a l o g   " A d d e d   a d d r e s s   f i e l d "��  ��  ��   �  � � � l  � ��� � ���   � D > display dialog "Found contact: " & firstName & " " & lastName    � � � � |   d i s p l a y   d i a l o g   " F o u n d   c o n t a c t :   "   &   f i r s t N a m e   &   "   "   &   l a s t N a m e �  � � � r   � � � � o   � ����� 0 personaddress personAddress � l      ����� � n       � � � 1  ��
�� 
az28 � n   � � � � 4   ��� �
�� 
az27 � m   � ����  � o   � ����� 0 contact  ��  ��   �  � � � r   � � � o  ���� $0 personpostalcode personPostalCode � l      ���~ � n       � � � 1  �}
�} 
az31 � n   � � � 4  	�| �
�| 
az27 � m  �{�{  � o  	�z�z 0 contact  �  �~   �  � � � r  " � � � o  �y�y 0 
personcity 
personCity � l      ��x�w � n       � � � 1  !�v
�v 
az29 � n   � � � 4  �u �
�u 
az27 � m  �t�t  � o  �s�s 0 contact  �x  �w   �  � � � r  #1 � � � o  #&�r�r 0 personcountry personCountry � l      ��q�p � n       � � � 1  ,0�o
�o 
az32 � n  &, � � � 4  ',�n �
�n 
az27 � m  *+�m�m  � o  &'�l�l 0 contact  �q  �p   �  �k  I 27�j�i�h
�j .coresavenull���     null�i  �h  �k  �� 0 contact   � o   � ��g�g $0 matchingcontacts matchingContacts��   � m   � ��                                                                                  adrb  alis    8  Macintosh HD               �=%�BD ����Contacts.app                                                   �����=%�        ����  
 cu             Applications  #/:System:Applications:Contacts.app/     C o n t a c t s . a p p    M a c i n t o s h   H D   System/Applications/Contacts.app  / ��  ��  �� 0 
personinfo 
personInfo @ o    �f�f 0 csvdata csvData��  ��   =  l     �e�d�c�e  �d  �c    l     �b�b   $  Quit the Contacts application    � <   Q u i t   t h e   C o n t a c t s   a p p l i c a t i o n 	
	 l CO�a�` O CO I IN�_�^�]
�_ .aevtquitnull��� ��� null�^  �]   m  CF�                                                                                  adrb  alis    8  Macintosh HD               �=%�BD ����Contacts.app                                                   �����=%�        ����  
 cu             Applications  #/:System:Applications:Contacts.app/     C o n t a c t s . a p p    M a c i n t o s h   H D   System/Applications/Contacts.app  / ��  �a  �`  
  l     �\�[�Z�\  �[  �Z    l     �Y�Y   ; 5 Function to read CSV file and return list of records    � j   F u n c t i o n   t o   r e a d   C S V   f i l e   a n d   r e t u r n   l i s t   o f   r e c o r d s �X i      I      �W�V�W 0 readcsvfile readCSVFile �U o      �T�T 0 filepath filePath�U  �V   k     U  r      I    
�S !
�S .rdwrread****        ****  4     �R"
�R 
file" o    �Q�Q 0 filepath filePath! �P#�O
�P 
as  # m    �N
�N 
utf8�O   o      �M�M 0 filecontents fileContents $%$ r    &'& 1    �L
�L 
lnfd' n     ()( 1    �K
�K 
txdl) 1    �J
�J 
ascr% *+* r    ,-, n    ./. 2   �I
�I 
citm/ o    �H�H 0 filecontents fileContents- o      �G�G 0 csvlines csvLines+ 010 l   �F�E�D�F  �E  �D  1 232 r    454 J    �C�C  5 o      �B�B 0 csvdata csvData3 676 Y    R8�A9:�@8 l  , M;<=; k   , M>> ?@? r   , 2ABA n   , 0CDC 4   - 0�?E
�? 
cobjE o   . /�>�> 0 i  D o   , -�=�= 0 csvlines csvLinesB o      �<�< 0 currentline currentLine@ F�;F Z   3 MGH�:�9G >  3 6IJI o   3 4�8�8 0 currentline currentLineJ m   4 5KK �LL  H l  9 IMNOM k   9 IPP QRQ r   9 >STS m   9 :UU �VV  ,T n     WXW 1   ; =�7
�7 
txdlX 1   : ;�6
�6 
ascrR YZY r   ? D[\[ n   ? B]^] 2  @ B�5
�5 
citm^ o   ? @�4�4 0 currentline currentLine\ o      �3�3 0 currentrecord currentRecordZ _�2_ s   E I`a` o   E F�1�1 0 currentrecord currentRecorda n      bcb  ;   G Hc o   F G�0�0 0 csvdata csvData�2  N %  Check if the line is not empty   O �dd >   C h e c k   i f   t h e   l i n e   i s   n o t   e m p t y�:  �9  �;  < ' ! Start from 2 to skip header line   = �ee B   S t a r t   f r o m   2   t o   s k i p   h e a d e r   l i n e�A 0 i  9 m   ! "�/�/ : I  " '�.f�-
�. .corecnte****       ****f o   " #�,�, 0 csvlines csvLines�-  �@  7 ghg l  S S�+�*�)�+  �*  �)  h i�(i L   S Ujj o   S T�'�' 0 csvdata csvData�(  �X       �&klm nopqrstuv�%�$�#�"�&  k �!� ���������������! 0 readcsvfile readCSVFile
�  .aevtoappnull  �   � ****� 0 csvfilepath csvFilePath� 0 csvfile csvFile� 0 csvdata csvData� 0 	firstname 	firstName� 0 lastname lastName� 0 personaddress personAddress� $0 personpostalcode personPostalCode� 0 
personcity 
personCity� 0 personcountry personCountry� $0 matchingcontacts matchingContacts�  �  �  �  l ���wx�� 0 readcsvfile readCSVFile� �y� y  �� 0 filepath filePath�  w ��
�	����� 0 filepath filePath�
 0 filecontents fileContents�	 0 csvlines csvLines� 0 csvdata csvData� 0 i  � 0 currentline currentLine� 0 currentrecord currentRecordx ����� ����������KU
� 
file
� 
as  
� 
utf8
� .rdwrread****        ****
�  
lnfd
�� 
ascr
�� 
txdl
�� 
citm
�� .corecnte****       ****
�� 
cobj� V*�/��l E�O���,FO��-E�OjvE�O 3l�j kh ��/E�O�� ���,FO��-E�O��6GY h[OY��O�m ��z����{|��
�� .aevtoappnull  �   � ****z k    O}}  
~~    '��  <�� 	����  ��  ��  { ������ 0 
personinfo 
personInfo�� 0 contact  | , ���������������������������������������������� �������������������� ����������������� 0 csvfilepath csvFilePath
�� 
psxf
�� 
alis�� 0 csvfile csvFile�� 0 readcsvfile readCSVFile�� 0 csvdata csvData
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 	firstname 	firstName�� 0 lastname lastName�� 0 personaddress personAddress�� �� $0 personpostalcode personPostalCode�� �� 0 
personcity 
personCity�� �� 0 personcountry personCountry
�� 
ret 
�� 
lnfd
�� 
ascr
�� 
txdl
�� 
citm
�� 
TEXT
�� 
azf4�  
�� 
azf7
�� 
azf8�� $0 matchingcontacts matchingContacts
�� 
az27
�� 
insh
�� 
prdt
�� 
az18
�� .corecrel****      � null
�� 
az28
�� 
az31
�� 
az29
�� 
az32
�� .coresavenull���     null
�� .aevtquitnull��� ��� null��P�E�O*��/�&E�O*�k+ E�O+�[��l 	kh  ��k/E�O��l/E�O��m/E�O���/E�O���/E` O��a /E` O_ _ lv_ a ,FO_ a -E` Oa _ a ,FO_ a &E` Oa  �*a -a [[a ,\Z�8\[a ,\Z�8A1E` O �_ [��l 	kh �a  -j 	j  &*�a  a !�a  -6a "a #a $la  %OPY hO̡a  k/a &,FOΡa  k/a ',FO_ �a  k/a (,FO_ �a  k/a ),FO*j *[OY��U[OY��Oa  *j +Un�alis    �   Macintosh HD               �=%�BD ����contact-addresses.csv                                          �����0P        ����  J cu            E/:Users:vmitchell:GitHub:obsidian-contacts-sync:contact-addresses.csv   ,  c o n t a c t - a d d r e s s e s . c s v    M a c i n t o s h   H D  CUsers/vmitchell/GitHub/obsidian-contacts-sync/contact-addresses.csv   /    ��  o ����� "� 0 ��������������������������������������������������������������� ����� �  ������� ���  S e b a s t i a n� ���  K a l y t t a� ��� , S c h e i d t w e i l e r s t r a � e   1 5� ��� 
 5 0 9 3 3� ���  K � l n� ���  D e u t s c h l a n d � ����� �  ������� ���  B e n n e t� ���  K n � p p e r� ��� " S t o l b e r g s t r a � e   1 0� ��� 
 1 2 1 0 3� ���  B e r l i n� ���  D e u t s c h l a n d � ����� �  ������� ���  C h r i s t o p h e r� ���  L e n d e r s� ��� & M a r i t i u s s t e i n w e g   6 2� ��� 
 5 0 6 7 6� ���  K � l n� ���  D e u t s c h l a n d � ����� �  ������� ���  S a r a� ���  K o n g� ��� , E c h t e r n a c h e r   S t r a � e   1 1� ��� 
 5 0 9 3 3� ���  K � l n� ���  D e u t s c h l a n d � ����� �  ������� ��� 
 A y l i n� ���  K i s t e r� ���  S t e r n e n g a s s e   1 b� ��� 
 5 0 6 7 6� ���  K � l n� ���  D e u t s c h l a n d � ����� �  ������� ��� 
 K a t y a� ���  O ' F e a r n a� ��� " C r a n a c h s t r a � e   1 3 0� ��� 
 5 2 3 5 1� ���  � ���  D e u t s c h l a n d � ����� �  ������� ���  C h a r l o t t e� ��� 
 L a a t z� ��� " P a l a n t e r s t r a � e   9 e� ��� 
 5 0 9 3 7� ���  K � l n� �    D e u t s c h l a n d � ����    �  T h o m a s �		  D � h l i n g s �

 H S c h m i t t m a n n   K o l l e g   S t u d e n t e n w o h n h e i m � 
 5 0 6 7 7 �  K � l n �  D e u t s c h l a n d � ����    � 
 E m i l y �  K n � p p e r �   R a t h e n a u p l a t z   2 2 � 
 5 0 6 7 4 �  K � l n �  D e u t s c h l a n d � ����    ! �""  S e b a s t i a n �##  R e i s s t e r �$$ " Z � l p i c h e r   S t r   2 5 1 �%% 
 5 0 9 3 7  �&&  K � l n! �''  D e u t s c h l a n d � ��(�� (  )*+,-.) �//  F i n n* �00  T e i p e l+ �11  L u k a s s t r a � e   1 2 A, �22 
 5 0 8 2 3- �33  K � l n. �44  D e u t s c h l a n d � ��5�� 5  6789:;6 �<<  J o h a n n e s7 �==  D � p o n t8 �>>  W e y e r s t r a � e   1 2 09 �?? 
 5 0 6 7 6: �@@  K � l n; �AA  D e u t s c h l a n d � ��B�� B  CDEFGHC �II  F r e d e r i cD �JJ  V o n   A l t r o c kE �KK  F r a n z s t r a � e   4 4F �LL 
 5 2 0 6 4G �MM  A a c h e nH �NN  D e u t s c h l a n d � ��O�� O  PQRSTUP �VV 
 L a u r aQ �WW  S c h m i d tR �XX " P a n t a l e o n s w a l l   3 9S �YY 
 5 0 6 7 6T �ZZ  K � l nU �[[  D e u t s c h l a n d � ��\�� \  ]^_`ab] �cc  J u l e^ �dd  W e n d o r f f_ �ee $ E n g e l b e r t s t r a � e   1 3` �ff 
 5 0 6 7 4a �gg  K � l nb �hh  D e u t s c h l a n d � ��i�� i  jklmnoj �pp 
 A n d r �k �qq  B a r r o s ol �rr  1 6 0 0 9   V i a   G a l a nm �ss 
 9 2 0 9 1n �tt  o �uu  U n i t e d   S t a t e s � ��v�� v  wxyz{|w �}}  M o r i t zx �~~  M � n s t e r m a n ny � & E n d e n i c h e r   A l l e e   3 7z ��� 
 5 3 1 2 1{ ���  B o n n| ���  D e u t s c h l a n d � ����� �  ������� ���  H e n r i k e� ���  B o r k e r s� ���  G u s t a v s t r a � e   1 3� ��� 
 5 0 9 3 7� ���  K � l n� ���  D e u t s c h l a n d � ����� �  ������� ���  I s a b e l l a� ���   M i t c h e l l   B a r r o s o� ���  1 6 0 0 9   V i a   G a l a n� ��� 
 9 2 0 9 1� ���  � ���  U n i t e d   S t a t e s � ����� �  ������� ���  F r e d e r i k e� ���  S c h m i d t� ���  K o n r a d s t r a � e   1� ��� 
 5 0 9 3 7� ���  K � l n� ���  D e u t s c h l a n d � ����� �  ������� ���  C a r o l i n� ���  M a r s e n� ��� * R u p e r t - M a y e r - S t r a � e   3� ��� 
 5 0 3 5 4� ���  � ���  D e u t s c h l a n d � ����� �  ������� ���  N a s t a s s j a� ��� 
 P e t e r� ���  W e y e r t a l   1 0 6� ��� 
 5 0 9 3 1� ���  K � l n� ���  D e u t s c h l a n d � ����� �  ������� ���  M i l a� ���  K r e m e r� ���  S i e b e n b u r g e n   5 2� ��� 
 5 0 6 7 6� ���  K � l n� ���  D e u t s c h l a n d � ����� �  ������� ���  J o l a� ���  Z o w o r k a� ���  G r e g o r s t r a � e   2 6� ��� 
 5 2 0 6 6� ���  A a c h e n� ���  D e u t s c h l a n d � ����� �  ������� ��� 
 F a n n y� ���  E i s e n l o h r� ��� , O t t o - F i s c h e r - S t r a � e   6 B� ��� 
 5 0 6 7 4� ���  K � l n� ���  D e u t s c h l a n d � ����� �  ������� ���  M i r i a m� ��� 
 F r o s t� ���  R o o n s t r a � e   9� ��� 
 5 0 6 7 4� ���  K � l n� ���  D e u t s c h l a n d � ����� �  ������� ��� 
 J o n t e� �    H o e l t g e� � , S c h w a l b a c h e r   S t r a � e   1 2� � 
 5 0 9 6 9� �  K � l n� �  D e u t s c h l a n d � ����   	
 �  T h e r e s a �  M i t c h e l l �  2 4 2 7   D o u g l a s   S t	 � 
 9 4 5 8 7
 �   �  U n i t e d   S t a t e s � ����    �  M a i r e a d �   M i t c h e l l   B a r r o s o �  1 6 0 0 9   V i a   G a l a n � 
 9 2 0 9 1 �   �  U n i t e d   S t a t e s � ����    !"#$%  �&& 
 S a r a h! �''  S c h w a r z" �(( $ L e n n e u f e r s t r a � e   2 1# �)) 
 5 8 1 1 9$ �** 
 H a g e n% �++  D e u t s c h l a n d � ��,�� ,  -./012- �33  G r e g o r. �44  P o l l o k/ �55 & K a r l - K o r n   S t r a � e   1 20 �66 
 5 0 6 7 81 �77  K � l n2 �88  D e u t s c h l a n d � ��9�� 9  :;<=>?: �@@ 
 S i m o n; �AA  B o n n i e< �BB  F r a n z s t r a � e   4 4= �CC 
 5 2 0 6 4> �DD  A a c h e n? �EE  D e u t s c h l a n d � ��F�� F  GHIJKLG �MM  G i o v a n n aH �NN   M i t c h e l l   B a r r o s oI �OO  1 6 0 0 9   V i a   G a l a nJ �PP 
 9 2 0 9 1K �QQ  L �RR  U n i t e d   S t a t e s � ��S�� S  pqrstTp �UU 
 J u l i aq �VV  H a l b a c hr �WW , O t t o - F i s c h e r - S t r a � e   6 As �XX 
 5 0 6 7 4t �YY  K � l nT �ZZ  D e u t s c h l a n d ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  u �[[  D e u t s c h l a n dv ��\�� \  ]] ^^ ��_��
�� 
azf4_ �`` Z 6 4 9 2 3 5 C B - 0 9 3 E - 4 6 1 5 - B 6 3 4 - 0 5 B C A 4 3 0 7 D C 7 : A B P e r s o n
�� kfrmID  �%  �$  �#  �"   ascr  ��ޭ