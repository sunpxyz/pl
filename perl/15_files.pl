=start
	�ļ�����
	15_files.pl
	2019/3/12
=cut

# open������ֻ��<
open(DATA, "<tmp") or die "�޷����ļ���$!";
while (<DATA>) {
	print "$_";
}

# open��
# <ֻд
# +<д����ɾ��ԭ�ļ�
# +>д����ɾ��ԭ�ļ�
# +>>����β��׷��д

# sysopen����
# O_RDWR, O_RDONLY, O_WRONLY, O_CREAT, O_APPEND, O_TRUNC, O_EXCL, O_NONBLOCK

# close����
close(DATA) || die "�޷��ر��ļ�";

#$name = <STDIN>;
#print "$name\n";

open(DATA, "<tmp") or die "�޷�������";
@lines = <DATA>;
print @lines;
close(DATA);

# �ļ�������
rename ($file_name_1, $file_name_2);

# ɾ���ļ�
unlink ($file_name);
