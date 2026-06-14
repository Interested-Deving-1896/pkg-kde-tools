# pkg-kde-tools

[![Built with Ona](https://ona.com/build-with-ona.svg)](https://app.ona.com/#https://github.com/Interested-Deving-1896/pkg-kde-tools)

<!-- AI:start:what-it-does -->
This project provides a set of tools and utilities to assist in packaging KDE software, particularly for Debian-based distributions. It addresses tasks such as generating and managing symbol files, handling Qt-specific packaging requirements, and automating common packaging workflows. It is primarily used by developers and maintainers working on KDE-related packages.
<!-- AI:end:what-it-does -->

## Architecture

<!-- AI:start:architecture -->
The project consists of tools and scripts for managing KDE-related packaging tasks, primarily written in Perl. It uses CMake for build configuration and requires Perl and `pod2man` for generating manual pages. The repository is organized into directories and files as follows:

```plaintext
.
├── CMakeLists.txt         # CMake build configuration
├── cmake/                 # CMake modules and configurations
├── datalib/               # Data and architecture-independent libraries
├── debian/                # Debian packaging files
├── makefiles/             # Makefile templates
├── man1/                  # Manual pages
├── perllib/               # Perl library modules
├── qt-kde-team/           # KDE-specific packaging tools
├── dh_*                   # Helper scripts for Debian packaging
├── pkgkde-*               # KDE packaging utilities
├── run-local/             # Local testing scripts
├── COPYING.*              # License files
├── README.md              # Project documentation
└── perl-profiler.pl       # Perl profiling script
```

Key components include:
- **CMake configuration**: Ensures required dependencies like Perl and `pod2man` are available.
- **Perl scripts**: Provide utilities for tasks such as symbol generation, dependency management, and build log retrieval.
- **CMake functions**: Automate tasks like building and installing manual pages from POD files.
- **Directories**: Organize CMake modules, makefiles, libraries, and KDE-specific tools for streamlined development and packaging.
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

1. **`build.yml`**:  
   - Validates the build process using CMake and ensures all dependencies (e.g., Perl, `pod2man`) are available.  
   - Runs on `push` and `pull_request` events.  

2. **`test.yml`**:  
   - Executes unit tests if not disabled via the `DISABLE_TESTS` option in CMake.  
   - Runs on `push` and `pull_request` events.  

3. **`lint.yml`**:  
   - Performs linting on Perl scripts and other source files to ensure code quality.  
   - Runs on `push` and `pull_request` events.  

### Required Secrets
- No secrets are required for the workflows in this repository.
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
