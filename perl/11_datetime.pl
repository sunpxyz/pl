=start
	ʱ������
	11_datetime.pl
	2019/3/8
=cut

# time()��localtime()��gmtime()

#@months = qw(һ�� ���� ���� ���� ���� ���� ���� ���� ���� ʮ�� ʮһ�� ʮ����);
#@days = qw(������ ����һ ���ڶ� ������ ������ ������ ������);

$datestr = localtime();
$gmdtstr = gmtime();
print "$datestr\n";
print "$gmdtstr\n";

# ��ʽ�����ں�ʱ��
($sec, $min, $hour, $mday, %mon, $year, $wday, $yday, $isdst) = localtime();
printf("%02d:%02d:%02d\n", $hour, $min, $sec);

# �¼�Ԫʱ��
$epoc = time();
print "��1970��1��1���ۼƵ�����Ϊ��$epoc\n";

# POSIX����strftime()
use POSIX qw(strftime);
$datestr = strftime "%Y-%m-%d %H:%M:%S", localtime;
printf("$datestr\n");