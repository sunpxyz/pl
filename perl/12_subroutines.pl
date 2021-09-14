=start
	12_subroutines.pl
	2019/3/8
=cut	

sub Hello{
	print "Hello, World\n";
}
Hello();

# ����
sub Average{
	$n = scalar(@_);
	$sum = 0;
	
	foreach $item (@_) {
		$sum += $item;	
	}
	$average = $sum / $n;
	
	print "���еĲ�����@_\n";
	print "��һ��������$_[0]\n";
	print "����ƽ��ֵ��$average\n";
}
Average(10, 20, 30);

# ������
sub PrintList {
	my @list = @_;
	print "�б�Ϊ��@list\n";
}
$a = 10;
@b = (1, 2, 3);
PrintList($a, @b);

# ����ϣ
sub PrintHash {
	my (%hash) = @_;
	
	foreach my $key (keys %hash) {
		my $value = $hash{$key};
		print "$key: $value\n";
	}
}
%hash = ('name'=>'sunpeng', 'age'=>18);
PrintHash(%hash);

# ����ֵ
sub add_a_b {
	# ��ʹ��return
	$_[0] + $_[1];
	
	#ʹ��return
#	return $_[0] + $_[1];
}
print add_a_b(1, 2) . "\n";

# Perl�еı���Ĭ����ȫ�ֵģ�my�ؼ�����ֲ�������local�ؼ��ֽ�ȫ�ֱ�����ʱ�ֲ���
$str = "Lowbee";
sub PrintStr{
	local $str;
	$str = "Newbee";
	PrintMe();
	print $str . "\n";
} 
sub PrintMe{
	print $str . "\n";
}
PrintStr();
print $str . "\n";

# ��̬����
use feature 'state';
sub PrintCount {
	state $count = 0;
	print "counter: $count\n";
	$count++;
}
for (1..5) {
	PrintCount();
}
