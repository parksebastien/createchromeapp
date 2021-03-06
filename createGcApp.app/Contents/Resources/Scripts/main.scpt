FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
 * Creates an application shortcut in Google Chrome.
 * It's derived from Bracken King's shell script, who deserves all the credit for the idea, see
 * http://www.lessannoyingsoftware.com/blog/2010/08/149/Create+application+shortcuts+in+Google+Chrome+on+a+Mac
 * I just wanted to make this functionality usable for a couple of friends who never want to see a terminal screen.
 * This is also my first real AppleScript attempt, so many things could probably be optimized, enhanced, etc. Feel free to do so.
 *
 * Mait Vilbiks <happy@hot.ee> @2011-01
 * Provided AS IS, "Public domain", ie. no licence required for anything you do with this, and don't blame me if it doesn't work either.
 * Written and tested on Mac OS X 10.5.8
      � 	 	� 
   *   C r e a t e s   a n   a p p l i c a t i o n   s h o r t c u t   i n   G o o g l e   C h r o m e . 
   *   I t ' s   d e r i v e d   f r o m   B r a c k e n   K i n g ' s   s h e l l   s c r i p t ,   w h o   d e s e r v e s   a l l   t h e   c r e d i t   f o r   t h e   i d e a ,   s e e 
   *   h t t p : / / w w w . l e s s a n n o y i n g s o f t w a r e . c o m / b l o g / 2 0 1 0 / 0 8 / 1 4 9 / C r e a t e + a p p l i c a t i o n + s h o r t c u t s + i n + G o o g l e + C h r o m e + o n + a + M a c 
   *   I   j u s t   w a n t e d   t o   m a k e   t h i s   f u n c t i o n a l i t y   u s a b l e   f o r   a   c o u p l e   o f   f r i e n d s   w h o   n e v e r   w a n t   t o   s e e   a   t e r m i n a l   s c r e e n . 
   *   T h i s   i s   a l s o   m y   f i r s t   r e a l   A p p l e S c r i p t   a t t e m p t ,   s o   m a n y   t h i n g s   c o u l d   p r o b a b l y   b e   o p t i m i z e d ,   e n h a n c e d ,   e t c .   F e e l   f r e e   t o   d o   s o . 
   * 
   *   M a i t   V i l b i k s   < h a p p y @ h o t . e e >   @ 2 0 1 1 - 0 1 
   *   P r o v i d e d   A S   I S ,   " P u b l i c   d o m a i n " ,   i e .   n o   l i c e n c e   r e q u i r e d   f o r   a n y t h i n g   y o u   d o   w i t h   t h i s ,   a n d   d o n ' t   b l a m e   m e   i f   i t   d o e s n ' t   w o r k   e i t h e r . 
   *   W r i t t e n   a n d   t e s t e d   o n   M a c   O S   X   1 0 . 5 . 8 
     
  
 l     ��������  ��  ��        l     ����  r         m        �      o      ���� 0 err  ��  ��        l     ��������  ��  ��        l     ��  ��    ) # find the Google Chrome application     �   F   f i n d   t h e   G o o g l e   C h r o m e   a p p l i c a t i o n      l    ����  r        c         n     ! " ! 1   	 ��
