=start
	�������
	08_conditions.pl
	2019/3/7
=cut


# ��Ԫ�����
$like = 10;
$stat = ($like > 5) ? "Like" : "Unlike";
print "\$stat = $stat\n";

# if-else
$a = "";
if ($a) {
	print "true\n";
} else {
	print "false\n";
}

# if-elsif
$a = 20;
if ($a < 20) {
	print "<20\n";
} elsif ($a < 30) {
	print "< 30\n";
} else {
	print ">= 30\n";
}

# unless
$a = 10;
unless ($a < 10) {
	print "\$a = $a\n";
}

# switch��caseĬ���Դ�break��ȡ��breakͨ��next���ʵ��
use Switch;
$var = 10;
@array = (10, 20, 30);
%hash = ('key1'=>10, 'key2'=>20);
switch($var) {
	case 10 		{ print "����10\n"; next; }
	case "a"		{ print "�ַ���a\n"; }
	case [1..5]		{ print "�������б���"; }
	case (\@array)	{ print "������������"; }
	case (\%hash)	{ print "�ڹ�ϣ"; }
	else			{ print "û��ƥ�������"; } 
}