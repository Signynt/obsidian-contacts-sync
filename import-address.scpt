FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ' ! Define the path to your CSV file     � 	 	 B   D e f i n e   t h e   p a t h   t o   y o u r   C S V   f i l e   
  
 l     ����  r         m        �   � / U s e r s / v m i t c h e l l / G i t H u b / o b s i d i a n - c o n t a c t s - s y n c / c o n t a c t - a d d r e s s e s . c s v  o      ���� 0 csvfilepath csvFilePath��  ��        l     ��������  ��  ��        l     ��  ��    J D Convert the POSIX path to an AppleScript file object before reading     �   �   C o n v e r t   t h e   P O S I X   p a t h   t o   a n   A p p l e S c r i p t   f i l e   o b j e c t   b e f o r e   r e a d i n g      l    ����  r        c    
    4    �� 
�� 
psxf  o    ���� 0 csvfilepath csvFilePath  m    	��
�� 
alis  o      ���� 0 csvfile csvFile��  ��       !   l     ��������  ��  ��   !  " # " l     �� $ %��   $ $  Read the CSV file into a list    % � & & <   R e a d   t h e   C S V   f i l e   i n t o   a   l i s t #  ' ( ' l    )���� ) r     * + * I    �� ,���� 0 readcsvfile readCSVFile ,  -�� - o    ���� 0 csvfile csvFile��  ��   + o      ���� 0 csvdata csvData��  ��   (  . / . l     ��������  ��  ��   /  0 1 0 l     �� 2 3��   2 ' ! display dialog "Test " & csvData    3 � 4 4 B   d i s p l a y   d i a l o g   " T e s t   "   &   c s v D a t a 1  5 6 5 l     ��������  ��  ��   6  7 8 7 l     �� 9 :��   9 . ( Loop through each entry in the CSV data    : � ; ; P   L o o p   t h r o u g h   e a c h   e n t r y   i n   t h e   C S V   d a t a 8  < = < l   >���� > X    ?�� @ ? k   & A A  B C B r   & , D E D n   & * F G F 4   ' *�� H
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
personInfo h o      ���� 0 personcountry personCountry f  l m l l  V V��������  ��  ��   m  n o n l  V V�� p q��   p ) # Search for the contact in Contacts    q � r r F   S e a r c h   f o r   t h e   c o n t a c t   i n   C o n t a c t s o  s�� s O   V t u t k   \ v v  w x w r   \ ~ y z y l  \ z {���� { 6  \ z | } | 2   \ a��
�� 
azf4 } F   d y ~  ~ =  e n � � � 1   f j��
�� 
azf7 � o   k m���� 0 	firstname 	firstName  =  o x � � � 1   p t��
�� 
azf8 � o   u w���� 0 lastname lastName��  ��   z o      ���� $0 matchingcontacts matchingContacts x  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � ; 5 If a matching contact is found, update their address    � � � � j   I f   a   m a t c h i n g   c o n t a c t   i s   f o u n d ,   u p d a t e   t h e i r   a d d r e s s �  ��� � X    ��� � � k   �  � �  � � � Z   � � � ����� � =  � � � � � l  � � ����� � I  � ��� ���
�� .corecnte****       **** � n   � � � � � 2  � ���
�� 
az27 � o   � ����� 0 contact  ��  ��  ��   � m   � �����   � I  � ����� �
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
az18 � m   � � � � � � �  h o m e��  ��  ��  ��   �  � � � l  � ��� � ���   � > 8 display dialog "Found contact: " & firstName & lastName    � � � � p   d i s p l a y   d i a l o g   " F o u n d   c o n t a c t :   "   &   f i r s t N a m e   &   l a s t N a m e �  � � � r   � � � � � o   � ����� 0 personaddress personAddress � l      ����� � n       � � � 1   � ���
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
az32 � n   � � � � � 4   � ��� �
�� 
az27 � m   � �����  � o   � ��� 0 contact  ��  ��   �  ��~ � I  � �}�|�{
�} .coresavenull���     null�|  �{  �~  �� 0 contact   � o   � ��z�z $0 matchingcontacts matchingContacts��   u m   V Y � ��                                                                                  adrb  alis    8  Macintosh HD               �_�xBD ����Contacts.app                                                   �����_�x        ����  
 cu             Applications  #/:System:Applications:Contacts.app/     C o n t a c t s . a p p    M a c i n t o s h   H D   System/Applications/Contacts.app  / ��  ��  �� 0 
personinfo 
personInfo @ o    �y�y 0 csvdata csvData��  ��   =  � � � l     �x�w�v�x  �w  �v   �  � � � l     �u � ��u   � ; 5 Function to read CSV file and return list of records    � � � � j   F u n c t i o n   t o   r e a d   C S V   f i l e   a n d   r e t u r n   l i s t   o f   r e c o r d s �  ��t � i      � � � I      �s ��r�s 0 readcsvfile readCSVFile �  ��q � o      �p�p 0 filepath filePath�q  �r   � k     K � �  � � � r      � � � I    
�o � �
�o .rdwrread****        **** � 4     �n �
�n 
file � o    �m�m 0 filepath filePath � �l ��k
�l 
as   � m    �j
�j 
utf8�k   � o      �i�i 0 filecontents fileContents �  � � � r     � � � 1    �h
�h 
lnfd � n      � � � 1    �g
�g 
txdl � 1    �f
�f 
ascr �  � � � r     � � � n     � � � 2   �e
�e 
citm � o    �d�d 0 filecontents fileContents � o      �c�c 0 csvlines csvLines �  � � � l   �b�a�`�b  �a  �`   �  � � � r     � � � J    �_�_   � o      �^�^ 0 csvdata csvData �  � � � Y    H ��] �\ � l  , C k   , C  r   , 2	 n   , 0

 4   - 0�[
�[ 
cobj o   . /�Z�Z 0 i   o   , -�Y�Y 0 csvlines csvLines	 o      �X�X 0 currentline currentLine  r   3 8 m   3 4 �  , n      1   5 7�W
�W 
txdl 1   4 5�V
�V 
ascr  r   9 > n   9 < 2  : <�U
�U 
citm o   9 :�T�T 0 currentline currentLine o      �S�S 0 currentrecord currentRecord �R s   ? C o   ? @�Q�Q 0 currentrecord currentRecord n        ;   A B o   @ A�P�P 0 csvdata csvData�R   ' ! Start from 2 to skip header line    �   B   S t a r t   f r o m   2   t o   s k i p   h e a d e r   l i n e�] 0 i    m   ! "�O�O  I  " '�N!�M
�N .corecnte****       ****! o   " #�L�L 0 csvlines csvLines�M  �\   � "#" l  I I�K�J�I�K  �J  �I  # $�H$ L   I K%% o   I J�G�G 0 csvdata csvData�H  �t       �F&'( )*+,-./01�E�D�C�B�F  & �A�@�?�>�=�<�;�:�9�8�7�6�5�4�3�2�A 0 readcsvfile readCSVFile
�@ .aevtoappnull  �   � ****�? 0 csvfilepath csvFilePath�> 0 csvfile csvFile�= 0 csvdata csvData�< 0 	firstname 	firstName�; 0 lastname lastName�: 0 personaddress personAddress�9 $0 personpostalcode personPostalCode�8 0 
personcity 
personCity�7 0 personcountry personCountry�6 $0 matchingcontacts matchingContacts�5  �4  �3  �2  ' �1 ��0�/23�.�1 0 readcsvfile readCSVFile�0 �-4�- 4  �,�, 0 filepath filePath�/  2 �+�*�)�(�'�&�%�+ 0 filepath filePath�* 0 filecontents fileContents�) 0 csvlines csvLines�( 0 csvdata csvData�' 0 i  �& 0 currentline currentLine�% 0 currentrecord currentRecord3 �$�#�"�!� �����
�$ 
file
�# 
as  
�" 
utf8
�! .rdwrread****        ****
�  
lnfd
� 
ascr
� 
txdl
� 
citm
� .corecnte****       ****
� 
cobj�. L*�/��l E�O���,FO��-E�OjvE�O )l�j kh ��/E�O���,FO��-E�O��6G[OY��O�( �5��67�
� .aevtoappnull  �   � ****5 k    88  
99  ::  ';;  <��  �  �  6 ��� 0 
personinfo 
personInfo� 0 contact  7 $ ����������
�	������� ��<� ������������ �������������� 0 csvfilepath csvFilePath
� 
psxf
� 
alis� 0 csvfile csvFile� 0 readcsvfile readCSVFile� 0 csvdata csvData
� 
kocl
� 
cobj
� .corecnte****       ****�
 0 	firstname 	firstName�	 0 lastname lastName� 0 personaddress personAddress� � $0 personpostalcode personPostalCode� � 0 
personcity 
personCity� � 0 personcountry personCountry
� 
azf4<  
�  
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
�� .coresavenull���     null��E�O*��/�&E�O*�k+ E�O ��[��l 	kh  ��k/E�O��l/E�O��m/E�O���/E�O���/E` O��a /E` Oa  �*a -a [[a ,\Z�8\[a ,\Z�8A1E` O �_ [��l 	kh �a -j 	j  $*�a a �a -6a a a la  Y hO̡a k/a ,FOΡa k/a  ,FO_ �a k/a !,FO_ �a k/a ",FO*j #[OY��U[OY�)�alis    �   Macintosh HD               �_�xBD ����contact-addresses.csv                                          �����0P        ����  J cu            E/:Users:vmitchell:GitHub:obsidian-contacts-sync:contact-addresses.csv   ,  c o n t a c t - a d d r e s s e s . c s v    M a c i n t o s h   H D  CUsers/vmitchell/GitHub/obsidian-contacts-sync/contact-addresses.csv   /    ��  * ��=�� =   >?@ABCDEFGHIJKLMNOPQRSTU����������������> ��V�� V  WXYZ[\W �]]  S e b a s t i a nX �^^  K a l y t t aY �__ , S c h e i d t w e i l e r s t r a � e   1 5Z �`` 
 5 0 9 3 3[ �aa  K � l n\ �bb  D e u t s c h l a n d ? ��c�� c  defghid �jj  B e n n e te �kk  K n � p p e rf �ll " S t o l b e r g s t r a � e   1 0g �mm 
 1 2 1 0 3h �nn  B e r l i ni �oo  D e u t s c h l a n d @ ��p�� p  qrstuvq �ww  S a r ar �xx  K o n gs �yy , E c h t e r n a c h e r   S t r a � e   1 1t �zz 
 5 0 9 3 3u �{{  K � l nv �||  D e u t s c h l a n d A ��}�� }  ~����~ ��� 
 K a t y a ���  O ' F e a r n a� ��� " C r a n a c h s t r a � e   1 3 0� ��� 
 5 2 3 5 1� ���  � ���  D e u t s c h l a n d B ����� �  ������� ���  C h a r l o t t e� ��� 
 L a a t z� ��� " P a l a n t e r s t r a � e   9 e� ��� 
 5 0 9 3 7� ���  K � l n� ���  D e u t s c h l a n d C ����� �  ������� ��� 
 E m i l y� ���  K n � p p e r� ���   R a t h e n a u p l a t z   2 2� ��� 
 5 0 6 7 4� ���  K � l n� ���  D e u t s c h l a n d D ����� �  ������� ���  J u l e� ���  W e n d o r f� ��� ( B e r r e n r a t h e r   S t r   1 3 8� ��� 
 5 0 9 3 7� ���  K � l n� ���  D e u t s c h l a n d E ����� �  ������� ��� 
 L a u r a� ���  S c h m i d t� ��� " P a n t a l e o n s w a l l   3 9� ��� 
 5 0 6 7 6� ���  K � l n� ���  D e u t s c h l a n d F ����� �  ������� ��� 
 C h r i s� ���  L e n n e r s� ��� & M a r i t i u s s t e i n w e g   6 2� ��� 
 5 0 6 7 6� ���  K � l n� ���  D e u t s c h l a n d G ����� �  ������� ���  G r e g o r� ���  P o l l o k� ��� & K a r l - K o r n   S t r a � e   1 2� ��� 
 5 0 6 7 8� ���  K � l n� ���  D e u t s c h l a n d H ����� �  ������� ��� 
 A n d r e� ���  B a r r o s o� ���  1 6 0 0 9   V i a   G a l a n� ��� 
 9 2 0 9 1� ���  � ���  U n i t e d   S t a t e s I ����� �  ������� ���  H e n r i k e� ���  B o r k e r s� ���  G u s t a v s t r a � e   1 3� ��� 
 5 0 9 3 7� ���  K � l n� ���  D e u t s c h l a n d J ����� �  ������� ���  I s a b e l l a� ���   M i t c h e l l   B a r r o s o� ���  1 6 0 0 9   V i a   G a l a n� ��� 
 9 2 0 9 1� ���  � ���  U n i t e d   S t a t e s K ����� �     �  N a s t a s s j a � 
 P e t e r �  W e y e r t a l   1 0 6 �		 
 5 0 9 3 1 �

  K � l n �  D e u t s c h l a n d L ����    �  M i l a �  K r e m e r �  S i e b e n b u r g e n   5 2 � 
 5 0 6 7 6 �  K � l n �  D e u t s c h l a n d M ����    �    J o l a �!!  Z o w o r k a �""  G r e g o r s t r a � e   2 6 �## 
 5 2 0 6 6 �$$  A a c h e n �%%  D e u t s c h l a n d N ��&�� &  '()*+,' �-- 
 J o n t e( �..  H o e l t g e) �// , S c h w a l b a c h e r   S t r a � e   1 2* �00 
 5 0 9 6 9+ �11  K � l n, �22  D e u t s c h l a n d O ��3�� 3  4567894 �::  T h e r e s a5 �;;  M i t c h e l l6 �<<  2 4 2 7   D o u g l a s   S t7 �== 
 9 4 5 8 78 �>>  9 �??  U n i t e d   S t a t e s P ��@�� @  ABCDEFA �GG  M a i r e a dB �HH   M i t c h e l l   B a r r o s oC �II  1 6 0 0 9   V i a   G a l a nD �JJ 
 9 2 0 9 1E �KK  F �LL  U n i t e d   S t a t e s Q ��M�� M  NOPQRSN �TT 
 S a r a hO �UU  S c h w a r zP �VV $ L e n n e u f e r s t r a � e   2 1Q �WW 
 5 8 1 1 9R �XX 
 H a g e nS �YY  D e u t s c h l a n d R ��Z�� Z  [\]^_`[ �aa  S e b a s t i a n\ �bb  R e i s t e r] �cc " Z � l p i c h e r   S t r   2 5 1^ �dd 
 5 0 9 3 7_ �ee  K � l n` �ff  D e u t s c h l a n d S ��g�� g  hijklmh �nn  M o r i t zi �oo  M � n s t e r m a n nj �pp & E n d e n i c h e r   A l l e e   3 7k �qq 
 5 3 1 2 1l �rr  B o n nm �ss  D e u t s c h l a n d T ��t�� t  uvwxyzu �{{ 
 S i m o nv �||  B o n n i ew �}}  F r a n z s t r a � e   4 4x �~~ 
 5 2 0 6 4y �  A a c h e nz ���  D e u t s c h l a n d U ����� �  +,-./0+ ���  G i o v a n n a, ���   M i t c h e l l   B a r r o s o- ���  1 6 0 0 9   V i a   G a l a n. ��� 
 9 2 0 9 1/ ���  0 ���  U n i t e d   S t a t e s��  ��  ��  ��  ��  ��  ��  ��  1 ����� �  �� ��  ������
�� 
azf4� ��� Z 1 6 C 9 4 1 C F - 4 8 0 E - 4 C 4 7 - 8 9 6 F - 3 3 B B 7 C E 2 9 6 F E : A B P e r s o n
�� kfrmID  �E  �D  �C  �B  ascr  ��ޭ