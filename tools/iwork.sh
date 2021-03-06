#! /usr/bin/env bash
# ------
# name: get work dir
# author: Deve
# date: 2020-11-12
# ------

set -e
set -o pipefail

dir=~/Code
custom_dir=$1
cur_dir=$dir

if [[ -d "${custom_dir}" ]]; then
    cur_dir=$custom_dir
fi

cd "${cur_dir}"
list="$(find . -type d -maxdepth 1 | sort)"

select selected in $list; do
    break
done

if [[ -d "${selected}" ]]; then
    nvim "${dir}/${selected}"
fi

clear