�� 
psxp " l   	 #���� # I   	�� $��
�� .earsffdralis        afdr $ m     % %�                                                                                  rimZ  alis    h  Macintosh HD               ��T�H+   9�Google Chrome.app                                               	J��ꯛ        ����  	                Applications    ��*�      ��k     9�  ,Macintosh HD:Applications: Google Chrome.app  $  G o o g l e   C h r o m e . a p p    M a c i n t o s h   H D  Applications/Google Chrome.app  / ��  ��  ��  ��     m    ��
�� 
ctxt  o      ���� "0 gchromeorigpath gChromeOrigPath��  ��     & ' & l     �� ( )��   ( D > parse the folder of the app, this is where we put the new app    ) � * * |   p a r s e   t h e   f o l d e r   o f   t h e   a p p ,   t h i s   i s   w h e r e   w e   p u t   t h e   n e w   a p p '  + , + l   $ -���� - r    $ . / . I    "�� 0���� 0 dirname   0  1�� 1 e     2 2 c     3 4 3 n     5 6 5 7   �� 7 8
�� 
cha  7 m    ����  8 m    ������ 6 o    ���� "0 gchromeorigpath gChromeOrigPath 4 m    ��
�� 
TEXT��  ��   / o      ���� 0 gapproot gAppRoot��  ��   ,  9 : 9 l     �� ; <��   ; 0 * the full path to Google Chrome executable    < � = = T   t h e   f u l l   p a t h   t o   G o o g l e   C h r o m e   e x e c u t a b l e :  > ? > l  % , @���� @ r   % , A B A n   % * C D C 1   ( *��
�� 
strq D l  % ( E���� E b   % ( F G F o   % &���� "0 gchromeorigpath gChromeOrigPath G m   & ' H H � I I 8 C o n t e n t s / M a c O S / G o o g l e   C h r o m e��  ��   B o      ���� 0 gchromepath gChromePath��  ��   ?  J K J l     ��������  ��  ��   K  L M L l     �� N O��   N . ( ask for the name of the new application    O � P P P   a s k   f o r   t h e   n a m e   o f   t h e   n e w   a p p l i c a t i o n M  Q R Q l  - 0 S���� S r   - 0 T U T m   - . V V � W W   U o      ���� 0 gappname gAppName��  ��   R  X Y X l  1 8 Z���� Z r   1 8 [ \ [ m   1 4 ] ] � ^ ^ L W h a t   s h o u l d   t h e   A p p l i c a t i o n   b e   c a l l e d ? \ o      ���� 0 gappnametxt gAppNameTxt��  ��   Y  _ ` _ l  9 � a���� a W   9 � b c b k   C � d d  e f e r   C V g h g l  C T i���� i n   C T j k j 1   P T��
�� 
ttxt k l  C P l���� l I  C P�� m n
�� .sysodlogaskr        TEXT m o   C F���� 0 gappnametxt gAppNameTxt n �� o��
�� 
dtxt o m   I L p p � q q  ��  ��  ��  ��  ��   h o      ���� 0 gappname gAppName f  r�� r Z   W � s t���� s >  W \ u v u o   W X���� 0 gappname gAppName v m   X [ w w � x x   t Z   _ � y z���� y I   _ t�� {����  0 checkexistence CheckExistence {  |�� | 4   ` p�� }
�� 
psxf } l  d o ~���� ~ b   d o  �  b   d k � � � b   d i � � � o   d e���� 0 gapproot gAppRoot � m   e h � � � � �  / � o   i j���� 0 gappname gAppName � m   k n � � � � �  . a p p��  ��  ��  ��   z O   w � � � � k   } � � �  � � � r   } � � � � b   } � � � � b   } � � � � m   } � � � � � � . a n   A p p l i c a t i o n   c a l l e d   " � o   � ����� 0 gappname gAppName � m   � � � � � � � T "   a l r e a d y   e x i s t s ,   c h o o s e   a   d i f f e r e n t   n a m e . � o      ���� 0 gappnametxt gAppNameTxt �  ��� � r   � � � � � m   � � � � � � �   � o      ���� 0 gappname gAppName��   � m   w z � ��                                                                                  MACS  alis    t  Macintosh HD               ��T�H+   9��
Finder.app                                                      <&�Lx�        ����  	                CoreServices    ��*�      �LN�     9�� 9�� 9��  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��  ��  ��  ��   c >  = B � � � o   = >���� 0 gappname gAppName � m   > A � � � � �  ��  ��   `  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �    make the folder structure    � � � � 4   m a k e   t h e   f o l d e r   s t r u c t u r e �  � � � l  � � ����� � Q   � � � ��� � k   � � � �  � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � m   � � � � � � �  r m   - r f   / t m p / � I   � ��� ����� 0 replacetext ReplaceText �  � � � o   � ����� 0 gappname gAppName �  � � � m   � � � � � � �    �  ��� � m   � � � � � � �  \  ��  ��  ��   �  ��� � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � m   � � � � � � �  r m   - r f   / t m p / � I   � ��� ����� 0 replacetext ReplaceText �  � � � b   � � � � � o   � ����� 0 gappname gAppName � m   � � � � � � �  . a p p �  � � � m   � � � � � � �    �  ��� � m   � � � � � � �  \  ��  ��  ��  ��   � R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��   �  � � � l  �� ����� � O   �� � � � k   �� � �  � � � r   � � � � I  � ���� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   � ���
�� 
cfol � �� � �
�� 
insh � l  � � ����� � 4   � ��� �
�� 
psxf � m   � � � � � � �  / t m p��  ��   � �� ���
�� 
prdt � K   � � � � �� ���
�� 
pnam � o   � ����� 0 gappname gAppName��  ��   � o      ���� 0 
gappfolder 
gAppFolder �  � � � r  ' � � � I #���� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m  	��
�� 
cfol � �� � �
�� 
insh � o  ���� 0 
gappfolder 
gAppFolder � �� ��
�� 
prdt � K   � � �~ ��}
�~ 
pnam � m   � � � � �  C o n t e n t s�}  �   � o      �|�| 0 gcontfolder gContFolder �  � � � I (F�{�z �
�{ .corecrel****      � null�z   � �y � �
�y 
kocl � m  ,/�x
�x 
cfol � �w � �
�w 
insh � o  25�v�v 0 gcontfolder gContFolder � �u ��t
�u 
prdt � K  8@   �s�r
�s 
pnam m  ;> �  R e s o u r c e s�r  �t   �  I Ge�q�p
�q .corecrel****      � null�p   �o
�o 
kocl m  KN�n
�n 
cfol �m	

�m 
insh	 o  QT�l�l 0 gcontfolder gContFolder
 �k�j
�k 
prdt K  W_ �i�h
�i 
pnam m  Z] � 
 M a c O S�h  �j   �g I f��f�e
�f .corecrel****      � null�e   �d
�d 
kocl m  jm�c
�c 
cfol �b
�b 
insh o  ps�a�a 0 gcontfolder gContFolder �`�_
�` 
prdt K  v~ �^�]
�^ 
pnam m  y| �  P r o f i l e�]  �_  �g   � m   � ��                                                                                  MACS  alis    t  Macintosh HD               ��T�H+   9��
Finder.app                                                      <&�Lx�        ����  	                CoreServices    ��*�      �LN�     9�� 9�� 9��  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   �  l     �\�[�Z�\  �[  �Z    l     �Y !�Y      ask for the URL   ! �""     a s k   f o r   t h e   U R L #$# l ��%�X�W% r  ��&'& l ��(�V�U( n  ��)*) 1  ���T
�T 
ttxt* l ��+�S�R+ I ���Q,-
�Q .sysodlogaskr        TEXT, m  ��.. �// W h a t   i s   t h e   w e b   a d d r e s s ?  P r o v i d e   t h e   f u l l   U R L ,   w i t h   h t t p : / /  o r   a   l o c a l   h t m l   f i l e   p a t h   i n   t h e   f o r m  f i l e : / / / U s e r s / m y n a m e / D o c u m e n t s / s o m e f i l e . h t m l- �P0�O
�P 
dtxt0 m  ��11 �22  �O  �S  �R  �V  �U  ' o      �N�N 0 gappurl gAppURL�X  �W  $ 343 l     �M�L�K�M  �L  �K  4 565 l     �J78�J  7 &   ask to exclude toolbar from app   8 �99 @   a s k   t o   e x c l u d e   t o o l b a r   f r o m   a p p6 :;: l ��<�I�H< r  ��=>= l ��?�G�F? n  ��@A@ 1  ���E
�E 
bhitA l ��B�D�CB I ���BCD
�B .sysodlogaskr        TEXTC m  ��EE �FF � C r e a t e   a   t o o l b a r - l e s s   w i n d o w ? 
 C h r o m e   w i l l   l o a d   i t   a s   i t s   o w n   a p p .D �AGH
�A 
btnsG J  ��II JKJ m  ��LL �MM  E x c l u d e   t o o l b a rK N�@N m  ��OO �PP  I n c l u d e   t o o l b a r�@  H �?Q�>
�? 
dfltQ m  ���=�= �>  �D  �C  �G  �F  > o      �<�< $0 gtoolbarquestion gToolbarQuestion�I  �H  ; RSR l     �;�:�9�;  �:  �9  S TUT l ��V�8�7V Z  ��WX�6YW = ��Z[Z o  ���5�5 $0 gtoolbarquestion gToolbarQuestion[ m  ��\\ �]]  E x c l u d e   t o o l b a rX r  ��^_^ m  ��`` �aa  - - a p p =_ o      �4�4 "0 gexcludetoolbar gExcludeToolbar�6  Y r  ��bcb m  ��dd �ee  - - n e w - w i n d o w  c o      �3�3 "0 gexcludetoolbar gExcludeToolbar�8  �7  U fgf l     �2�1�0�2  �1  �0  g hih l     �/jk�/  j  	 App Icon   k �ll    A p p   I c o ni mnm l ��o�.�-o r  ��pqp n  ��rsr 1  ���,
�, 
psxps l ��t�+�*t b  ��uvu l ��w�)�(w c  ��xyx o  ���'�' 0 gcontfolder gContFoldery m  ���&
�& 
TEXT�)  �(  v m  ��zz �{{  R e s o u r c e s : i c o n .�+  �*  q o      �%�% 0 gappicon gAppIcon�.  �-  n |}| l �S~�$�#~ Q  �S�� k  ��� ��� r  ����� m  ���"
�" boovfals� o      �!�! 0 goticon gotIcon� �� � W  ���� k  ��� ��� l ������  �   ask for an icon image   � ��� ,   a s k   f o r   a n   i c o n   i m a g e� ��� r  �"��� I ����
� .sysostdfalis    ��� null�  � ���
� 
prmp� m  ��� ��� � S e l e c t   a n   i c o n   f o r   t h e   n e w   a p p ,   i t   m u s t   b e   a   p e r f e c t   s q u a r e   ( w i d t h = h e i g h t )  c l i c k   C a n c e l   t o   u s e   t h e   d e f a u l t   C h r o m e   i c o n� ���
� 
ftyp� J  �� ��� m  �� ���  p u b l i c . j p e g� ��� m  
�� ���  p u b l i c . p n g� ��� m  
�� ���  p u b l i c . t i f f� ��� m  �� ���  c o m . a p p l e . i c n s�  � ���
� 
lfiv� m  �
� boovfals�  � o      �� 0 gappiconsrc gAppIconSrc� ��� O  #5��� r  )4��� n  )0��� 1  ,0�
� 
utid� o  ),�� 0 gappiconsrc gAppIconSrc� o      �� 0 iconuti iconUTI� m  #&���                                                                                  sevs  alis    �  Macintosh HD               ��T�H+   9��System Events.app                                               =�o�5L�        ����  	                CoreServices    ��*�      �5"�     9�� 9�� 9��  =Macintosh HD:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� Z  6����� = 6=��� o  69�� 0 iconuti iconUTI� m  9<�� ���  c o m . a p p l e . i c n s� k  @u�� ��� l @@����  � . ( a ready made icon file, so just copy it   � ��� P   a   r e a d y   m a d e   i c o n   f i l e ,   s o   j u s t   c o p y   i t� ��� I @o���
� .sysoexecTEXT���     TEXT� b  @k��� b  @X��� b  @T��� m  @C�� ���  c p   - p  � I  CS���� 0 replacetext ReplaceText� ��� n  DI��� 1  GI�

�
 
psxp� o  DG�	�	 0 gappiconsrc gAppIconSrc� ��� m  IL�� ���   � ��� m  LO�� ���  \  �  �  � m  TW�� ���   � I  Xj���� 0 replacetext ReplaceText� ��� b  Y`��� o  Y\�� 0 gappicon gAppIcon� m  \_�� ���  i c n s� ��� m  `c�� ���   � ��� m  cf�� ���  \  �  �  �  � ��� r  pu��� m  pq�
� boovtrue� o      �� 0 goticon gotIcon�  �  � k  x�� ��� l xx� ���   � , & image size conversion, saving as TIFF   � ��� L   i m a g e   s i z e   c o n v e r s i o n ,   s a v i n g   a s   T I F F� ��� O  x���� k  ~��� ��� I ~�������
�� .ascrnoop****      � ****��  ��  � ��� r  ����� I �������
�� .aevtodocnull  �    alis� o  ������ 0 gappiconsrc gAppIconSrc��  � o      ���� 0 
this_image  � � � s  �� n  �� 1  ����
�� 
dmns o  ������ 0 
this_image   J        o      ���� 0 w W �� o      ���� 0 h H��    	
	 l ������   5 / not accepting a rectangular image, only square    � ^   n o t   a c c e p t i n g   a   r e c t a n g u l a r   i m a g e ,   o n l y   s q u a r e
  Z  ������ = �� o  ������ 0 w W o  ������ 0 h H k  ��  I ����
�� .icasscalnull���     obj  o  ������ 0 
this_image   ����
�� 
maxi m  ������ ���    I ����
�� .coresavenull���     obj  o  ������ 0 
this_image   ��
�� 
fltp m  ����
�� typvTIFF �� ��
�� 
kfil  b  ��!"! o  ������ 0 gappicon gAppIcon" m  ��## �$$  t i f f��   %��% r  ��&'& m  ����
�� boovtrue' o      ���� 0 goticon gotIcon��  ��  ��   (��( I ����)��
�� .coreclosnull���     obj ) o  ������ 0 
this_image  ��  ��  � m  x{**�                                                                                  imev  alis    �  Macintosh HD               ��T�H+   9��Image Events.app                                                =�Z�5M        ����  	                CoreServices    ��*�      �5"�     9�� 9�� 9��  <Macintosh HD:System: Library: CoreServices: Image Events.app  "  I m a g e   E v e n t s . a p p    M a c i n t o s h   H D  ,System/Library/CoreServices/Image Events.app  / ��  � +,+ l ����-.��  - !  convert the tiff into icon   . �// 6   c o n v e r t   t h e   t i f f   i n t o   i c o n, 0��0 I ���1��
�� .sysoexecTEXT���     TEXT1 b  �232 b  �454 m  ��66 �77 & t i f f 2 i c n s   - n o L a r g e  5 n  �898 1   ��
�� 
strq9 l � :����: b  � ;<; o  ������ 0 gappicon gAppIcon< m  ��== �>>  t i f f��  ��  3 m  ?? �@@    > &   / d e v / n u l l��  ��  �  � o  ������ 0 goticon gotIcon�   � R      ��AB
�� .ascrerr ****      � ****A o      ���� 0 errtext errTextB ��CD
�� 
errnC o      ���� 0 errnum errNumD ��EF
�� 
erobE o      ���� 0 frerr frErrF ��G��
�� 
errtG o      ���� 0 toerr toErr��  � Z  SHI��JH l K����K = LML o  ���� 0 errnum errNumM m  ��������  ��  I k   ?NN OPO l   ��QR��  Q + % Cancel click, so use the Chrome icon   R �SS J   C a n c e l   c l i c k ,   s o   u s e   t h e   C h r o m e   i c o nP T��T I  ?��U��
�� .sysoexecTEXT���     TEXTU b   ;VWV b   1XYX b   -Z[Z m   #\\ �]]  c p   - p  [ n  #,^_^ 1  *,��
�� 
strq_ l #*`����` b  #*aba n  #&cdc 1  $&��
�� 
psxpd o  #$���� "0 gchromeorigpath gChromeOrigPathb m  &)ee �ff 6 C o n t e n t s / R e s o u r c e s / a p p . i c n s��  ��  Y m  -0gg �hh   W n  1:iji 1  8:��
�� 
strqj l 18k����k b  18lml o  14���� 0 gappicon gAppIconm m  47nn �oo  i c n s��  ��  ��  ��  ��  J r  BSpqp b  BQrsr b  BMtut b  BKvwv b  BGxyx m  BEzz �{{ ^ S o m e   e r r o r   o c c u r e d   w h i l e   p r o c e s s i n g   t h e   i m a g e :  y o  EF���� 0 errtext errTextw m  GJ|| �}}    (u o  KL���� 0 errnum errNums m  MP~~ �  )q o      ���� 0 err  �$  �#  } ��� l     ��������  ��  ��  � ��� l T������� Z  T�������� = TY��� o  TU���� 0 err  � m  UX�� ���  � k  \��� ��� l \\������  �   write the executable   � ��� *   w r i t e   t h e   e x e c u t a b l e� ��� r  \q��� b  \m��� b  \i��� b  \e��� b  \a��� m  \_�� ��� � # ! / b i n / s h 
 i a m = " $ 0 " 
 p r o f D i r = $ ( d i r n a m e   " $ i a m " ) 
 p r o f D i r = $ ( d i r n a m e   " $ p r o f D i r " ) 
 p r o f D i r = " $ p r o f D i r / P r o f i l e " 
 e x e c  � o  _`���� 0 gchromepath gChromePath� m  ad�� ��� B   - - u s e r - d a t a - d i r = " $ p r o f D i r "   " $ @ "  � o  eh���� "0 gexcludetoolbar gExcludeToolbar� o  il���� 0 gappurl gAppURL� o      ���� 0 	gexeccont 	gExecCont� ��� r  r���� b  r}��� b  r{��� l rw������ c  rw��� o  ru���� 0 gcontfolder gContFolder� m  uv��
�� 
TEXT��  ��  � m  wz�� ���  M a c O S :� o  {|���� 0 gappname gAppName� o      ���� 0 gexecutable gExecutable� ��� r  ����� I ������
�� .rdwropenshor       file� o  ������ 0 gexecutable gExecutable� �����
�� 
perm� m  ����
�� boovtrue��  � o      ���� 0 fp1  � ��� I ������
�� .rdwrwritnull���     ****� o  ������ 0 	gexeccont 	gExecCont� �����
�� 
refn� o  ������ 0 fp1  ��  � ��� I �������
�� .rdwrclosnull���     ****� o  ������ 0 fp1  ��  � ��� l ����������  ��  ��  � ��� l ��������  �   set exec permissions   � ��� *   s e t   e x e c   p e r m i s s i o n s� ���� I �������
�� .sysoexecTEXT���     TEXT� b  ����� m  ���� ���  c h m o d   7 5 5  � n  ����� 1  ����
�� 
strq� n  ����� 1  ����
�� 
psxp� o  ������ 0 gexecutable gExecutable��  ��  ��  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� l     ������  �   write the Info.plist   � ��� *   w r i t e   t h e   I n f o . p l i s t� ��� l ������� Z  �������� = ����� o  ������ 0 err  � m  ���� ���  � k  ���� ��� r  ����� b  ����� b  ����� m  ���� ���� < ? x m l   v e r s i o n = " 1 . 0 "   e n c o d i n g = " U T F - 8 " ? > 
 < ! D O C T Y P E   p l i s t   P U B L I C   " - / / A p p l e / / D T D   P L I S T   1 . 0 / / E N "   " h t t p : / / w w w . a p p l e . c o m / D T D s / P r o p e r t y L i s t - 1 . 0 . d t d " > 
 < p l i s t   v e r s i o n = " 1 . 0 " > 
 < d i c t > 
 < k e y > C F B u n d l e E x e c u t a b l e < / k e y > 
 < s t r i n g >� o  ������ 0 gappname gAppName� m  ���� ��� � < / s t r i n g > 
 < k e y > C F B u n d l e I c o n F i l e < / k e y > 
 < s t r i n g > i c o n < / s t r i n g > 
 < / d i c t > 
 < / p l i s t > 
� o      �� 0 
gplistcont 
gPlistCont� ��� r  ����� I ���~��
�~ .rdwropenshor       file� l ����}�|� b  ����� l ����{�z� c  ����� o  ���y�y 0 gcontfolder gContFolder� m  ���x
�x 
TEXT�{  �z  � m  ���� ���  I n f o . p l i s t�}  �|  � �w��v
�w 
perm� m  ���u
�u boovtrue�v  � o      �t�t 0 fp2  � ��� I ���s��
�s .rdwrwritnull���     ****� o  ���r�r 0 
gplistcont 
gPlistCont� �q��p
�q 
refn� o  ���o�o 0 fp2  �p  � ��n� I ���m �l
�m .rdwrclosnull���     ****  o  ���k�k 0 fp2  �l  �n  ��  ��  ��  ��  �  l     �j�i�h�j  �i  �h    l     �g�g     rename it to final .app    � 0   r e n a m e   i t   t o   f i n a l   . a p p 	 l �
�f�e
 Z  ��d =  o  �c�c 0 err   m   �   k  
w  r  
 b  
 o  
�b�b 0 gappname gAppName m   �  . a p p o      �a�a 0 gapp gApp  O  Q k  P  !  r  %"#" o  �`�` 0 gapp gApp# n      $%$ 1   $�_
�_ 
pnam% o   �^�^ 0 
gappfolder 
gAppFolder! &�]& I &P�\'(
�\ .coremoveobj        obj ' l &6)�[�Z) c  &6*+* 4  &2�Y,
�Y 
psxf, l *1-�X�W- b  *1./. m  *-00 �11 
 / t m p // o  -0�V�V 0 gapp gApp�X  �W  + m  25�U
�U 
alis�[  �Z  ( �T2�S
�T 
insh2 4  9L�R3
�R 
cfol3 l =K4�Q�P4 c  =K565 4  =G�O7
�O 
psxf7 l AF8�N�M8 b  AF9:9 o  AB�L�L 0 gapproot gAppRoot: m  BE;; �<<  /�N  �M  6 m  GJ�K
�K 
alis�Q  �P  �S  �]   m  ==�                                                                                  MACS  alis    t  Macintosh HD               ��T�H+   9��
Finder.app                                                      <&�Lx�        ����  	                CoreServices    ��*�      �LN�     9�� 9�� 9��  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   >?> l RR�J�I�H�J  �I  �H  ? @A@ l RR�GBC�G  B   tell user we're done   C �DD *   t e l l   u s e r   w e ' r e   d o n eA E�FE I Rw�EFG
�E .sysodlogaskr        TEXTF b  RcHIH b  R_JKJ b  R]LML b  RYNON b  RWPQP o  RS�D�D 0 gapproot gAppRootQ m  SVRR �SS  /O o  WX�C�C 0 gappname gAppNameM m  Y\TT �UU � . a p p   i s   r e a d y 
 
 Y o u   c a n   m o v e   t h i s   n e w   a p p   t o   a n y   c o n v i n i e n t   f o l d e r . 
 
 N O T E ! !   i f   y o u   m o v e   t h e   G o o g l e   C h r o m e . a p p   a w a y   f r o m  K o  ]^�B�B 0 gapproot gAppRootI m  _bVV �WW � / ,   t h i s   n e w   a p p   s h o r t c u t   w i l l   s t o p   w o r k i n g   a n d   y o u ' l l   h a v e   t o   r e m a k e   i t   a g a i n .G �AXY
�A 
btnsX J  fkZZ [�@[ m  fi\\ �]]  O K�@  Y �?^�>
�? 
dflt^ m  nq__ �``  O K�>  �F  �d   k  z�aa bcb O z�ded I ���=f�<
�= .coredeloobj        obj f o  ���;�; 0 
gappfolder 
gAppFolder�<  e m  z}gg�                                                                                  MACS  alis    t  Macintosh HD               ��T�H+   9��
Finder.app                                                      <&�Lx�        ����  	                CoreServices    ��*�      �LN�     9�� 9�� 9��  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  c h�:h I ���9ij
�9 .sysodlogaskr        TEXTi b  ��klk o  ���8�8 0 err  l m  ��mm �nn r   C l o s e   t h i s   d i a l o g ,   n o   h a r m   w a s   d o n e ,   b u t   n o   a p p   e i t h e r .j �7op
�7 
btnso J  ��qq r�6r m  ��ss �tt  O K�6  p �5u�4
�5 
dfltu m  ��vv �ww  O K�4  �:  �f  �e  	 xyx l     �3�2�1�3  �2  �1  y z{z l     �0�/�.�0  �/  �.  { |}| l     �-�,�+�-  �,  �+  } ~~ l      �*���*  �  
 * functions
    � ���  
   *   f u n c t i o n s 
   ��� l     �)�(�'�)  �(  �'  � ��� l     �&�%�$�&  �%  �$  � ��� l     �#���#  � X R http://hohabadu.de/?APPLESCRIPT/Praktische-Handler/Datei-oder-Ordner-vorhanden%3F   � ��� �   h t t p : / / h o h a b a d u . d e / ? A P P L E S C R I P T / P r a k t i s c h e - H a n d l e r / D a t e i - o d e r - O r d n e r - v o r h a n d e n % 3 F� ��� i     ��� I      �"��!�"  0 checkexistence CheckExistence� �� � o      �� 60 fileorfoldertocheckstring FileOrFolderToCheckString�   �!  � Q     ���� k    �� ��� 4    ��
� 
alis� o    �� 60 fileorfoldertocheckstring FileOrFolderToCheckString� ��� L   	 �� m   	 
�
� boovtrue�  � R      ���
� .ascrerr ****      � ****�  �  � L    �� m    �
� boovfals� ��� l     ����  �  �  � ��� l     ����  � / ) http://www.alecjacobson.com/weblog/?p=49   � ��� R   h t t p : / / w w w . a l e c j a c o b s o n . c o m / w e b l o g / ? p = 4 9� ��� i    ��� I      ���� 0 last_offset  � ��� o      �� 0 the_text  � ��� o      �� 0 char  �  �  � k     >�� ��� Q     ;���� k    1�� ��� r    
��� I   ���
� .corecnte****       ****� o    �� 0 the_text  �  � o      �
�
 0 len  � ��� r    ��� c    ��� n    ��� 1    �	
�	 
rvse� n    ��� 2   �
� 
cha � o    �� 0 the_text  � m    �
� 
TEXT� o      �� 0 reversed  � ��� r    $��� [    "��� \     ��� o    �� 0 len  � l   ���� I   �� �
� .sysooffslong    ��� null�   � ����
�� 
psof� o    ���� 0 char  � �����
�� 
psin� o    ���� 0 reversed  ��  �  �  � m     !���� � o      ���� 0 last_occurrence  � ���� Z   % 1������� ?   % (��� o   % &���� 0 last_occurrence  � o   & '���� 0 len  � L   + -�� m   + ,����  ��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � L   9 ;�� m   9 :����  � ���� L   < >�� o   < =���� 0 last_occurrence  ��  � ��� l     ��������  ��  ��  � ��� l     ������  � / ) http://www.alecjacobson.com/weblog/?p=52   � ��� R   h t t p : / / w w w . a l e c j a c o b s o n . c o m / w e b l o g / ? p = 5 2� ��� i    ��� I      ������� 0 dirname  � ���� o      ���� 0 the_path  ��  ��  � k     \�� ��� r     	��� I     ������� 0 last_offset  � ��� o    ���� 0 the_path  � ���� m    �� ���  /��  ��  � o      ���� 0 last_occurrence  � ��� Z   
 ������� =  
 ��� o   
 ���� 0 last_occurrence  � m    ����  � L    �� m    �� ���  .��  ��  � ��� Z    #������� =   ��� o    ���� 0 last_occurrence  � m    ���� � L    �� m    �� �    /��  ��  �  Z   $ K���� =  $ + o   $ %���� 0 last_occurrence   l  % *���� I  % *����
�� .corecnte****       **** o   % &���� 0 the_path  ��  ��  ��   k   . G		 

 r   . ? c   . = n   . ; 7  / ;��
�� 
cobj m   3 5����  l  6 :���� \   6 : o   7 8���� 0 last_occurrence   m   8 9���� ��  ��   o   . /���� 0 the_path   m   ; <��
�� 
TEXT o      ���� 0 the_path   �� L   @ G I   @ F������ 0 dirname   �� o   A B���� 0 the_path  ��  ��  ��  ��  ��   �� L   L \ c   L [ n   L Y  7  M Y��!"
�� 
cobj! m   Q S���� " l  T X#����# \   T X$%$ o   U V���� 0 last_occurrence  % m   V W���� ��  ��    o   L M���� 0 the_path   m   Y Z��
�� 
TEXT��  � &'& l     ��������  ��  ��  ' ()( l     ��*+��  * O I http://lists.apple.com/archives/Applescript-users/2005/Nov/msg00008.html   + �,, �   h t t p : / / l i s t s . a p p l e . c o m / a r c h i v e s / A p p l e s c r i p t - u s e r s / 2 0 0 5 / N o v / m s g 0 0 0 0 8 . h t m l) -.- i    /0/ I      ��1���� 0 replacetext ReplaceText1 232 o      ���� 0 	thestring 	theString3 454 o      ���� 0 fstring fString5 6��6 o      ���� 0 rstring rString��  ��  0 k     &77 898 r     :;: n    <=< 1    ��
�� 
txdl= 1     ��
�� 
ascr; o      ���� (0 current_delimiters current_Delimiters9 >?> r    @A@ o    ���� 0 fstring fStringA n     BCB 1    
��
�� 
txdlC 1    ��
�� 
ascr? DED r    FGF n    HIH 2    ��
�� 
citmI o    ���� 0 	thestring 	theStringG o      ���� 0 slist sListE JKJ r    LML o    ���� 0 rstring rStringM n     NON 1    ��
�� 
txdlO 1    ��
�� 
ascrK PQP r    RSR c    TUT o    ���� 0 slist sListU m    ��
�� 
TEXTS o      ���� 0 	newstring 	newStringQ VWV r    #XYX o    ���� (0 current_delimiters current_DelimitersY n     Z[Z 1     "��
�� 
txdl[ 1     ��
�� 
ascrW \��\ L   $ &]] o   $ %���� 0 	newstring 	newString��  . ^_^ l     ��������  ��  ��  _ `��` l     ��������  ��  ��  ��       ��abcdef��  a ������������  0 checkexistence CheckExistence�� 0 last_offset  �� 0 dirname  �� 0 replacetext ReplaceText
�� .aevtoappnull  �   � ****b �������gh����  0 checkexistence CheckExistence�� ��i�� i  ���� 60 fileorfoldertocheckstring FileOrFolderToCheckString��  g ���� 60 fileorfoldertocheckstring FileOrFolderToCheckStringh ������
�� 
alis��  ��  ��  *�/EOeW 	X  fc �������jk���� 0 last_offset  �� �l� l  �~�}�~ 0 the_text  �} 0 char  ��  j �|�{�z�y�x�| 0 the_text  �{ 0 char  �z 0 len  �y 0 reversed  �x 0 last_occurrence  k 
�w�v�u�t�s�r�q�p�o�n
�w .corecnte****       ****
�v 
cha 
�u 
rvse
�t 
TEXT
�s 
psof
�r 
psin�q 
�p .sysooffslong    ��� null�o  �n  �� ? 3�j  E�O��-�,�&E�O�*��� kE�O�� jY hW 	X  	jO�d �m��l�kmn�j�m 0 dirname  �l �io�i o  �h�h 0 the_path  �k  m �g�f�g 0 the_path  �f 0 last_occurrence  n ��e���d�c�b�a�e 0 last_offset  
�d .corecnte****       ****
�c 
cobj
�b 
TEXT�a 0 dirname  �j ]*��l+ E�O�j  �Y hO�k  �Y hO��j   �[�\[Zk\Z�k2�&E�O*�k+ Y hO�[�\[Zk\Z�k2�&e �`0�_�^pq�]�` 0 replacetext ReplaceText�_ �\r�\ r  �[�Z�Y�[ 0 	thestring 	theString�Z 0 fstring fString�Y 0 rstring rString�^  p �X�W�V�U�T�S�X 0 	thestring 	theString�W 0 fstring fString�V 0 rstring rString�U (0 current_delimiters current_Delimiters�T 0 slist sList�S 0 	newstring 	newStringq �R�Q�P�O
�R 
ascr
�Q 
txdl
�P 
citm
�O 
TEXT�] '��,E�O���,FO��-E�O���,FO��&E�O���,FO�f �Ns�M�Ltu�K
�N .aevtoappnull  �   � ****s k    �vv  ww  xx  +yy  >zz  Q{{  X||  _}}  �~~  � #�� :�� T�� m�� |�� ��� ��� �J�J  �M  �L  t �I�H�G�F�I 0 errtext errText�H 0 errnum errNum�G 0 frerr frErr�F 0 toerr toErru � �E %�D�C�B�A�@�?�>�= H�<�; V�: ]�9 ��8 p�7�6 w�5 � ��4 � � � � � � ��3�2 � � � ��1�0�/�.�- ��,�+�*�)�( ��'.1�&E�%LO�$�#�"�!\`� dz�����������������������*�������������
#�	�6=?���\egnz|~���������� ���������������0��;��RTV\_��msv�E 0 err  
�D .earsffdralis        afdr
�C 
psxp
�B 
ctxt�A "0 gchromeorigpath gChromeOrigPath
�@ 
cha 
�? 
TEXT�> 0 dirname  �= 0 gapproot gAppRoot
�< 
strq�; 0 gchromepath gChromePath�: 0 gappname gAppName�9 0 gappnametxt gAppNameTxt
�8 
dtxt
�7 .sysodlogaskr        TEXT
�6 
ttxt
�5 
psxf�4  0 checkexistence CheckExistence�3 0 replacetext ReplaceText
�2 .sysoexecTEXT���     TEXT�1  �0  
�/ 
kocl
�. 
cfol
�- 
insh
�, 
prdt
�+ 
pnam�* 
�) .corecrel****      � null�( 0 
gappfolder 
gAppFolder�' 0 gcontfolder gContFolder�& 0 gappurl gAppURL
�% 
btns
�$ 
dflt�# 
�" 
bhit�! $0 gtoolbarquestion gToolbarQuestion�  "0 gexcludetoolbar gExcludeToolbar� 0 gappicon gAppIcon� 0 goticon gotIcon
� 
prmp
� 
ftyp
� 
lfiv
� .sysostdfalis    ��� null� 0 gappiconsrc gAppIconSrc
� 
utid� 0 iconuti iconUTI
� .ascrnoop****      � ****
� .aevtodocnull  �    alis� 0 
this_image  
� 
dmns
� 
cobj� 0 w W� 0 h H
� 
maxi� �
� .icasscalnull���     obj 
� 
fltp
� typvTIFF
�
 
kfil
�	 .coresavenull���     obj 
� .coreclosnull���     obj � 0 errtext errText� �����
�� 
errn�� 0 errnum errNum� �����
�� 
erob�� 0 frerr frErr� ������
�� 
errt�� 0 toerr toErr��  ���� 0 	gexeccont 	gExecCont� 0 gexecutable gExecutable
� 
perm
� .rdwropenshor       file� 0 fp1  
�  
refn
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****�� 0 
gplistcont 
gPlistCont�� 0 fp2  �� 0 gapp gApp
�� 
alis
�� .coremoveobj        obj 
�� .coredeloobj        obj �K��E�O�j �,�&E�O*�[�\[Zk\Zi2�&k+ 	E�O��%�,E�O�E�Oa E` O dh�a _ a a l a ,E�O�a  ;**a �a %�%a %/k+  a  a �%a %E` Oa E�UY hY h[OY��O 2a  *�a !a "m+ #%j $Oa %*�a &%a 'a (m+ #%j $W X ) *hOa  �*a +a ,a -)a a ./a /a 0�la 1 2E` 3O*a +a ,a -_ 3a /a 0a 4la 1 2E` 5O*a +a ,a -_ 5a /a 0a 6la 1 2O*a +a ,a -_ 5a /a 0a 7la 1 2O*a +a ,a -_ 5a /a 0a 8la 1 2UOa 9a a :l a ,E` ;Oa <a =a >a ?lva @ka A a B,E` CO_ Ca D  a EE` FY 	a GE` FO_ 5�&a H%�,E` IO)fE` JOh_ J*a Ka La Ma Na Oa Pa Qa Ava Rfa 1 SE` TOa U _ Ta V,E` WUO_ Wa X  :a Y*_ T�,a Za [m+ #%a \%*_ Ia ]%a ^a _m+ #%j $OeE` JY �a ` x*j aO_ Tj bE` cO_ ca d,E[a ek/EQ` fZ[a el/EQ` gZO_ f_ g  2_ ca ha il jO_ ca ka la m_ Ia n%a A oOeE` JY hO_ cj pUOa q_ Ia r%�,%a s%j $[OY��W BX t u�a v  $a w��,a x%�,%a y%_ Ia z%�,%j $Y a {�%a |%�%a }%E�O�a ~  `a �%a �%_ F%_ ;%E` �O_ 5�&a �%�%E` �O_ �a �el �E` �O_ �a �_ �l �O_ �j �Oa �_ ��,�,%j $Y hO�a �  >a ��%a �%E` �O_ 5�&a �%a �el �E` �O_ �a �_ �l �O_ �j �Y hO�a �  r�a �%E` �Oa  8_ �_ 3a 0,FO*a a �_ �%/a �&a -*a ,*a �a �%/a �&/l �UO�a �%�%a �%�%a �%a =a �kva @a �a A Y *a  	_ 3j �UO�a �%a =a �kva @a �a A  ascr  ��ޭ