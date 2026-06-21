# pkg-kde-tools

[![Built with Ona](https://ona.com/build-with-ona.svg)](https://app.ona.com/#https://github.com/Interested-Deving-1896/pkg-kde-tools)

<!-- AI:start:what-it-does -->
This project provides a set of tools and utilities to assist in packaging KDE software, primarily for Debian-based systems. It addresses tasks such as generating symbol files, managing build logs, and handling KDE-specific packaging requirements. It is used by developers and maintainers working on KDE software packaging workflows.
<!-- AI:end:what-it-does -->

## Architecture

<!-- AI:start:architecture -->
The project consists of tools and scripts for managing KDE-related packaging tasks. It is primarily written in Perl and uses CMake for build configuration. The architecture includes scripts, libraries, and data files organized into specific directories. Key components include:

- **CMakeLists.txt**: Configures the build system, checks for required dependencies (e.g., Perl, pod2man), and sets installation paths for binaries, libraries, and manual pages.
- **Perl Scripts**: Located at the root level, these scripts handle various packaging tasks such as generating symbols, managing dependencies, and updating copyright information.
- **Data and Libraries**: Found in directories like `cmake`, `makefiles`, `qt-kde-team`, and `datalib`, these provide reusable components and configurations for KDE packaging.
- **Man Pages**: Generated from POD files using the `pod2man` tool and installed into the `share/man` directory.

Directory structure:
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
└── pkgkde-*
```
Components interact through the build system, with CMake orchestrating the installation of scripts, libraries, and documentation.
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
   - Validates the build process using CMake.  
   - Runs on `push` and `pull_request` events.  
   - Requires no secrets.

2. **`test.yml`**:  
   - Executes the test suite unless tests are disabled via the `DISABLE_TESTS` option in CMake.  
   - Runs on `push` and `pull_request` events.  
   - Requires no secrets.

3. **`lint.yml`**:  
   - Runs linting checks on Perl scripts and CMake files.  
   - Runs on `push` and `pull_request` events.  
   - Requires no secrets.

4. **`release.yml`**:  
   - Builds and packages the project for release.  
   - Triggered manually via the "workflow_dispatch" event.  
   - Requires the `RELEASE_TOKEN` secret for publishing artifacts.
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
[@Interested-Deving-1896](https://github.com/Interested-Deving-1896) (80 commits)  
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

*Note: This repository appears to be a mirror. Please refer to the upstream source for additional details.*
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
