#!/bin/bash

export dir=./arch
export out=/var/iso
export run=/var/build

rm -fr $run

mkdir -p $out
mkdir -p $run

mkarchiso -v -w $run -o $out $dir

