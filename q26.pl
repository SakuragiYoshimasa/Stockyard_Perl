#!/usr/bin/perl
use CGI;

# Can you crack me? :P
open(F,'cracked.txt');
my $t = <F>; # a line of F
chomp($t);
if ($t eq 'h@ck3d!') {
print 'FLAG_****************<br><br>';
}
unlink('cracked.txt');
####
open(F,substr($ENV{'PATH_INFO'},1));

my $cgi = new CGI;
$cgi->charset('utf-8');
while(<F>) {
chomp;
s/FLAG_\w+/FLAG_****************/g;
print $cgi->escapeHTML($_)."<br>\n";
}
