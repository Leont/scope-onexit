package Scope::OnExit;

use strict;
use warnings;
use Exporter 5.57 'import';
use XSLoader;

XSLoader::load(__PACKAGE__, __PACKAGE__->VERSION);

##no critic ProhibitAutomaticExportation
our @EXPORT = qw/on_scope_exit/;

1;    # End of Scope::OnExit

#ABSTRACT: Running code on scope exit

=head1 SYNOPSIS

Execute code on scope exit

    use Scope::OnExit;

	{
	my $var = foo();
	on_scope_exit { do_something($var) };
	something_else();
	} # scope exit, do_something($var) is run now.

=func on_scope_exit { block }

This will make the block run at scope exit. 
