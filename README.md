# pkg-kde-tools

[![Built with Ona](https://ona.com/build-with-ona.svg)](https://app.ona.com/#https://github.com/Interested-Deving-1896/pkg-kde-tools)

<!-- AI:start:what-it-does -->
This project provides a set of tools and utilities for building and maintaining KDE packages, primarily targeting developers and maintainers working with KDE software. It includes scripts, CMake configurations, and Perl modules to streamline tasks such as dependency management, symbol generation, and manual page creation. The tools aim to simplify workflows for packaging KDE applications in distributions.
<!-- AI:end:what-it-does -->

## Architecture

<!-- AI:start:architecture -->
The project consists of tools and scripts for managing KDE-related packaging tasks. It uses CMake for build configuration and Perl as the primary scripting language. The architecture includes a set of Perl scripts, CMake modules, and auxiliary files organized for KDE packaging workflows. Key components include:

- **Perl Scripts**: Located at the root directory, these scripts handle tasks like symbol generation, dependency management, and copyright updates.
- **CMake Modules**: Found in the `cmake` directory, these define build and installation rules, including manual page generation and library installation.
- **Data Files**: Stored in `qt-kde-team`, `makefiles`, and other directories, these provide templates and configurations for packaging.
- **Manual Pages**: Generated from POD files using `pod2man` and installed into the appropriate directory.

Directory structure:
```plaintext
.
├── cmake
├── datalib
├── debian
├── makefiles
├── qt-kde-team
├── man1
├── perllib
├── t
├── *.pl (Perl scripts)
├── CMakeLists.txt
├── README.md
└── COPYING.* (License files)
```

CMake ensures dependencies like `PerlLibs` and `pod2man` are available. Installation paths for binaries, libraries, and documentation are configurable via CMake options.
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
   - Runs the CMake build process to ensure the project compiles successfully.  
   - Validates the presence of required Perl dependencies and tools like `pod2man`.  
   - No secrets are required.

2. **`test.yml`**:  
   - Executes tests unless explicitly disabled via the `DISABLE_TESTS` option in the CMake configuration.  
   - Ensures the integrity of the project's functionality.  
   - No secrets are required.

3. **`lint.yml`**:  
   - Checks for code style and formatting issues in the repository.  
   - Targets Perl scripts and CMake files.  
   - No secrets are required.

All workflows are triggered on `push` and `pull_request` events.
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
<!-- License not detected — add a LICENSE file to this repo. -->
<!-- AI:end:license -->
