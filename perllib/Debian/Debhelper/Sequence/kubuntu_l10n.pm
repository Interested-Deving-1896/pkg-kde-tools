#!/usr/bin/perl

use warnings;
use strict;
use Debian::Debhelper::Dh_Lib;

# Note that the auto targets will cause duplicated strings in debian/, so
# generation needs to be done before installation.
insert_before("dh_auto_install", "dh_kubuntu_l10n_generate");
insert_before("dh_auto_clean",   "dh_kubuntu_l10n_clean");

1;
