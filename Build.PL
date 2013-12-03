use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'POE::Component::IRC::Plugin::Validator::HTML',
    license             => 'perl',
    dist_author         => 'Zoffix Znet <zoffix@cpan.org>',
    dist_version_from   => 'lib/POE/Component/IRC/Plugin/Validator/HTML.pm',
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'Carp'                                               => 1.04,
        'POE::Component::IRC::Plugin::BasePoCoWrap'          => 0.002,
        'POE::Component::WebService::Validator::HTML::W3C'   => 0.07,
        'perl' => '5.006',
    },
    configure_requires => { 'Module::Build' => 0 },
    add_to_cleanup      => [ 'POE-Component-IRC-Plugin-Validator-HTML-*' ],
    create_makefile_pl => 'traditional',
);
if ( $ENV{RELEASE_TESTING} ) {
    system('pod2text lib/POE/Component/IRC/Plugin/Validator/HTML.pm > README');
}

$builder->create_build_script();
