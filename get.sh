#!/bin/sh

# download and extract dotfiles to $HOME/

TEMPDIR=`mktemp -d XXXXXX`

if [ `uname` = "Linux" -o `uname` = "Darwin" ]; then
	GET="curl -L"
else
	# openbsd
	GET="ftp -o -"
fi

$GET https://github.com/sizowie/dotfiles/tarball/master | tar -C $TEMPDIR -xzf -
rm -f $TEMPDIR/sizowie-*/README.md $TEMPDIR/sizowie-*/get.sh
cd $TEMPDIR/sizowie-* && tar -cf - . | (cd; tar -xvf -)
cd -

rm -rf $TEMPDIR
