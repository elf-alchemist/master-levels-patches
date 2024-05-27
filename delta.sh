#!/usr/bin/env bash
# SPDX-License-Identifier: Unlicnese
# SPDX-FileCopyrightText: Copyright 2024 Guilherme M. Miranda <alchemist.software@proton.me>

# Bash strict mode - Exit early, instead of failing later
set -o errtrace
set -o errexit
set -o nounset
set -o pipefail

base_dir="${PWD}"
source_dir="${PWD}/source"
master_tar="${PWD}/master.tar"

vcdiff="${PWD}/delta/masterpack.vcdiff"
vcdiff_freedoom="${PWD}/delta/masterpack-freedoom.vcdiff"
vcdiff_psx="${PWD}/delta/masterpack-psx.vcdiff"

wad="${PWD}/output/masterpack.wad"
wad_freedoom="${PWD}/output/masterpack-freedoom.wad"
wad_psx="${PWD}/output/masterpack-psx.wad"

xdelta3 -e -f -s "${master_tar}" "${wad}"          "${vcdiff}"
xdelta3 -e -f -s "${master_tar}" "${wad_freedoom}" "${vcdiff_freedoom}"
xdelta3 -e -f -s "${master_tar}" "${wad_psx}"      "${vcdiff_psx}"
