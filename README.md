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
