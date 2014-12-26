#!/usr/bin/perl

use strict;
use warnings;
use Test::More;
use Test::Warnings;

BEGIN {
    use_ok( 'Github::Testers' );
    use_ok( 'Github::Testers::Schema' );
    use_ok( 'Github::Testers::Schema::Author' );
    use_ok( 'Github::Testers::Schema::Repository' );
}

diag( "Testing Github::Testers $Github::Testers::VERSION, Perl $], $^X" );
done_testing();
