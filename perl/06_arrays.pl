=start
	����
	06_arrays.pl
	2019/3/6
=cut

# ��������
@array1 = (1, 2, "hello");
@array2 = qw/1 2 3/;
print "\@array1 = @array1\n";
print "\@array2 = @array2\n";

# �������к�
@var_num = (1..10);
@var_alp = ('a'..'z');
print "\@var_num = @var_num\n";
print "\@var_alp = @var_alp\n";

# �����С
@array = (1, 2, 3);
$array[50] = 4;
$size = @array;
print "�����С��$size\n";
print "���������$#array\n";

# ��Ӻ�ɾ������Ԫ��
@site = ("google", "facebook", "microsoft");
print "\@site = @site\n";
push(@site, "baidu");		#������β��׷��Ԫ��
print "\@site = @site\n";
unshift(@site, "huawei");	#�������ײ�׷��Ԫ��
print "\@site = @site\n";
pop(@site);					#ɾ������β��Ԫ��
print "\@site = @site\n";
shift(@site);				#�Ƴ������ײ�Ԫ��
print "\@site = @site\n";

# �и�����
@alpha0 = ('A'..'Z');
@alpha1 = @alpha0[0,1,2];
@alpha2 = @alpha0[0..2];
print "\@alpha1 = @alpha1\n";
print "\@alpha2 = @alpha2\n";

#�滻����Ԫ��
@nums = (0..9);
print "\@nums = @nums\n";
splice(@nums, 5, 5, (11..15));
print "\@nums = @nums\n";

# ���ַ���ת��Ϊ����
$var_str = "A-B-C";
@var_arr = split('-', $var_str);
print "\$var_arr[1]: $var_arr[1]\n";

# ������ת��Ϊ�ַ���
@array = (1..5);
$varst = join('*', @array);
print "\$varst: $varst\n";

# ��������
@nums = (9, 4, 6, 7, 3, 5);
@rest = sort(@nums);
print "\@rest = @rest\n";

# �������$[
@sites = qw(ms fc qa);
$[ = 1;
print "\@sites[1]: $sites[1]\n";

# �ϲ�����
@nums = (1, 3, (4, 5, 6));
print "numbers = @nums\n";
@odd = (1, 3, 5);
@even = (2, 4, 6);
@nums = (@odd, @even);
print "numbers = @nums\n";

