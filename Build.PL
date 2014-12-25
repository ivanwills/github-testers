use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name       => 'Github::Testers',
    license           => 'perl',
    dist_author       => 'Ivan Wills <ivan.wills@gmail.com>',
    dist_version_from => 'lib/Github/Testers.pm',
    requires          => {
        'perl'             => 5.008,
    },
    build_requires => {
        'Test::More'       => 0,
        'Test::NoWarnings' => 0,
    },
    add_to_cleanup     => [ 'Github-Testers-*' ],
    create_makefile_pl => 'traditional',
    create_license     => 1,
    meta_merge => {
        resources => {
            repository => 'git://github.com/ivanwills/Github-Testers.git',
            bugtracker => 'http://rt.cpan.org/NoAuth/Bugs.html?Dist=Github::Testers',
        },
    },
);

$builder->create_build_script();