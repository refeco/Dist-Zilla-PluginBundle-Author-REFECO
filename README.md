# NAME

Dist::Zilla::PluginBundle::Author::REFECO - REFECO dists defaults

# VERSION

version 0.003

# OVERVIEW

This is the default Dist::Zilla release configuration for REFECO

Reproducible by the following dist.ini config:

```
[@Filter]
-bundle = @Basic
-remove = GatherDir
-remove = PruneCruft

[GatherDir]
exclude_filename = Makefile.PL
exclude_filename = LICENSE
exclude_filename = cpanfile
exclude_filename = INSTALL
include_dotfiles = 1

[PruneCruft]
exclude = .perlcriticrc
exclude = .perltidyrc

[CopyFilesFromBuild]
copy = Makefile.PL
copy = LICENSE
copy = cpanfile
copy = INSTALL

[OurPkgVersion]
[Test::Version]

[Authority]
authority = cpan:REFECO
locate_comment = 1

[InstallGuide]
[PodWeaver]
[PerlTidy]

[ReadmeAnyFromPod / ReadmePodInRoot]
type = gfm
filename = README.md
location = root
phase = build

[ReadmeAnyFromPod]
type = text
filename = README
location = build

[NextRelease]
[CPANFile]
[MetaJSON]
[GithubMeta]
[Prereqs::AuthorDeps]
[Test::Compile]
[Test::CheckDeps]
[Test::Portability]
[Test::Legal]
[Test::Perl::Critic]
[Test::DistManifest]
[PodSyntaxTests]
[MojibakeTests]
[MetaTests]
```

# AUTHOR

Reginaldo Costa <refeco@cpan.org>

# COPYRIGHT AND LICENSE

This software is Copyright (c) 2023 by REFECO.

This is free software, licensed under:

```
The MIT (X11) License
```
