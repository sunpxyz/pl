=start
	Ŀ¼����
	16_directories.pl
	2019/3/12
=cut

# ��ʾĿ¼�µ������ļ�
$dir1 = "*";
@files1 = glob($dir1);
foreach (@files1) {
	print $_ . "\n";
}

# ��ʾĿ¼��������.pl��β���ļ�
$dir2 = "*.pl";
@files2 = glob($dir2);
foreach (@files2) {
	print $_ . "\n";
}
	
# �г�Ŀ¼�µ������ļ�
opendir (DIR, '..') or die "�޷���Ŀ¼��$��";
while ($file = readdir DIR) {
	print "$file\n";
}
closedir DIR;

# ������Ŀ¼
$dir = "tmpdir";
mkdir ($dir) or die "�޷�����$dirĿ¼��$!";
print "Ŀ¼�����ɹ�\n";

# ɾ��Ŀ¼
$dir = ".\\tmpdir";
rmdir ($dir) or die "�޷�ɾ��$dirĿ¼��$!";
print "Ŀ¼ɾ���ɹ�\n";

# �л�Ŀ¼
$dir = "..\\src";
chdir ($dir) or die "�޷��л�Ŀ¼��$dir��$!";
print "��ǰĿ¼Ϊ$dir\n";
