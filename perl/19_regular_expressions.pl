=start
	������
	19_regular_expressions.pl
	2019/3/13
=cut

# ƥ���������m//��=~��ʾ��ƥ�䣬!~��ʾ��ƥ��
$bar = "I am a student, welcome to muc.";
if ($bar =~ /stu/) {
	print "ƥ��ɹ�\n";
} else {
	print "ƥ��ʧ��\n";
}

# ������ʽ����
# $`��ƥ�䲿�ֵ�ǰһ�����ַ���
# $&��ƥ����ַ���
# $'����δƥ���ʣ���ַ���
$str = "welcome to muc.";
$str =~ m/to/;
print "\$`��$`\n";
print "\$&��$&\n";
print "\$'��$'\n";

# �滻��������s///
$str = "hello perl, you are so bad.";
$str =~ s/bad/good/;
print $str . "\n";
$str =~ s/o/*/;
print $str . "\n";

# ת��������
$str = "welcome tooo beijing. 123 go.";

$str =~ tr/a-z/A-Z/;
print $str . "\n";

$str =~ tr/A-Z/a-z/s;
print $str . "\n";

$str =~ tr/\t //d;
print $str . "\n";

$str =~ tr/0-9/*/;
print $str . "\n";