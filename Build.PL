use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name       => 'Github::Testers',
    license           => 'perl',
    dist_author       => 'Ivan Wills <ivan.wills@gmail.com>',
    dist_version_from => 'lib/Github/Testers.pm',
    requires          => {
        'perl'                   => 5.008,
        'CHI'                    => '0.58',
        'Dancer'                 => '1.3132',
        'HTTP::Tiny::Mech'       => '1.001001',
        'MetaCPAN::Client'       => '1.008000',
        'PAUSE::Packages'        => '0.10',
        'Plack::Runner'          => 0,
        'SQL::Translator'        => '0.11018',
        'WWW::Mechanize::Cached' => '1.44',
        'version'                => '0.9902',
    },
    build_requires => {
        'Dancer::Test'     => '1.3132',
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
