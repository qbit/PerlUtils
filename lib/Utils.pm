package Utils;

use strict;
use warnings;

sub new { 
	my ( $class ) = @_;
	my $self = {};
	bless( $self, $class )
	return $self;
}

sub pbar {
	my ( $self, $got, $total, $width, $char ) = @_;
	$width ||= 25; 
	$char ||= '=';
	my $num_width = length $total;
	sprintf "|%-${width}s| %${num_width}s of %s (%.2f%%)\r",
		$char x (($width-1) * $got/$total). ">", $got, $total,
		100*$got/+$total;
}

sub strim {
	my ( $self, $str ) = @_;
	$str =~ tr/\n//g;
	$str =~ tr/\s+//g;
	$str =~ tr/^\s//g;
	$str =~ tr/\s$//g;
}

1;

__END__
=head1 NAME

Utils - Random perl utilities 

=head1 SYNOPSIS

  use Utils;
  print Utils::pbar( $count, $total, 25, '=' );
  $str = Utils::strim( $str );

=head1 DESCRIPTION

Random utilities I infrequently use :D

=head1 AUTHOR

Aaron Bieber, E<lt>qbit@deftly.net<gt>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2011 by Aaron Bieber

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.10.1 or,
at your option, any later version of Perl 5 you may have available.

=cut
