#prints out an infinite list of prime numbers
$prime = 2;
$count = 0;
$is_prime = true;
$true = true;
while ( 1 eq 1){
	$is_prime = true;
	$i = $prime-1;
	for (my $loop_index=$i; $loop_index >= 2; $loop_index--) {
		if($prime % $loop_index == 0){
			$is_prime = false;
		}
	}
	if ( $is_prime eq $true ){
		print $prime;
		print "\n";
	}
	$prime++;
}