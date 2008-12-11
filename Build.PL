use Module::Build;
my $build = Module::Build->new(
	# look up Module::Build::API for the info!
	'dynamic_config'	=> 0,
	'module_name'		=> 'POE::Component::Server::SOAP',
	'license'		=> 'perl',

	'dist_abstract'		=> 'An easy to use SOAP/1.1 daemon for POE-enabled programs',

	'create_packlist'	=> 1,
	'create_makefile_pl'	=> 'traditional',
	'create_readme'		=> 1,

	'test_files'		=> 't/*.t',

	'add_to_cleanup'	=> [ 'META.yml', 'Makefile.PL', 'README' ],	# automatically generated

	'requires'		=> {
		# Networking
		'POE'					=> 0,
		'POE::Component::Server::SimpleHTTP'	=> '1.10',
		'SOAP::Lite'				=> '0.55',

		# Perl stuff
		'Carp'		=> 0,

		# Test stuff
		'Test::More'	=> 0,
	},

	'recommends'		=> {
		# boo!
	},

	# FIXME wishlist...
#	'test_requires'		=> {
#		# Test stuff
#		'Test::Compile'		=> 0,
#		'Test::Perl::Critic'	=> 0,
#		'Test::Dependencies'	=> 0,
#		'Test::Distribution'	=> 0,
#		'Test::Fixme'		=> 0,
#		'Test::HasVersion'	=> 0,
#		'Test::Kwalitee'	=> 0,
#		'Test::CheckManifest'	=> 0,
#		'Test::MinimumVersion'	=> 0,
#		'Test::Pod::Coverage'	=> 0,
#		'Test::Spelling'	=> 0,
#		'Test::Pod'		=> 0,
#		'Test::Prereq'		=> 0,
#		'Test::Strict'		=> 0,
#		'Test::UseAllModules'	=> 0,
#	},
);

# all done!
$build->create_build_script;
