=start
	����
	04_variables.pl
	2019/3/6
=cut

# use strict�����������б�����Ҫǿ����������

# ��������
$age = 25;
$name = "runoob";
$salary = 145.67;
print "Age = $age\n";
print "name = $name\n";
print "salary = $salary\n";

# �������
@ages = (25, 30, 40);
@names = ("google", "runoob", "taobao");
print "\$ages[1] = $ages[1]\n";
print "\$names[1] = $names[1]\n";

# ��ϣ����
%data = ('google', 45, 'taobao', 40);
print "\$data{'google'} = $data{'google'}\n";

# ����������
@names = ("google", "runoob", "taobao");
@copy = @names;		# ��������
$size = @names;		# ���鸳ֵ����������������Ԫ�ظ���
print "\@copy: @copy\n";
print "\$size: $size\n";
