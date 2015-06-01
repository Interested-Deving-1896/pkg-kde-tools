{
    package Debian::Debhelper::Sequence::kf5;
    use Debian::Debhelper::Dh_Version;
    use Debian::Debhelper::Dh_Lib qw(error);

    sub ensure_debhelper_version {
        my @v = split(/\./, $Debian::Debhelper::Dh_Version::version);
        if ($v[0] > $_[0]) {
            return 1;
        }
        elsif ($v[0] == $_[0]) {
            if ($v[1] > $_[1]) {
                return 1;
            }
            elsif ($v[1] == $_[1]) {
                return $1 >= $_[2] if ($v[2] =~ /^(\d+)/);
            }
        }
        return 0;
    }
    unless (ensure_debhelper_version(7, 3, 16)) {
        error "debhelper addon 'kf5' requires debhelper 7.3.16 or later";
    }

    1;
}

# Build with kf5 buildsystem by default
add_command_options("dh_auto_configure", "--buildsystem=kf5");
add_command_options("dh_auto_build", "--buildsystem=kf5");
add_command_options("dh_auto_test", "--buildsystem=kf5");
add_command_options("dh_auto_install", "--buildsystem=kf5");
add_command_options("dh_auto_clean", "--buildsystem=kf5");

# Omit libkdeinit5_* from dh_makeshlibs by default
add_command_options("dh_makeshlibs", "-Xusr/lib/libkdeinit5_*");

# Exclude kf5 documentation from dh_compress by default
add_command_options("dh_compress",
    qw(-X.dcl -X.docbook -X-license -X.tag -X.sty -X.el));

insert_after("dh_install", "dh_movelibkdeinit");

# Do not run tests on PPA targetting armhf builds.
# armhf for (public) PPAs is using qemu-arm which can absolutely not run
# the tests as it segfaults. Supposedly because of qapp and supposedly because
# there is a second thread involved for which qemu-arm has no support at all.
system("grep", "-q", "Purpose: PPA", "/CurrentlyBuilding");
if ($? eq 0 && $ENV{'DEB_HOST_ARCH'} eq "armhf") {
    remove_command("dh_auto_test");
}

# Only does stuff when package opts into l10n by setting
# X-Ubuntu-Use-Langpack: yes
require Debian::Debhelper::Sequence::kubuntu_l10n;

1;
