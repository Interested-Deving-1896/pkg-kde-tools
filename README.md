# pkg-kde-tools

[![Built with Ona](https://ona.com/build-with-ona.svg)](https://app.ona.com/#https://github.com/Interested-Deving-1896/pkg-kde-tools)

<!-- AI:start:what-it-does -->
This project provides a set of tools and scripts to assist with packaging KDE software, primarily for Debian-based distributions. It addresses the need for automating and standardizing tasks such as symbol file generation, dependency management, and build log analysis. It is used by developers and maintainers working on KDE-related packages to streamline the packaging process.
<!-- AI:end:what-it-does -->

## Architecture

<!-- AI:start:architecture -->
The project consists of tools and scripts for managing KDE-related packaging tasks. It is primarily written in Perl and uses CMake for build configuration. The architecture includes a set of Perl scripts, CMake modules, and auxiliary files organized into directories for specific purposes. Key components include:

- **Perl Scripts**: Located in the repository root, these scripts handle various packaging tasks such as generating symbols, managing dependencies, and updating copyright information.
- **CMake Configuration**: The `CMakeLists.txt` file defines build requirements, including Perl dependencies and installation paths for binaries, libraries, and manual pages.
- **Auxiliary Directories**:
  - `cmake`: Contains CMake modules for build configuration.
  - `makefiles`: Includes makefile templates for packaging tasks.
  - `qt-kde-team`: Contains KDE-specific packaging resources.
  - `datalib`: Holds architecture-independent library bundles.

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
└── pkgkde-*
```

CMake ensures required dependencies like `PerlLibs` and `pod2man` are available. It also provides functions for generating and installing manual pages from POD files.
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
   - Ensures required dependencies like Perl and `pod2man` are available.  
   - Runs on `push` and `pull_request` events.  
   - No secrets required.

2. **`test.yml`**:  
   - Executes tests unless explicitly disabled via the `DISABLE_TESTS` option in CMake.  
   - Runs on `push` and `pull_request` events.  
   - No secrets required.

3. **`lint.yml`**:  
   - Checks for coding style and syntax issues in Perl scripts and CMake files.  
   - Runs on `push` and `pull_request` events.  
   - No secrets required.

All workflows are located in the `.github/workflows` directory. Ensure the repository has the necessary dependencies installed for successful execution.
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
<!-- License not detected — add a LICENSE file to this repo. -->
<!-- AI:end:license -->
