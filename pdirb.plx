#!/usr/bin/env perl

use v5.34;
use HTTP::Tiny;
use Getopt::Long;
use Term::ANSIColor qw(:constants);

my $usage = "usage: $0 -w [wordlist] -u [url]\n";
GetOptions (
    'url=s' => \my $target,
    'wordlist=s' => \my $wordlist,
    'help' => sub {print $usage and exit 0},
) or die $usage;

my $logo =
"
     ▄▄▄▄▄▄▄ ▄▄▄▄▄▄  ▄▄▄ ▄▄▄▄▄▄   ▄▄▄▄▄▄▄ 
    █       █      ██   █   ▄  █ █  ▄    █
    █    ▄  █  ▄    █   █  █ █ █ █ █▄█   █
    █   █▄█ █ █ █   █   █   █▄▄█▄█       █
    █    ▄▄▄█ █▄█   █   █    ▄▄  █  ▄   █ 
    █   █   █       █   █   █  █ █ █▄█   █
    █▄▄▄█   █▄▄▄▄▄▄██▄▄▄█▄▄▄█  █▄█▄▄▄▄▄▄▄█

";

print BLUE, $logo, RESET;
print BLUE, "[\$] website url  : ", RESET;
defined($target) ? print "$target\n" : chomp($target = <>);
print BLUE, "[\$] wordlist path: ", RESET;
defined($wordlist) ? print "$wordlist\n" : chomp($wordlist = <>);
print "\n";

open my $WORDLIST, '<', $wordlist
    or die RED, "[!] $!\n";

while(my $line = <$WORDLIST>) {
    chomp $line;
    # add '/' if it's a directory
    $line .= $line =~ /\.[^\.]*$/ ? '' : '/' ;
    my $res = HTTP::Tiny->new->get("$target/$line");
    if($res->{success}) {
        print GREEN, "[✔] $target/$line\n", RESET;
    } else {
        print RED, "[x] $target/$line\n", RESET;
    }
}
