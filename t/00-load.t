#!/usr/bin/env perl

use strict;
use warnings;

use Test::More tests => 4;

BEGIN {
    use_ok('Carp');
    use_ok('POE::Component::IRC::Plugin::BasePoCoWrap');
    use_ok('POE::Component::WebService::Validator::HTML::W3C');
	use_ok( 'POE::Component::IRC::Plugin::Validator::HTML' );
}

diag( "Testing POE::Component::IRC::Plugin::Validator::HTML $POE::Component::IRC::Plugin::Validator::HTML::VERSION, Perl $], $^X" );
