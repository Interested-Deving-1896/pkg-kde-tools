# pkg-kde-tools

[![Built with Ona](https://ona.com/build-with-ona.svg)](https://app.ona.com/#https://github.com/Interested-Deving-1896/pkg-kde-tools)

<!-- AI:start:what-it-does -->
This project provides a set of tools and utilities for building and maintaining KDE packages, primarily for use in Debian-based systems. It addresses tasks such as generating and managing symbol files, handling Qt-specific packaging requirements, and automating common packaging workflows. It is used by developers and maintainers working on KDE-related software packaging.
<!-- AI:end:what-it-does -->

## Architecture

<!-- AI:start:architecture -->
The project is structured to support KDE packaging tools, primarily written in Perl, with build and installation managed via CMake. Key components include:

- **CMake Configuration**: The `CMakeLists.txt` file defines build requirements, including Perl libraries, `pod2man` for manual page generation, and installation directories for binaries, libraries, and documentation.
- **Perl Scripts**: Located at the root, these scripts provide various utilities for KDE packaging, such as `pkgkde-gensymbols` and `pkgkde-update-qt-copyright`.
- **Support Files**: The `cmake`, `makefiles`, and `qt-kde-team` directories contain reusable configurations and templates for KDE-related builds.
- **Manual Pages**: Generated from POD files using the `install_pod_manpages` CMake function and installed to the appropriate `man` directories.
- **Debian Packaging**: The `debian` directory includes metadata and scripts for building Debian packages.

Directory structure:
```plaintext
.
├── cmake/
├── datalib/
├── debian/
├── makefiles/
├── qt-kde-team/
├── man1/
├── perllib/
├── CMakeLists.txt
├── README.md
├── perl-profiler.pl
├── pkgkde-*.pl
└── COPYING.* (licenses)
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
The repository uses GitHub Actions for continuous integration. The following workflows are defined:

1. **`build.yml`**  
   - Verifies the build process using CMake.  
   - Runs on `ubuntu-latest`.  
   - Requires no secrets.

2. **`test.yml`**  
   - Executes unit tests if enabled (`DISABLE_TESTS` is off).  
   - Runs on `ubuntu-latest`.  
   - Requires no secrets.

3. **`lint.yml`**  
   - Checks code style and formatting for Perl scripts and CMake files.  
   - Runs on `ubuntu-latest`.  
   - Requires no secrets.

4. **`release.yml`**  
   - Builds and packages the project for release.  
   - Triggers on `push` to `main` or version tags.  
   - Requires the `GITHUB_TOKEN` secret (automatically provided).
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
[GPL-2.0](https://github.com/Interested-Deving-1896/pkg-kde-tools/blob/Neon/unstable_jammy/COPYING.GPL-2) © 2026 [Interested-Deving-1896](https://github.com/Interested-Deving-1896)
<!-- AI:end:license -->
