use Module::Build;

use strict;

my $build = Module::Build->new(
    module_name => 'CGI::Application::Server',
    license => 'perl',
    requires => {
        'Scalar::Util'  => '1.18',
        'Carp'          => '0.01',
        'HTTP::Request' => '0',
        'HTTP::Status'  => '0',
        'CGI::Application'             => '4.21',
        'HTTP::Server::Simple'         => '0.18',
        'HTTP::Server::Simple::Static' => '0.02',
    },
    optional => {
    },
    build_requires => {
        'Test::More'                 => '0.47',
        'Test::Exception'            => '0.21',
        'Test::HTTP::Server::Simple' => '0.02',
        'Test::WWW::Mechanize'       => '1.08',
        'CGI::Application::Plugin::Redirect' => '0',
    },
    recursive_test_files => 1,
    add_to_cleanup => [
        'META.yml', '*.bak', '*.gz',
    ],
);

$build->create_build_script;

