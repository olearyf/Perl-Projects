#from the Little Black Book of Perl Core Language by Steven Holzner

use strict;
my $count = 0;
my $statement = "";
local $SIG{__WARN__} = sub {};

while(<>){

	chomp;
	while(/{|\(|\[/g) {$count++};
	while(/}|\)|\]/g) {$count--};

	$statement .= $_;

	if(!$count){
		eval $statement;
		if($@) {print "Syntax Error.\n"};
		$statement = "";
		$count = 0
	}
}