=start
	������
	17_error_handling.pl
	2019/3/13
=cut

# warn��������һ��������Ϣ�������STDERR
chdir("/etc") or warn "�޷��л���Ŀ¼";

# die����ִ���˳�
chdir("/etc") or die "�޷��л���Ŀ¼";
