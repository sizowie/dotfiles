#!/bin/sh

# download and extract dotfiles to $HOME/

TEMPDIR=`mktemp -d XXXXXX`

if [ `uname` = "Linux" -o `uname` = "Darwin" ]; then
	GET="curl -L"
else
	GET="ftp -o -"
fi

$GET https://github.com/sizowie/dotfiles/tarball/master | tar -C $TEMPDIR -xzf -

# remove unused files
rm -f $TEMPDIR/sizowie-*/README.md $TEMPDIR/sizowie-*/get.sh

if [ `uname` != "Darwin" ]; then
	# exclude osx files on other os'es
	rm -rf $TEMPDIR/sizowie-*/osx
fi

cd $TEMPDIR/sizowie-* && tar -cf - . | (cd; tar -xvf -)
cd -

rm -rf $TEMPDIR
