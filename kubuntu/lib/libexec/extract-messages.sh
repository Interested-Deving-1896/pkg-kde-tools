#! /bin/bash

podir=${podir:-$PWD/po}
enpodir=${enpodir:-$PWD/enpo}
files=`find . -name Messages.sh`
dirs=`for i in $files; do echo \`dirname $i\`; done | sort -u`
tmpname="$PWD/messages.log"
l10nscripts=`dirname $0`
EXTRACTRC=${EXTRACTRC:-extractrc}
EXTRACTATTR=${EXTRACTATTR:-extractattr}
EXTRACT_GRANTLEE_TEMPLATE_STRINGS=${EXTRACT_GRANTLEE_TEMPLATE_STRINGS:-grantlee_strings_extractor.py}
EXTRACT_TR_STRINGS=${EXTRACT_TR_STRINGS:-$(readlink -f $l10nscripts/extract-tr-strings)}
MSGCAT=${MSGCAT:-msgcat}
PREPARETIPS=${PREPARETIPS:-preparetips}
REPACKPOT=${REPACKPOT:-$(readlink -f $l10nscripts/repack-pot.pl)}
export EXTRACTRC EXTRACTATTR MSGCAT PREPARETIPS REPACKPOT EXTRACT_GRANTLEE_TEMPLATE_STRINGS EXTRACT_TR_STRINGS
if [ "x$IGNORE" = "x" ]; then
	IGNORE="/tests/"
else
	IGNORE="$IGNORE
/tests/"
fi

for subdir in $dirs; do
  # skip Messages.sh files of KDevelop's app templates
  grep '{APPNAMELC}[^ ]*.pot' $subdir/Messages.sh 1>/dev/null && continue

  test -z "$VERBOSE" || echo "Making messages in $subdir"
  (cd $subdir
   if find . -name \*.c\* -o -name \*.h\* | fgrep -v "$IGNORE" | xargs fgrep -s -q KAboutData ; then
	echo 'i18nc("NAME OF TRANSLATORS","Your names");' >> rc.cpp
	echo 'i18nc("EMAIL OF TRANSLATORS","Your emails");' >> rc.cpp
   fi

   XGETTEXT_FLAGS_QT="\
--from-code=UTF-8 \
-C --qt \
-ktr:1,1t -ktr:1,2c,2t \
-kQT_TRANSLATE_NOOP:1c,2,2t -kQT_TR_NOOP:1,1t \
-ktranslate:1c,2,2t -ktranslate:2,3c,3t \
"
   XGETTEXT_FLAGS="\
--copyright-holder=This_file_is_part_of_KDE \
--msgid-bugs-address=http://bugs.kde.org \
--from-code=UTF-8 \
-C --kde \
-ci18n \
-ki18n:1 -ki18nc:1c,2 -ki18np:1,2 -ki18ncp:1c,2,3 \
-ki18nd:2 -ki18ndc:2c,3 -ki18ndp:2,3 -ki18ndcp:2c,3,4 \
-kki18n:1 -kki18nc:1c,2 -kki18np:1,2 -kki18ncp:1c,2,3 \
-kki18nd:2 -kki18ndc:2c,3 -kki18ndp:2,3 -kki18ndcp:2c,3,4 \
-kxi18n:1 -kxi18nc:1c,2 -kxi18np:1,2 -kxi18ncp:1c,2,3 \
-kxi18nd:2 -kxi18ndc:2c,3 -kxi18ndp:2,3 -kxi18ndcp:2c,3,4 \
-kkxi18n:1 -kkxi18nc:1c,2 -kkxi18np:1,2 -kkxi18ncp:1c,2,3 \
-kkxi18nd:2 -kkxi18ndc:2c,3 -kkxi18ndp:2,3 -kkxi18ndcp:2c,3,4 \
-kI18N_NOOP:1 -kI18NC_NOOP:1c,2 \
-kI18N_NOOP2:1c,2 -kI18N_NOOP2_NOSTRIP:1c,2 \
-ktr2i18n:1 -ktr2xi18n:1 \
"
   XGETTEXT_FLAGS_WWW="\
--copyright-holder=This_file_is_part_of_KDE \
--msgid-bugs-address=http://bugs.kde.org \
--from-code=UTF-8 \
-L PHP \
-ki18n -ki18n_var -ki18n_noop \
"
   export XGETTEXT_FLAGS
   export XGETTEXT_FLAGS_QT
   export XGETTEXT_FLAGS_WWW

   if test -f Messages.sh; then
       # Note: Messages.sh is supposed to get the translators' placeholder by rc.cpp
       enpodir=$enpodir podir=$podir srcdir=. XGETTEXT_PROGRAM="${XGETTEXT:-xgettext}" XGETTEXT_QT="${XGETTEXT:-xgettext} $XGETTEXT_FLAGS_QT" XGETTEXT_WWW="${XGETTEXT:-xgettext} $XGETTEXT_FLAGS_WWW" XGETTEXT="${XGETTEXT:-xgettext} $XGETTEXT_FLAGS" bash Messages.sh
   fi
   exit_code=$?
   if test "$exit_code" -ne 0; then
       echo "Bash exit code: $exit_code"
   else
       rm -f rc.cpp
   fi
   ) >& $tmpname
   test -s $tmpname && { echo $subdir ; cat "$tmpname"; }
done

# Repack extracted templates.
find -L $podir -iname '*.pot' | xargs -r -n1 $REPACKPOT

rm -f $tmpname
