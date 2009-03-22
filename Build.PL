use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Scope::OnExit',
    license             => 'perl',
    dist_author         => 'Leon Timmermans <leont@cpan.org>',
    dist_version_from   => 'lib/Scope/OnExit.pm',
    build_requires => {
        'Test::More' => 0,
    },
    add_to_cleanup      => [ 'Scope-OnExit-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
