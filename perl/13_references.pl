=start
	ʱ������
	13_references.pl
	2019/3/8
=cut

# �������ã��ڱ�����ǰ��\
$foo = 10;
$sref = \$foo;	# ������������
$aref = [1, "foo", undef, 13];	# ������������
$href = {APR => 4, AUG => 8};	# ������ϣ����
$fref = sub { print "foo\n"; };	# �����ӳ�������

# ȡ�����ã�������ǰ��$��@��%
$var = 10;
$r = \$var;
print "type of r: ", ref($r), "\n";
print "\$var: ", $$r, "\n";
@var = (1..5);
$r = \@var;
print "type of r: ", ref($r), "\n";
print "\@var: ", @$r, "\n";
%var = ('a', 10, 'b', 20);
$r = \%var;
print "type of r: ", ref($r), "\n";
print "\$var: ", %$r, "\n";

# ���ú�����\&
sub PrintHash{
	my (%hash) = @_;
	foreach $item (%hash) {
		print "elem: $item\n";
	}
}
%var = ('fc', 10, 'ms', 20);
$cref = \&PrintHash;
&$cref(%var);
