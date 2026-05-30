[update-readmes]   Mode: rewrite — migrating to template structure...
# pkg-kde-tools

[![Built with Ona](https://ona.com/build-with-ona.svg)](https://app.ona.com/#https://github.com/Interested-Deving-1896/pkg-kde-tools)

<!-- AI:start:what-it-does -->
This project provides a set of tools and utilities to assist in packaging KDE software for Debian-based distributions. It addresses tasks such as generating symbol files, managing dependencies, and handling build logs, streamlining the packaging process for maintainers and developers working with KDE applications. It is primarily used by developers and maintainers of KDE packages in environments like Debian and KDE Neon.
<!-- AI:end:what-it-does -->

## Architecture

<!-- AI:start:architecture -->
The project consists of several components designed to facilitate the packaging and maintenance of KDE software. It is primarily implemented in Perl and uses CMake for build configuration. The key components include:

- **Perl Scripts**: Located in the repository root, these scripts handle tasks like generating symbols files, managing dependencies, and updating copyright information.
- **CMake Configuration**: The `CMakeLists.txt` file defines build options, dependencies (e.g., Perl and `pod2man`), and installation paths for binaries, libraries, and documentation.
- **Data and Templates**: The `cmake`, `makefiles`, and `qt-kde-team` directories contain reusable data and templates for KDE packaging workflows.
- **Manual Pages**: Generated from POD files using the `install_pod_manpages` function in the CMake configuration.

The directory structure is as follows:

```plaintext
.
├── CMakeLists.txt
├── README.md
├── cmake/
├── datalib/
├── debian/
├── makefiles/
├── man1/
├── perllib/
├── qt-kde-team/
├── dh_movelibkdeinit
├── dh_qmlcdeps
├── dh_sameversiondep
├── dh_sodeps
├── perl-profiler.pl
├── pkgkde-debs2symbols
├── pkgkde-gensymbols
├── pkgkde-getbuildlogs
├── pkgkde-git
├── pkgkde-mark-qt5-private-symbols
├── pkgkde-override-sc-dev-latest
├── pkgkde-symbolshelper
├── pkgkde-update-qt-copyright
├── pkgkde-vcs
└── run-local
```
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

- **test.yml**: Executes unit tests for Perl scripts and CMake configurations. Runs on `push` and `pull_request` events. No secrets required.

- **release.yml**: Creates a release package when a tag is pushed. Includes building, packaging, and uploading artifacts. Requires the `GITHUB_TOKEN` secret for authentication.

- **lint.yml**: Checks code style for Perl scripts and CMake files. Runs on `push` and `pull_request` events. No secrets required.
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
