=start
	ʱ������
	14_formats.pl
	2019/3/8
=cut

$text = "one two three";
format STDOUT =
first: ^<<<<<
	$text
second: ^<<<<<
	$text
third: ^<<<<
	$text
.
write;

# ֵ���ʽ
format EMPLOYEE =
=============================
@<<<<<<<<<<<<<< @<<
$name, $age
@####.##
$salary
=============================
.
select(STDOUT);
$~ = EMPLOYEE;
@n = ("abc", "def", "ghi");
@a = (20, 30, 40);
@s = (100.00, 300.00, 500.00);

$i = 0;
foreach (@n) {
	$name = $_;
	$age = $a[$i];
	$salary = $s[$i++];
	write;
}

# ��ʽ����
$~ = "MYFORMAT";
write;
format MYFORMAT = # �����ʽMYFORMAT
=============================
	Text # ����̳�
=============================
.
write;

# ����������ļ�
if (open(MYFILE, ">tmp")) {
$~ = MYFORMAT;
write MYFILE;

format MYFILE = 
=============================
	������ļ���
=============================
.
close MYFILE;
}

# ʹ��ָ����ʽ��ӡ��Ĭ���ļ���
if (open(MYFILE, ">>tmp")) {
select(MYFILE);	#ʹ��Ĭ���ļ������Ĵ�ӡ�����MYFILE��
$~ = "OTHER";
write; #Ĭ���ļ���������ӡ��selectָ�����ļ��У���ʹ��$~ָ���ĸ�ʽOTHER

format OTHER = 
=============================
	ʹ�ö���ĸ�ʽ������ļ���
=============================
.
close MYFILE;
}
