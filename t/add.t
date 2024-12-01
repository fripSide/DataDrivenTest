use strict;
use warnings;

use IPC::Run3;
use Test::Base;

plan tests => 1 * blocks();

system("bash -c 'cd bin && bash make.sh'");

run {
	my $block = shift;
	my $in = $block->input;
	my $out = $block->output;
	my $name = $block->name;

	my $cmd = "bin/test.exe $in";
	# print "cmd: $cmd\n";
	my ($stdout, $stderr);
	run3 $cmd, \undef, \$stdout, \$stderr;

	# 注意：$out带有换行  
	is $stdout, $out, "$name - stdout eq okay";
};


__DATA__

=== TEST 1: "1+5=6"
--- input
1 5

--- output
6




=== TEST 2: "21+5=6"
--- input
21 5

--- output
26


=== TEST 3: "6+5=11"
--- input
6 5

--- output
11
