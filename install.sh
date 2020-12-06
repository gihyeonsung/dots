#!/bin/sh
datadir="data"

die ()
{
	echo "$1" 1>&2
	exit 1
}

install_file ()
{
	src="$PWD/$datadir/$1"
	dst=$(eval echo "$1")
	mkdir -p "$(dirname "$dst")" \
		|| sudo mkdir -p "$(dirname "$dst")" \
		|| die "could not ensure target dir"
	cp -fR "$src" "$dst" 2>/dev/null \
		|| sudo cp -fR "$src" "$dst" \
		|| die "could not link file"
}

cd "$(dirname "$0")" || die "could not change basedir"
find "$datadir" -type f | sed "s/$datadir//g" | while read -r line
do
	install_file "$line"
done
