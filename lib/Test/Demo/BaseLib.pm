package Test::Demo::BaseLib;

# 注意！若要使用下面的模块需要用类似 cpanm Test::Base 这种方式来安装。
use Test::Base -Base;
use File::Temp qw( tempfile );     # 创建临时文件的模块
use IPC::Run ();                   # 此模块可以很好地执行我们的 shell 指令
use Data::Dumper;

# 导出本文件内的 run_test 函数，若没有此行代码 main.t 将无法使用该函数。
our @EXPORT = qw(
    run_test
);

sub run_test(){
    for my $block (Test::Base::blocks()) {
        run_block($block);
    } 
}

sub run_block($) {

    my $block = shift;
    
    my $name = $block->name;
    
    my $code= $block->code;
	    
    my $verify= $block->verify;

    is $verify, $code, "$name - stdout eq okay";  # 判断 is 函数的第一个和第二个参数是否一致
}

1;

__END__

NONE