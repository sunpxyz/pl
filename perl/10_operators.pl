=start
	�����
	10_operators.pl
	2019/3/7
=cut

use constant true => 1;
use constant TRUE => 1;
use constant false => 0;
use constant FALSE => 0;

# ����
$a = 3;
$b = 4;
$c = $a ** $b;
print "\$c = $c\n";

# ����������Ƿ����
$c = $a <=> $b;
print "\$c = $c\n";

# �ַ����Ƚ�
# ltС�ڣ�gt���ڣ�leС�ڵ��ڣ�ge���ڵ��ڣ�eq���ڣ�ne�����ڣ�cmp�Ƚ�

# �߼������
# and��&&��or��||��not
$a = true;
$b = false;
$c = ($a and $b);
print "\$a and \$b = $c\n";

# �������㣬q{}Ϊ�ַ�����ӵ����ţ�qq{}Ϊ�ַ������˫���ţ�qx{}Ϊ�ַ�����ӷ�����
$a = 10;
$b = q{a = $a};
print "q{a = \$a} = $b\n";
$b = qq{a = $a};
print "q{a = \$a} = $b\n";
$t = qx{date};
print "qx{a = \$a} = $t\n";

# ���������
# ��ţ�.���������������ַ���
# x����������ַ����ظ��Ĵ��������磺('-' x 3)���---��
