=start
	��ϣ
	07_hashes.pl
	2019/3/6
=cut

# ������ϣ
%data1 = ('google', 'google.com', 'facebook', 'facebook.com');
%data2 = ('google'=>'google.com', 'facebook'=>'facebook.com');
%data3 = (-google=>'google.com', -facebook=>'facebook.com');
$data4{'google'} = 'google.com';
$data4{'facebook'} = 'facebook.com';

# ���ʹ�ϣԪ��
print "data1{'google'}: $data1{'google'}\n";
print "data2{'google'}: $data2{'google'}\n";
print "data3{'google'}: $data3{-google}\n";
print "data4{'google'}: $data4{'google'}\n";

# ��ȡ��ϣֵ
%data = (-taobao=>45, -google=>30, -runoob=>40);
@array = @data{-taobao, -google};
print "\@array: @array\n";

# ��ȡ��ϣ��key��value
%data = ('google'=>'google.com', 'facebook'=>'facebook.com');
@dks = keys %data;
print "\@dks: @dks\n";
@dvs = values %data;
print "\@dvs: @dvs\n";

# ���Ԫ���Ƿ����
%data = ('google'=>'google.com', 'facebook'=>'facebook.com');
if (exists($data{'facebook'})) {
	print "$data{'facebook'}\n";
} else {
	print "no exists!\n";
}

# ��ӻ�ɾ��Ԫ��
%data = ('google'=>'google.com', 'facebook'=>'facebook.com');
$data{'baidu'} = 'baidu.com';
$size = keys %data;
print "\$size = $size\n";
delete $data{'baidu'};
$size = keys %data;
print "\$size = $size\n";
