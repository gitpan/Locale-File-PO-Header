#!perl -T

use strict;
use warnings;

use English qw(-no_match_vars $EVAL_ERROR);
use Test::More;

eval 'use Test::Pod::Coverage 1.04';
plan skip_all => "Test::Pod::Coverage 1.04 required for testing POD coverage" if $EVAL_ERROR;
eval 'use Pod::Coverage::Moose';
plan skip_all => "Pod::Coverage::Moose required for testing POD coverage" if $EVAL_ERROR;

#all_pod_coverage_ok({ coverage_class => 'Pod::Coverage::Moose' });
my $trustparents = { coverage_class => 'Pod::Coverage::Moose' };
plan tests => 1;
pod_coverage_ok( 'Locale::File::PO::Header', $trustparents );