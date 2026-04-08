#!/usr/bin/env bash
set -e

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$REPO_DIR"

echo "[natalieos-mirror] Pushing to GitHub..."
git push origin main

echo "[natalieos-mirror] Pushing to GitLab..."
git -c http.version=HTTP/1.1 push gitlab main

echo "[natalieos-mirror] Done. Both mirrors up-to-date."
