=start
	����
	05_scalars.pl
	2019/3/6
=cut

# ���ֱ���
$integer = 200;
$float = 123.45;
$bigfloat = -1.2e-23;
$octal = 0377;
$hexa = 0xff;
print "\$integer = $integer\n";
print "\$float = $float\n";
print "\$bigfloat = $bigfloat\n";
print "\$octal = $octal\n";
print "\$hexa = $hexa\n";

# �ַ�������
$var = "ABC";
$double = "hello - $var";
print "\$var = $var\n";
print "\$double = $double\n";

# ��������
$str = "hello" . "world";	# �ַ�������
$num = 5 + 10;
$mix = $str . $num;
print "str = $str\n";
print "num = $num\n";
print "mix = $mix\n";

# �����ַ����ǵ����ı�ǣ�����д���ַ�����
print "�ļ�����" . __FILE__ . "\n";
print "��   �ţ�" . __LINE__ . "\n";
print "��   ����" . __PACKAGE__ . "\n";

# v�ַ���v��ͷ��������֣����ִ����ַ���asciiֵ���ַ����þ�ŷָ�
$foo = v102.111.111;
print "\$foo = $foo\n"; 