package Dist::Zilla::PluginBundle::Author::REFECO;
# ABSTRACT: REFECO dists defaults

use strict;
use warnings;

# AUTHORITY
# VERSION

use Moose 2.2206;
use namespace::clean;
use Dist::Zilla 6.030;

with 'Dist::Zilla::Role::PluginBundle::Easy';

sub configure {

    my $self = shift;

    my @copy = qw(Makefile.PL LICENSE MANIFEST cpanfile);

    $self->add_bundle(
        'Filter' => {
            '-bundle' => '@Basic',
            '-remove' => ['GatherDir', 'PruneCruft']});

    $self->add_plugins(    #
        [
            'GatherDir' => {
                exclude_filename => [@copy],
            }
        ],
        ['PruneCruft'         => {except => [qw(.perlcriticrc .perltidyrc)]}],
        ['CopyFilesFromBuild' => {copy   => [@copy]}],
        'OurPkgVersion',
        'Test::Version',
        [
            'Authority' => {
                authority      => 'cpan:REFECO',
                locate_comment => 1
            }
        ],
        'PerlTidy',
        [
            'ReadmeAnyFromPod' => 'Git' => {
                filename => 'README.md',
                location => 'root',
                type     => 'markdown',
                phase    => 'build'
            }
        ],
        [
            'ReadmeAnyFromPod' => 'Dist' => {
                filename => 'README',
                location => 'build',
                type     => 'text'
            }
        ],
        'NextRelease',
        'CPANFile',
        'MetaJSON',
        'GithubMeta',
        'Prereqs::AuthorDeps',
        'Test::Compile',
        'Test::CheckDeps',
        'Test::Portability',
        'Test::Legal',
        'Test::Perl::Critic',
        'Test::DistManifest',
        'PodSyntaxTests',
        'MojibakeTests',
        'MetaTests'
    );
}

1;
