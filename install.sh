#!/bin/sh
die ()
{
	echo "$1" 1>&2
	exit 1
}

cd "$(dirname "$0")" || die "could not change basedir"

datadir="data"
listpath="list.txt"

# TODO: Add preinstall and postinstall script feature.
linkdata ()
{
	src="$PWD/$datadir/$1"
	dst=$(eval echo "$1")
	sudo ln -fs "$src" "$dst"
}

while read -r line
do
	linkdata "$line"
done < "$listpath"
