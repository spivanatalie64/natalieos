#!/usr/bin/env bash
set -e

PROFILE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OUT_DIR="${PROFILE_DIR}/out"
WORK_DIR="${PROFILE_DIR}/work"

if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root."
    exit 1
fi

mkdir -p "${OUT_DIR}" "${WORK_DIR}"

mkarchiso -v -w "${WORK_DIR}" -o "${OUT_DIR}" "${PROFILE_DIR}"

echo ""
echo "NatalieOS ISO built successfully:"
ls -lh "${OUT_DIR}"/*.iso
