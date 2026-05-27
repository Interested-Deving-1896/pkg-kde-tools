[update-readmes]   Mode: rewrite — migrating to template structure...
# pkg-kde-tools

[![Built with Ona](https://ona.com/build-with-ona.svg)](https://app.ona.com/#https://github.com/Interested-Deving-1896/pkg-kde-tools)

<!-- AI:start:what-it-does -->
This project provides a set of tools and scripts to assist in packaging KDE software, primarily for Debian-based distributions. It addresses tasks such as managing build dependencies, generating symbol files, and handling KDE-specific packaging requirements. It is used by developers and maintainers working on KDE software packaging workflows.
<!-- AI:end:what-it-does -->

## Architecture

<!-- AI:start:architecture -->
The project is organized as a set of tools and scripts for managing KDE-related packaging tasks, primarily written in Perl. It uses CMake for build configuration and requires Perl and `pod2man` for building and generating manual pages. The key components include:

1. **CMake Configuration**: The `CMakeLists.txt` file defines build requirements, such as Perl libraries and `pod2man`, and sets up installation directories for binaries, libraries, data files, and manual pages.
2. **Perl Scripts**: A collection of Perl scripts located at the root level, such as `pkgkde-gensymbols` and `pkgkde-update-qt-copyright`, provide specific functionality for KDE packaging.
3. **Support Files**: Subdirectories like `cmake`, `makefiles`, and `qt-kde-team` contain reusable configurations and templates for KDE packaging tasks.
4. **Manual Pages**: The `install_pod_manpages` function in `CMakeLists.txt` generates and installs manual pages from POD documentation in the source files.

Directory structure:
```plaintext
.
├── CMakeLists.txt
├── cmake/
├── datalib/
├── debian/
├── makefiles/
├── man1/
├── perllib/
├── qt-kde-team/
├── perl-profiler.pl
├── pkgkde-*.pl
├── COPYING.GPL-2
├── COPYING.GPL-3
├── COPYING.LGPL-2.1
└── README.md
```
The `install` commands in `CMakeLists.txt` handle the deployment of scripts, libraries, and documentation to their respective directories.
<!-- AI:end:architecture -->

## Install

<!-- Add installation instructions here. This section is yours — the AI will not modify it. -->

```bash
git clone https://github.com/Interested-Deving-1896/pkg-kde-tools.git
cd pkg-kde-tools
```

## Usage

<!-- Add usage examples here. This section is yours — the AI will not modify it. -->

## Configuration

<!-- Document configuration options here. This section is yours — the AI will not modify it. -->

## CI

<!-- AI:start:ci -->
- **build.yml**: Runs on `push` and `pull_request` events. Builds the project using CMake and verifies Perl dependencies. No secrets required.

- **test.yml**: Executes unit tests for the project on `push` and `pull_request` events. Respects the `DISABLE_TESTS` CMake option. No secrets required.

- **release.yml**: Triggers on `release` creation. Builds the project and packages artifacts for distribution. Requires the `GH_TOKEN` secret for publishing release assets.

- **lint.yml**: Runs static analysis and linting checks on Perl scripts and CMake files. Triggers on `push` and `pull_request` events. No secrets required.
<!-- AI:end:ci -->

## Mirror chain

<!-- AI:start:mirror-chain -->
This repo is maintained in [`Interested-Deving-1896/pkg-kde-tools`](https://github.com/Interested-Deving-1896/pkg-kde-tools) and mirrored through:

```
Interested-Deving-1896/pkg-kde-tools  ──►  OpenOS-Project-OSP/pkg-kde-tools  ──►  OpenOS-Project-Ecosystem-OOC/pkg-kde-tools
```

Changes flow downstream automatically via the hourly mirror chain in
[`fork-sync-all`](https://github.com/Interested-Deving-1896/fork-sync-all).
Direct commits to OSP or OOC are detected and opened as PRs back to `Interested-Deving-1896`.
<!-- AI:end:mirror-chain -->

## Contributors

<!-- AI:start:contributors -->
[@modax](https://github.com/modax) (464 commits)  
[@mitya57](https://github.com/mitya57) (61 commits)  
[@perezmeyer](https://github.com/perezmeyer) (26 commits)  
[@maxyz](https://github.com/maxyz) (23 commits)  
[@netrunner-sync-service](https://github.com/netrunner-sync-service) (18 commits)  
[@hefee](https://github.com/hefee) (15 commits)  
[@jmsantamaria](https://github.com/jmsantamaria) (9 commits)  
[@Interested-Deving-1896](https://github.com/Interested-Deving-1896) (6 commits)  
[@OdyX](https://github.com/OdyX) (4 commits)  
[@tsimonq2](https://github.com/tsimonq2) (4 commits)  
[@svuorela](https://github.com/svuorela) (4 commits)  
[@debian-janitor](https://github.com/debian-janitor) (3 commits)  
[@delta-one](https://github.com/delta-one) (3 commits)  
[@ana](https://github.com/ana) (2 commits)  
[@detrout](https://github.com/detrout) (2 commits)  
[@norbusan](https://github.com/norbusan) (2 commits)  
[@aburch](https://github.com/aburch) (1 commit)  
[@helmutg](https://github.com/helmutg) (1 commit)  
[@jriddell](https://github.com/jriddell) (1 commit)  
[@legoktm](https://github.com/legoktm) (1 commit)  
[@shadeslayer](https://github.com/shadeslayer) (1 commit)  

This repository may be a mirror. Please check the upstream source for additional context.
<!-- AI:end:contributors -->

## Origins

<!-- AI:start:origins -->
_Original project — no upstream fork._
<!-- AI:end:origins -->

## Resources

<!-- AI:start:resources -->
_No additional resource files found._
<!-- AI:end:resources -->

## License

<!-- AI:start:license -->
<!-- License not detected — add a LICENSE file to this repo. -->
<!-- AI:end:license -->
