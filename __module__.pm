package Rex::Gentoo::NFS;

use Rex -base;

task 'setup', sub {

  pkg "net-fs/nfs-utils", ensure => 'present';

  my $virtual_root = param_lookup "virtual_root", ();
  file $virtual_root,
          ensure => "directory",
          owner  => "root",
          group  => "root";



};

1;

=pod

=head1 NAME

$::module_name - {{ SHORT DESCRIPTION }}

=head1 DESCRIPTION

{{ LONG DESCRIPTION }}

=head1 USAGE

{{ USAGE DESCRIPTION }}

 include qw/Rex::Gentoo::Install/;

 task yourtask => sub {
    Rex::Gentoo::Install::example();
 };

=head1 TASKS

=over 4

=item example

This is an example Task. This task just output's the uptime of the system.

=back

=cut
