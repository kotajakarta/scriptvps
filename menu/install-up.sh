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
BZh91AY&SY��P�  S��@ ���������   @T�[n�Rh$O(bh2z��&���h44�� �@&�z�=@d h d� �@2�4Ѧ��i��@      �%1a&�P�   i��@�Ouc:a�9-�btZ�am�Qʨ�a���@p��Ch�"�i�Ay�M=�*ď�!���Cq�Pf�}�h++0��j��Z�cɏ��	�)�I�i��df��`�|o����#1IYT�.0��b�b?�N"v�0_3��PD�.YW���}X�M��$i"D���GRH"�s:Y�����(Ǧ�����g�'�f�s5ľ@�1 ��~LVC��g��nfH�i? �(C���J ��DZ��9�z|����\��;�0^�h5�!}�:��o�%Y���}*c���X��KL�r.<�����Ucdŭ1]�?E0��j+6%-��ɨ%4IJ�%����3q$d�X��#��?-डd��\�w����M�+	v���� �(�hd�ͦ-h���H
H5�a�b�R�����F��o��>T`T���J)h ?Q�Yb��RB��U�Q`K��UŐ���yNF9"�4J�*U�B!���������N6e�=��Hp�P��?C�6��]��BC��C(