#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYX57: ����� ����������@�D`��  @ `�^{��
��V�o�����C���
��rWY+�S�bU����P0�!�aFM1M��G��zh�4��M� �КdM @�Jl��Ԛ�j4= ш2h6�F��40F�@�4�P!"2O)�d���4�h� � h � ��%O)�ODMM��z� �    �@     "Q4F@��U?L �G�i�6��yM3L��yF�Bz������<��A h!��z�țFL��M5=OP�S�b�����MA�z�M2j,b@lbcJ���[7ɒ&)y��Wd?�m���b��M{f�<�W
��8=|8k޹g�%��K�H׷T�Ҙ1UkUUUUUV[t�U��#
��#-1`�(���U�U"@�A!�ꓩ���5�������Z��k��iSЩBr���];e�7E%�g���p��*>x�'���l0���6�z��6���pd�q��@QnXɴ0'(;��"���["t�v�ޘ�sIx|�����c����*�&V����$��-���q���lo<4jEF�����9F(�����,��g6�43��Ni���M<Q���Sb���~��B� Уr��}�������w�D���~���e?5�	 �����9�D�8\���!�Ǡ��t��[�"�0m)��?��į7/x��]�I�ِw�>�w��L�00�b�z�P�*�c�2���
,�&Q��h?�v�t�Y����ތ1Fp��qXd�� z4?��bj��Z�w���1��>FV\VD��[|�c��ˉߴ��%�@liV����L]z^ ���<'U�@�U㦡�ZS��o�I� 7�@�!�z\?���o9� E�OĄ�~8gb&`;tYX9�Ă[GQĿ�.b�:A7��@IuR�CJ���o�E��O�_�P%6	x�L�����
I�^���^n�ʞrP ���}�A2�M�pa5e���k��`ɡV��e��������b9o����C�m^���C�tl$.L /}�Em6��B����
�AQbBb!��٨El^�"9���(.B^4%�F���n�פz� $� ���+B�iR"j��rAZGz�=��"7�t� ���)D"��(�@Y���~/��\!raYZ��_o��b�)yy:�K(�Y&"R%��)(��&e��(e�����a�vAv9H#��H*�$�����mO�}�������S�.nsV�fT7�|����}P��!̪�����H�hrB���@녝�?�3��� u
=C����!z6QP���I$�"|��gc���ָ�|Ul���
z�"����	�rw�D�pt�6_�h���{�V�m)��.�,T���Xcb��P~L��T���p�z�Q�@D7!��V�B�����,m���Go�ͮ=����R�t݄����i6�F
E���p��"�W�Z���$CԌ�4�h�݁UQ�D+	SQ��e��鍐�#�@K�	}O��x���a!<�)8����7U��]�=�L$*�'Ȩ"T[����bkH8M=��D�p���6<@l]�⥪�mN\�b���#�ʣ�$-f����ܖ3��>��"�H6�:����|���u����^��ˉV�E�!�Ċ�L��\���1iZ����Β����AVer�۰���	�
V�jWMyQ�j���"+Xz��چ��c_�����p�ry����L3Gx������y5��)��M��yx�HH�X����i,}�����0˯lQ�T+�٦B�?�%G��(�B�Y���0�@\�#��b]֒y�Q�UU
Љ-��0������+6�>�$E��vm�������Lz�k� ȅ�5*��!��<������Cx9)�VG��E�\�9%�iQ��	.[����{�T֊)b0��D�(�迳B$�6����WF�\t(���x���GTL^�C��t���6Щ�p.�h����
t ��}���+��v-�P�A�=K1�v���^p�.�K�n�y+8I�-�����wʛ���j~:,4�[%Q'�}G1�W�6,�[���oڊ'k��v	r�ۚ�\+	��D�i�AE���
��0�-��R�`�,�0Eb| ��8�b� _"��o��v�쪼q�8G��@U������M"����\n)��H�˗
"���s}��f�(�mt	̶� ��Q�.3�梶TM̾`͌���K�N��H1�l��a�4˛{�*���bA	�\��zB���(h߈DA�4�s��Ⱥfh�h�bR0�R�	~U �~@-&� _H�TjF���X���(jB�(�^h�$|��Wpww�BS��l�$���Ox�*�I�=�j�YT��������qj
��D<T[��󒦢����v8y�Ϻ�X�v������r�ǭhh��N���ţn~��b��<!�fei�1����2�M���vp��)XU��M�vy�m�u�M�)#QD@�(��N�Y&����
S!���m���>�~��)4��Z��c碀\�4�3��u�St��H aN�x
!Q4�G�Pl�$$9J�Y���"���=��m����9��������!nb�@Ɠ"�>��A[��2; w�~%�Jo[J_.� ������x	Dܰ}�^D�Z)�[ȫM_D��"abx#L��huH)"Y�bJ�PH��X��GV#���f����4��p�" }�޶��$qh8�2�94}���ր6���$�:a1�]�Z�6�5� ��:��S33,ƙ�0(5�U@HF?U���Gp���z��4��Q��8�.c�@t���T%���.J|�L!z�J@\0i��$��eΕ������N����t�:z#���7 �L�BA2#2h{�����!D:W
ґ&1��n,A?YA	�3X�&.�]_��s�u��hx��w�����"�!kT�E�E�n�%'�e��;Q�ԧ�h����dqA�I�XԈcuH��jbHf�x%DJL�$�򪮅j;؞N!Z�tܶD��f�\�vA��]��QՁ��:�3k`���F'&h�k��$)�-Qj0�x�]V�Ll��D4�$�Y�A�A,�9Q�	�{�1z7�:ƅ�+y�1#$���� F�W8�41�(=����~)b29�Ί�gÆ;�)�e���=��!F3]iQ.�����<�BW�zv�"�fs��Ρ�U���ǒ��Eh�0��"�.�(�PF*��^���8�����P(���K������+�ނAq��b�+ց#[#(@d%1pA{yWV��CD���S�j�<�;�fX	#��W�9�+Ժ�v))L��69�/?��NX 'P��+BGچ���il�Ͻ��u�p��M������B����e�p�1d�B�X%*C�0���Zd�X��dl0ZS\�9\	Ɍ��#P�Kj�y�3TS \�A��/�(������p�7��AM�c���Õ�~�%HR����
����V0��90�\���*�B� W����3"�N�iAJL�(�0�Af<E��5�m�`]����i�
KƐ������AW���w�.�]Ҫ�L�A�1@����]���~ P*�
����KE�v�v�BE၁,�-���&���tm�g&e��6N�+b/�&�����f9yD�V-���QQQ����H-^;���ٻm�ds{K�D��B&~���p `��0u��g uB��A7�!�n�3�J: ���vl���k�ڄ��
0��]#o9��H�P+�QP't��[٠{ EȺi��sI0�F�8����==�V"�0�TB̓���	�:�pH�����P�ǧ_cb��g�P�5�)=�b�Yf�=�H�zO@��A ��@Jz�A�Gԣw�B1���>��p�Zi �DPt�e�$\�fH#�.�p� �jnt