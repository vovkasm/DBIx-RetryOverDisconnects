use Module::Build;

my $build = Module::Build->new(
    module_name        => 'DBIx::RetryOverDisconnects',
    license            => 'perl',
    requires           => {
        DBI                => 1.44,
        'Exception::Class' => 1.23,
    },
    create_makefile_pl => 'passthrough',
    build_requires     => {
    },
    create_readme      => 1,
    test_files         => [ glob('t/*.t')],
);
$build->create_build_script;
