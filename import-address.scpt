FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ' ! Define the path to your CSV file     � 	 	 B   D e f i n e   t h e   p a t h   t o   y o u r   C S V   f i l e   
  
 l     ����  r         m        �   � / U s e r s / v m i t c h e l l / G i t H u b / o b s i d i a n - c o n t a c t s - s y n c / c o n t a c t - a d d r e s s e s . c s v  o      ���� 0 csvfilepath csvFilePath��  ��        l     ��������  ��  ��        l     ��  ��    J D Convert the POSIX path to an AppleScript file object before reading     �   �   C o n v e r t   t h e   P O S I X   p a t h   t o   a n   A p p l e S c r i p t   f i l e   o b j e c t   b e f o r e   r e a d i n g      l    ����  r        c    
    4    �� 
�� 
psxf  o    ���� 0 csvfilepath csvFilePath  m    	��
�� 
alis  o      ���� 0 csvfile csvFile��  ��       !   l     ��������  ��  ��   !  " # " l     �� $ %��   $ $  Read the CSV file into a list    % � & & <   R e a d   t h e   C S V   f i l e   i n t o   a   l i s t #  ' ( ' l    )���� ) r     * + * I    �� ,���� 0 readcsvfile readCSVFile ,  -�� - o    ���� 0 csvfile csvFile��  ��   + o      ���� 0 csvdata csvData��  ��   (  . / . l     ��������  ��  ��   /  0 1 0 l     �� 2 3��   2 ' ! display dialog "Test " & csvData    3 � 4 4 B   d i s p l a y   d i a l o g   " T e s t   "   &   c s v D a t a 1  5 6 5 l     ��������  ��  ��   6  7 8 7 l     �� 9 :��   9 . ( Loop through each entry in the CSV data    : � ; ; P   L o o p   t h r o u g h   e a c h   e n t r y   i n   t h e   C S V   d a t a 8  < = < l   >���� > X    ?�� @ ? k   & A A  B C B r   & , D E D n   & * F G F 4   ' *�� H
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
personInfo h o      ���� 0 personcountry personCountry f  l m l l  V V��������  ��  ��   m  n o n l  V V�� p q��   p ) # Search for the contact in Contacts    q � r r F   S e a r c h   f o r   t h e   c o n t a c t   i n   C o n t a c t s o  s�� s O   V t u t k   \ v v  w x w r   \ ~ y z y l  \ z {���� { 6  \ z | } | 2   \ a��
�� 
azf4 } F   d y ~  ~ =  e n � � � 1   f j��
�� 
azf7 � o   k m���� 0 	firstname 	firstName  =  o x � � � 1   p t��
�� 
azf8 � o   u w���� 0 lastname lastName��  ��   z o      ���� $0 matchingcontacts matchingContacts x  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � ; 5 If a matching contact is found, update their address    � � � � j   I f   a   m a t c h i n g   c o n t a c t   i s   f o u n d ,   u p d a t e   t h e i r   a d d r e s s �  ��� � X    ��� � � k   � � �  � � � Z   � � � ����� � =  � � � � � l  � � ����� � I  � ��� ���
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
az18 � m   � � � � � � �  h o m e��  ��   �  ��� � l  � ��� � ���   � + % display dialog "Added address field"    � � � � J   d i s p l a y   d i a l o g   " A d d e d   a d d r e s s   f i e l d "��  ��  ��   �  � � � l  � ��� � ���   � D > display dialog "Found contact: " & firstName & " " & lastName    � � � � |   d i s p l a y   d i a l o g   " F o u n d   c o n t a c t :   "   &   f i r s t N a m e   &   "   "   &   l a s t N a m e �  � � � r   � � � � � o   � ����� 0 personaddress personAddress � l      ����� � n       � � � 1   � ���
�� 
az28 � n   � � � � � 4   � ��� �
�� 
az27 � m   � �����  � o   � ����� 0 contact  ��  ��   �  � � � r   � � � � � o   � ����� $0 personpostalcode personPostalCode � l      ����� � n       � � � 1   � ���
�� 
az31 � n   � � � � � 4   � ��� �
�� 
az27 � m   � �����  � o   � ����� 0 contact  ��  ��   �  � � � r   � � � � � o   � ����� 0 
personcity 
personCity � l      ����� � n       � � � 1   � ���
�� 
az29 � n   � � � � � 4   � ��� �
�� 
az27 � m   � �����  � o   � ����� 0 contact  ��  ��   �  � � � r   � � � � � o   � ����� 0 personcountry personCountry � l      ����� � n       � � � 1   � ���
�� 
az32 � n   � � � � � 4   � �� �
� 
az27 � m   � ��~�~  � o   � ��}�} 0 contact  ��  ��   �  ��| � I  ��{�z�y
�{ .coresavenull���     null�z  �y  �|  �� 0 contact   � o   � ��x�x $0 matchingcontacts matchingContacts��   u m   V Y � ��                                                                                  adrb  alis    8  Macintosh HD               �_�xBD ����Contacts.app                                                   �����_�x        ����  
 cu             Applications  #/:System:Applications:Contacts.app/     C o n t a c t s . a p p    M a c i n t o s h   H D   System/Applications/Contacts.app  / ��  ��  �� 0 
personinfo 
personInfo @ o    �w�w 0 csvdata csvData��  ��   =  � � � l     �v�u�t�v  �u  �t   �  � � � l     �s � ��s   � ; 5 Function to read CSV file and return list of records    � � � � j   F u n c t i o n   t o   r e a d   C S V   f i l e   a n d   r e t u r n   l i s t   o f   r e c o r d s �  ��r � i      � � � I      �q ��p�q 0 readcsvfile readCSVFile �  ��o � o      �n�n 0 filepath filePath�o  �p   � k     U � �  � � � r      � � � I    
�m � �
�m .rdwrread****        **** � 4     �l �
�l 
file � o    �k�k 0 filepath filePath � �j ��i
�j 
as   � m    �h
�h 
utf8�i   � o      �g�g 0 filecontents fileContents �  � � � r     � � � 1    �f
�f 
lnfd � n      � � � 1    �e
�e 
txdl � 1    �d
�d 
ascr �  � � � r     � � � n     � � � 2   �c
�c 
citm � o    �b�b 0 filecontents fileContents � o      �a�a 0 csvlines csvLines �  � � � l   �`�_�^�`  �_  �^   �    r     J    �]�]   o      �\�\ 0 csvdata csvData  Y    R�[�Z l  , M	
	 k   , M  r   , 2 n   , 0 4   - 0�Y
�Y 
cobj o   . /�X�X 0 i   o   , -�W�W 0 csvlines csvLines o      �V�V 0 currentline currentLine �U Z   3 M�T�S >  3 6 o   3 4�R�R 0 currentline currentLine m   4 5 �   l  9 I k   9 I   r   9 >!"! m   9 :## �$$  ," n     %&% 1   ; =�Q
�Q 
txdl& 1   : ;�P
�P 
ascr  '(' r   ? D)*) n   ? B+,+ 2  @ B�O
�O 
citm, o   ? @�N�N 0 currentline currentLine* o      �M�M 0 currentrecord currentRecord( -�L- s   E I./. o   E F�K�K 0 currentrecord currentRecord/ n      010  ;   G H1 o   F G�J�J 0 csvdata csvData�L   %  Check if the line is not empty    �22 >   C h e c k   i f   t h e   l i n e   i s   n o t   e m p t y�T  �S  �U  
 ' ! Start from 2 to skip header line    �33 B   S t a r t   f r o m   2   t o   s k i p   h e a d e r   l i n e�[ 0 i   m   ! "�I�I  I  " '�H4�G
�H .corecnte****       ****4 o   " #�F�F 0 csvlines csvLines�G  �Z   565 l  S S�E�D�C�E  �D  �C  6 7�B7 L   S U88 o   S T�A�A 0 csvdata csvData�B  �r       �@9:; <=>?@ABCD�?�>�=�<�@  9 �;�:�9�8�7�6�5�4�3�2�1�0�/�.�-�,�; 0 readcsvfile readCSVFile
�: .aevtoappnull  �   � ****�9 0 csvfilepath csvFilePath�8 0 csvfile csvFile�7 0 csvdata csvData�6 0 	firstname 	firstName�5 0 lastname lastName�4 0 personaddress personAddress�3 $0 personpostalcode personPostalCode�2 0 
personcity 
personCity�1 0 personcountry personCountry�0 $0 matchingcontacts matchingContacts�/  �.  �-  �,  : �+ ��*�)EF�(�+ 0 readcsvfile readCSVFile�* �'G�' G  �&�& 0 filepath filePath�)  E �%�$�#�"�!� ��% 0 filepath filePath�$ 0 filecontents fileContents�# 0 csvlines csvLines�" 0 csvdata csvData�! 0 i  �  0 currentline currentLine� 0 currentrecord currentRecordF ����������#
� 
file
� 
as  
� 
utf8
� .rdwrread****        ****
� 
lnfd
� 
ascr
� 
txdl
� 
citm
� .corecnte****       ****
� 
cobj�( V*�/��l E�O���,FO��-E�OjvE�O 3l�j kh ��/E�O�� ���,FO��-E�O��6GY h[OY��O�; �H��IJ�
� .aevtoappnull  �   � ****H k    KK  
LL  MM  'NN  <��  �  �  I ��� 0 
personinfo 
personInfo� 0 contact  J $ ����
�	��������� �������� ���O�������������� �������������� 0 csvfilepath csvFilePath
� 
psxf
� 
alis�
 0 csvfile csvFile�	 0 readcsvfile readCSVFile� 0 csvdata csvData
� 
kocl
� 
cobj
� .corecnte****       ****� 0 	firstname 	firstName� 0 lastname lastName� 0 personaddress personAddress� �  $0 personpostalcode personPostalCode�� �� 0 
personcity 
personCity�� �� 0 personcountry personCountry
�� 
azf4O  
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
�� .coresavenull���     null��E�O*��/�&E�O*�k+ E�O ��[��l 	kh  ��k/E�O��l/E�O��m/E�O���/E�O���/E` O��a /E` Oa  �*a -a [[a ,\Z�8\[a ,\Z�8A1E` O �_ [��l 	kh �a -j 	j  &*�a a �a -6a a a la  OPY hO̡a k/a ,FOΡa k/a  ,FO_ �a k/a !,FO_ �a k/a ",FO*j #[OY��U[OY�<�alis    �   Macintosh HD               �_�xBD ����contact-addresses.csv                                          �����0P        ����  J cu            E/:Users:vmitchell:GitHub:obsidian-contacts-sync:contact-addresses.csv   ,  c o n t a c t - a d d r e s s e s . c s v    M a c i n t o s h   H D  CUsers/vmitchell/GitHub/obsidian-contacts-sync/contact-addresses.csv   /    ��  = ��P�� P   QRSTUVWXYZ[\]^_`abcdefghijklm������Q ��n�� n  opqrsto �uu  S e b a s t i a np �vv  K a l y t t aq �ww , S c h e i d t w e i l e r s t r a � e   1 5r �xx 
 5 0 9 3 3s �yy  K � l nt �zz  D e u t s c h l a n d R ��{�� {  |}~��| ���  B e n n e t} ���  K n � p p e r~ ��� " S t o l b e r g s t r a � e   1 0 ��� 
 1 2 1 0 3� ���  B e r l i n� ���  D e u t s c h l a n d S ����� �  ������� ���  S a r a� ���  K o n g� ��� , E c h t e r n a c h e r   S t r a � e   1 1� ��� 
 5 0 9 3 3� ���  K � l n� ���  D e u t s c h l a n d T ����� �  ������� ��� 
 K a t y a� ���  O ' F e a r n a� ��� " C r a n a c h s t r a � e   1 3 0� ��� 
 5 2 3 5 1� ���  � ���  D e u t s c h l a n d U ����� �  ������� ���  C h a r l o t t e� ��� 
 L a a t z� ��� " P a l a n t e r s t r a � e   9 e� ��� 
 5 0 9 3 7� ���  K � l n� ���  D e u t s c h l a n d V ����� �  ������� ��� 
 E m i l y� ���  K n � p p e r� ���   R a t h e n a u p l a t z   2 2� ��� 
 5 0 6 7 4� ���  K � l n� ���  D e u t s c h l a n d W ����� �  ������� ���  S e b a s t i a n� ���  R e i s s t e r� ��� " Z � l p i c h e r   S t r   2 5 1� ��� 
 5 0 9 3 7� ���  K � l n� ���  D e u t s c h l a n d X ����� �  ������� ���  F i n n� ���  T e i p e l� ���  L u k a s s t r a � e   1 2 A� ��� 
 5 0 8 2 3� ���  K � l n� ���  D e u t s c h l a n d Y ����� �  ������� ��� 
 L a u r a� ���  S c h m i d t� ��� " P a n t a l e o n s w a l l   3 9� ��� 
 5 0 6 7 6� ���  K � l n� ���  D e u t s c h l a n d Z ����� �  ������� ���  J u l e� ���  W e n d o r f f� ��� $ E n g e l b e r t s t r a � e   1 3� ��� 
 5 0 6 7 4� ���  K � l n� ���  D e u t s c h l a n d [ ����� �  ������� ��� 
 C h r i s� ���  L e n n e r s� ��� & M a r i t i u s s t e i n w e g   6 2� ��� 
 5 0 6 7 6� ���  K � l n� ���  D e u t s c h l a n d \ ����� �  �� � �  G r e g o r� �  P o l l o k  � & K a r l - K o r n   S t r a � e   1 2 � 
 5 0 6 7 8 �  K � l n �		  D e u t s c h l a n d ] ��
�� 
   � 
 A n d r � �  B a r r o s o �  1 6 0 0 9   V i a   G a l a n � 
 9 2 0 9 1 �   �  U n i t e d   S t a t e s ^ ����    �  H e n r i k e �  B o r k e r s �    G u s t a v s t r a � e   1 3 �!! 
 5 0 9 3 7 �""  K � l n �##  D e u t s c h l a n d _ ��$�� $  %&'()*% �++  I s a b e l l a& �,,   M i t c h e l l   B a r r o s o' �--  1 6 0 0 9   V i a   G a l a n( �.. 
 9 2 0 9 1) �//  * �00  U n i t e d   S t a t e s ` ��1�� 1  2345672 �88  F r e d e r i k e3 �99  S c h m i d t4 �::  K o n r a d s t r a � e   15 �;; 
 5 0 9 3 76 �<<  K � l n7 �==  D e u t s c h l a n d a ��>�� >  ?@ABCD? �EE  N a s t a s s j a@ �FF 
 P e t e rA �GG  W e y e r t a l   1 0 6B �HH 
 5 0 9 3 1C �II  K � l nD �JJ  D e u t s c h l a n d b ��K�� K  LMNOPQL �RR  M i l aM �SS  K r e m e rN �TT  S i e b e n b u r g e n   5 2O �UU 
 5 0 6 7 6P �VV  K � l nQ �WW  D e u t s c h l a n d c ��X�� X  YZ[\]^Y �__  J o l aZ �``  Z o w o r k a[ �aa  G r e g o r s t r a � e   2 6\ �bb 
 5 2 0 6 6] �cc  A a c h e n^ �dd  D e u t s c h l a n d d ��e�� e  fghijkf �ll 
 F a n n yg �mm  E i s e n l o h rh �nn , O t t o - F i s c h e r - S t r a � e   6 Bi �oo 
 5 0 6 7 4j �pp  K � l nk �qq  D e u t s c h l a n d e ��r�� r  stuvwxs �yy 
 J o n t et �zz  H o e l t g eu �{{ , S c h w a l b a c h e r   S t r a � e   1 2v �|| 
 5 0 9 6 9w �}}  K � l nx �~~  D e u t s c h l a n d f ����   ������� ���  T h e r e s a� ���  M i t c h e l l� ���  2 4 2 7   D o u g l a s   S t� ��� 
 9 4 5 8 7� ���  � ���  U n i t e d   S t a t e s g ����� �  ������� ���  T h o m a s� ���  D � h l i n g s� ���   W i l h e l m s t r a � e   2 4� ��� 
 5 0 9 9 6� ���  K � l n� ���  D e u t s c h l a n d h ����� �  ������� ���  M a i r e a d� ���   M i t c h e l l   B a r r o s o� ���  1 6 0 0 9   V i a   G a l a n� ��� 
 9 2 0 9 1� ���  � ���  U n i t e d   S t a t e s i ����� �  ������� ��� 
 S a r a h� ���  S c h w a r z� ��� $ L e n n e u f e r s t r a � e   2 1� ��� 
 5 8 1 1 9� ��� 
 H a g e n� ���  D e u t s c h l a n d j ����� �  ������� ���  M o r i t z� ���  M � n s t e r m a n n� ��� & E n d e n i c h e r   A l l e e   3 7� ��� 
 5 3 1 2 1� ���  B o n n� ���  D e u t s c h l a n d k ����� �  ������� ��� 
 S i m o n� ���  B o n n i e� ���  F r a n z s t r a � e   4 4� ��� 
 5 2 0 6 4� ���  A a c h e n� ���  D e u t s c h l a n d l ����� �  ������� ���  G i o v a n n a� ���   M i t c h e l l   B a r r o s o� ���  1 6 0 0 9   V i a   G a l a n� ��� 
 9 2 0 9 1� ���  � ���  U n i t e d   S t a t e s m ����� �  >?@ABC> ��� 
 J u l i a? ���  H a l b a c h@ ��� , O t t o - F i s c h e r - S t r a � e   6 AA ��� 
 5 0 6 7 4B ���  K � l nC ���  D e u t s c h l a n d ��  ��  ��  D ����� �  �� ��  ������
�� 
azf4� ��� Z 6 4 9 2 3 5 C B - 0 9 3 E - 4 6 1 5 - B 6 3 4 - 0 5 B C A 4 3 0 7 D C 7 : A B P e r s o n
�� kfrmID  �?  �>  �=  �<   ascr  ��ޭ