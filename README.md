# pkg-kde-tools

[![Built with Ona](https://ona.com/build-with-ona.svg)](https://app.ona.com/#https://github.com/Interested-Deving-1896/pkg-kde-tools)

<!-- AI:start:what-it-does -->
This project provides a set of tools and scripts to assist in packaging KDE software for Debian-based distributions. It addresses the complexities of managing KDE-specific build processes, dependency handling, and symbol management. It is primarily used by developers and maintainers working on KDE packages within the Debian and related ecosystems.
<!-- AI:end:what-it-does -->

## Architecture

<!-- AI:start:architecture -->
The project consists of several key components organized to support KDE packaging tools. It uses CMake for build configuration and Perl for scripting. The architecture includes scripts, libraries, and data files for KDE-related packaging tasks. The `CMakeLists.txt` file configures installation paths for binaries, libraries, data, and manual pages. It also ensures dependencies like Perl and `pod2man` are available. The repository includes Perl scripts for various packaging utilities and CMake functions for generating and installing manual pages.

Directory structure:
```plaintext
.
├── CMakeLists.txt          # Build configuration
├── cmake/                  # CMake modules
├── datalib/                # Architecture-independent libraries
├── debian/                 # Debian packaging files
├── makefiles/              # Makefile templates
├── man1/                   # Manual pages
├── perllib/                # Perl libraries
├── qt-kde-team/            # KDE-specific data
├── scripts/                # Packaging and utility scripts
├── COPYING.*               # License files
├── README.md               # Project documentation
└── tests/                  # Test scripts and resources
```

Components interact through CMake configuration, Perl scripts, and shared libraries to automate and streamline KDE packaging workflows.
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

1. **`build.yml`**  
   - Ensures the project builds successfully using CMake.  
   - Runs on `ubuntu-latest`.  
   - Requires no secrets.

2. **`test.yml`**  
   - Executes unit tests unless disabled via the `DISABLE_TESTS` option in CMake.  
   - Runs on `ubuntu-latest`.  
   - Requires no secrets.

3. **`lint.yml`**  
   - Checks Perl scripts for syntax and style issues using `perl -c` and `perlcritic`.  
   - Runs on `ubuntu-latest`.  
   - Requires no secrets.

4. **`release.yml`**  
   - Builds and packages the project for release.  
   - Triggers on tag creation.  
   - Requires the `GITHUB_TOKEN` secret for publishing release artifacts.
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
[@modax](https://github.com/modax) - 464 commits  
[@Interested-Deving-1896](https://github.com/Interested-Deving-1896) - 91 commits  
[@mitya57](https://github.com/mitya57) - 61 commits  
[@perezmeyer](https://github.com/perezmeyer) - 26 commits  
[@maxyz](https://github.com/maxyz) - 23 commits  
[@netrunner-sync-service](https://github.com/netrunner-sync-service) - 18 commits  
[@hefee](https://github.com/hefee) - 15 commits  
[@jmsantamaria](https://github.com/jmsantamaria) - 9 commits  
[@OdyX](https://github.com/OdyX) - 4 commits  
[@tsimonq2](https://github.com/tsimonq2) - 4 commits  
[@svuorela](https://github.com/svuorela) - 4 commits  
[@debian-janitor](https://github.com/debian-janitor) - 3 commits  
[@delta-one](https://github.com/delta-one) - 3 commits  
[@ana](https://github.com/ana) - 2 commits  
[@detrout](https://github.com/detrout) - 2 commits  
[@norbusan](https://github.com/norbusan) - 2 commits  
[@aburch](https://github.com/aburch) - 1 commit  
[@helmutg](https://github.com/helmutg) - 1 commit  
[@jriddell](https://github.com/jriddell) - 1 commit  
[@legoktm](https://github.com/legoktm) - 1 commit  
[@shadeslayer](https://github.com/shadeslayer) - 1 commit  

This repository may be a mirror. Please refer to the upstream source for additional details.
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
