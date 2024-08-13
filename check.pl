#!/bin/sh

set -ex

nohup diff -urN cn ja
mv nohup.out 1.patch
user@localhost /s/1/Compressed> cat check.pl
#!/usr/bin/perl
use strict;
use warnings;

my $patch_file = '1.patch';  # 替换为你的补丁文件路径

open my $fh, '<', $patch_file or die "无法打开文件 $patch_file: $!";

while (my $line = <$fh>) {
    if ($line =~ m|^diff -urNa ja/(.+) cn/\1|) {
        print "$1\n";
    }
}

close $fh;
