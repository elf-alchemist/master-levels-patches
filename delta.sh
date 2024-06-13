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
output_dir="${PWD}/output"
vcdiff_dir="${PWD}/vcdiff"
master_tar="${PWD}/master.tar"

vcdiff_vanilla="${vcdiff_dir}/masterpack-vanilla.vcdiff"
vcdiff_freedoom="${vcdiff_dir}/masterpack-freedoom.vcdiff"
vcdiff_psx="${vcdiff_dir}/masterpack-psx.vcdiff"

vcdiff="${vcdiff_dir}/masterpack.vcdiff"

wad_vanilla="${output_dir}/masterpack-vanilla.wad"
wad_freedoom="${output_dir}/masterpack-freedoom.wad"
wad_psx="${output_dir}/masterpack-psx.wad"

wad="${output_dir}/masterpack.wad"

xdelta3 -e -f -s "${master_tar}" "${wad_vanilla}"  "${vcdiff_vanilla}"
xdelta3 -e -f -s "${master_tar}" "${wad_freedoom}" "${vcdiff_freedoom}"
xdelta3 -e -f -s "${master_tar}" "${wad_psx}"      "${vcdiff_psx}"

xdelta3 -e -f -s "${master_tar}" "${wad}"          "${vcdiff}"
