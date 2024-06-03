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

vcdiff="${vcdiff_dir}/masterpack.vcdiff"
vcdiff_freedoom="${vcdiff_dir}/masterpack-freedoom.vcdiff"
vcdiff_psx="${vcdiff_dir}/masterpack-psx.vcdiff"

vcdiff_remaster="${vcdiff_dir}/masterpack-remaster.vcdiff"

wad="${output_dir}/masterpack.wad"
wad_freedoom="${output_dir}/masterpack-freedoom.wad"
wad_psx="${output_dir}/masterpack-psx.wad"

wad_remaster="${output_dir}/masterpack-remaster.wad"

xdelta3 -e -f -s "${master_tar}" "${wad}"          "${vcdiff}"
xdelta3 -e -f -s "${master_tar}" "${wad_freedoom}" "${vcdiff_freedoom}"
xdelta3 -e -f -s "${master_tar}" "${wad_psx}"      "${vcdiff_psx}"

xdelta3 -e -f -s "${master_tar}" "${wad_remaster}" "${vcdiff_remaster}"
