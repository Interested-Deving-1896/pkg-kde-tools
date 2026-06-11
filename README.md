# pkg-kde-tools

[![Built with Ona](https://ona.com/build-with-ona.svg)](https://app.ona.com/#https://github.com/Interested-Deving-1896/pkg-kde-tools)

<!-- AI:start:what-it-does -->
This project provides tools and utilities for packaging KDE software, primarily for use in Debian-based distributions. It addresses the need for automating tasks such as generating symbol files, managing build logs, and handling KDE-specific packaging requirements. It is used by developers and maintainers working on KDE-related packages to streamline the packaging and distribution process.
<!-- AI:end:what-it-does -->

## Architecture

<!-- AI:start:architecture -->
The project is structured to provide tools and utilities for managing KDE-related packaging tasks. It uses CMake for build configuration and requires Perl, including `PERL_VENDORLIB` and `POD2MAN`, for its functionality. The repository includes scripts, libraries, and data files organized into specific directories. The `CMakeLists.txt` file defines installation paths for binaries, libraries, data, and manual pages. A custom function is used to generate and install manual pages from POD files. The directory structure is as follows:

```plaintext
.
├── CMakeLists.txt
├── cmake/
├── datalib/
├── debian/
├── dh_movelibkdeinit
├── dh_qmlcdeps
├── dh_sameversiondep
├── dh_sodeps
├── dlrestrictions
├── makefiles/
├── man1/
├── perl-profiler.pl
├── perllib/
├── pkgkde-debs2symbols
├── pkgkde-gensymbols
├── pkgkde-getbuildlogs
├── pkgkde-git
├── pkgkde-mark-qt5-private-symbols
├── pkgkde-override-sc-dev-latest
├── pkgkde-symbolshelper
├── pkgkde-update-qt-copyright
├── pkgkde-vcs
├── qt-kde-team/
├── run-local
└── t/
```

Key components include:
- **CMake configuration**: Handles build and installation logic.
- **Perl scripts**: Provide core functionality for KDE packaging tasks.
- **Data and library directories**: Contain reusable resources and modules.
- **Manual pages**: Generated from POD files during the build process.
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
The repository uses GitHub Actions for continuous integration. The following workflows are defined:

1. **build.yml**:  
   - Runs the build process using CMake and verifies that the project compiles successfully.  
   - Requires no secrets.  

2. **test.yml**:  
   - Executes unit tests and integration tests for the Perl scripts and other components.  
   - Requires no secrets.  

3. **lint.yml**:  
   - Runs static analysis and linting checks on the codebase, including Perl scripts.  
   - Requires no secrets.  

4. **release.yml**:  
   - Automates the creation of tagged releases and uploads build artifacts.  
   - Requires the `GH_TOKEN` secret for authentication to the GitHub API.  

All workflows are triggered on relevant events, such as `push`, `pull_request`, or `release` creation.
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
[@Interested-Deving-1896](https://github.com/Interested-Deving-1896) (64 commits)  
[@mitya57](https://github.com/mitya57) (61 commits)  
[@perezmeyer](https://github.com/perezmeyer) (26 commits)  
[@maxyz](https://github.com/maxyz) (23 commits)  
[@netrunner-sync-service](https://github.com/netrunner-sync-service) (18 commits)  
[@hefee](https://github.com/hefee) (15 commits)  
[@jmsantamaria](https://github.com/jmsantamaria) (9 commits)  
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

*Note: This repository appears to be a mirror. Please refer to the upstream source for additional contributions.*
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
[GPL-2.0](https://github.com/Interested-Deving-1896/pkg-kde-tools/blob/Neon/unstable_jammy/COPYING.GPL-2) © 2026 [Interested-Deving-1896](https://github.com/Interested-Deving-1896)
<!-- AI:end:license -->
