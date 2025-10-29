# NAME

Dist::Zilla::PluginBundle::Author::REFECO - REFECO dist defaults

# VERSION

version 0.007

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
include_dotfiles = 1

[PruneCruft]
except = .perlcriticrc
except = .perltidyrc

[CopyFilesFromBuild]
copy = Makefile.PL
copy = LICENSE
copy = cpanfile

[OurPkgVersion]
[Test::Version]

[Authority]
authority = cpan:REFECO
locate_comment = 1

[PodWeaver]
[PerlTidy]
perltidyrc = .perltidyrc

[ReadmeAnyFromPod]
type = gfm
filename = README.md
location = root
phase = build

[NextRelease]
[CPANFile]
[MetaJSON]

[GithubMeta]
issues = 1

[MetaProvides::Package]
[Test::Compile]
[Test::CheckDeps]

[Test::Perl::Critic]
critic_config = .perlcriticrc

[PodSyntaxTests]
[MetaTests]

[TestRelease]
[ConfirmRelease]
```

# AUTHOR

Reginaldo Costa <refeco@cpan.org>

# COPYRIGHT AND LICENSE

This software is Copyright (c) 2023 by REFECO.

This is free software, licensed under:

```
The MIT (X11) License
```
