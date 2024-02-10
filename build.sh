#!/bin/bash

export dir=./arch
export out=/var/iso
export run=/var/build
export repo=$dir/airootfs/root/setup

rm -fr $run

mkdir -p $out
mkdir -p $run

git clone https://github.com/ngmaibulat/config-dotfiles.git $repo

mkarchiso -v -w $run -o $out $dir

rm -fr $repo

