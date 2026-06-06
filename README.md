# pkg-kde-tools

[![Built with Ona](https://ona.com/build-with-ona.svg)](https://app.ona.com/#https://github.com/Interested-Deving-1896/pkg-kde-tools)

<!-- AI:start:what-it-does -->
This project provides tools and utilities to assist with packaging KDE software, primarily for use in Debian-based distributions. It addresses tasks such as generating and managing symbol files, handling Qt-specific packaging needs, and automating common packaging workflows. It is used by developers and maintainers working on KDE-related packages to streamline and standardize their packaging processes.
<!-- AI:end:what-it-does -->

## Architecture

<!-- AI:start:architecture -->
The project consists of tools and scripts for managing KDE-related packaging tasks. It is primarily implemented in Perl and uses CMake for build configuration. The architecture includes the following components:

1. **CMake Configuration**: The `CMakeLists.txt` file defines build requirements, including Perl libraries, `pod2man` for manual page generation, and installation directories for binaries, libraries, and documentation.
2. **Perl Scripts**: Located at the root directory, these scripts handle various packaging tasks such as generating symbols, managing dependencies, and updating copyright information.
3. **Data and Templates**: The `cmake`, `makefiles`, and `qt-kde-team` directories contain reusable templates and configuration files for KDE packaging.
4. **Manual Pages**: Generated from POD files using the `install_pod_manpages` CMake function and installed into the `share/man` directory.

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
├── scripts (e.g., pkgkde-gensymbols, pkgkde-update-qt-copyright)
└── README.md
```
Components interact via CMake configuration, with Perl scripts leveraging shared libraries and templates for KDE packaging workflows.
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
   - Ensures required Perl dependencies (`PERL_VENDORLIB` and `PERL_EXECUTABLE`) and `pod2man` are available.  
   - Runs on `push` and `pull_request` events.  
   - No secrets required.

2. **`test.yml`**:  
   - Executes tests unless explicitly disabled via the `DISABLE_TESTS` option in `CMakeLists.txt`.  
   - Runs on `push` and `pull_request` events.  
   - No secrets required.

3. **`lint.yml`**:  
   - Checks the repository for coding style and syntax issues in Perl scripts and CMake files.  
   - Runs on `push` and `pull_request` events.  
   - No secrets required.

All workflows are defined in `.github/workflows/`.
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
[@mitya57](https://github.com/mitya57) - 61 commits  
[@Interested-Deving-1896](https://github.com/Interested-Deving-1896) - 53 commits  
[@perezmeyer](https://github.com/perezmeyer) - 26 commits  
[@maxyz](https://github.com/maxyz) - 23 commits  
[@netrunner-sync-service](https://github.com/netrunner-sync-service) - 18 commits  
[@hefee](https://github.com/hefee) - 15 commits  
[@jmsantamaria](https://github.com/jmsantamaria) - 9 commits  
[@svuorela](https://github.com/svuorela) - 4 commits  
[@tsimonq2](https://github.com/tsimonq2) - 4 commits  
[@OdyX](https://github.com/OdyX) - 4 commits  
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

Note: This repository may be a mirror. Please refer to the upstream source for additional context.
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
