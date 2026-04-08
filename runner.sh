#!/usr/bin/env bash
set -e

GITLAB_URL="https://gitlab.acreetionos.org"
REGISTRATION_TOKEN="GR1348941GPAWxzTswksmLaNNK2pW"
RUNNER_NAME="natalieos-shell"
RUNNER_TAG="natalieos-shell"

echo "==> Installing gitlab-runner..."
sudo pacman -S --noconfirm gitlab-runner

echo "==> Registering runner with GitLab..."
sudo gitlab-runner register \
  --non-interactive \
  --url "$GITLAB_URL" \
  --registration-token "$REGISTRATION_TOKEN" \
  --executor "shell" \
  --description "$RUNNER_NAME" \
  --tag-list "$RUNNER_TAG" \
  --run-untagged=false

echo "==> Enabling and starting gitlab-runner service..."
sudo systemctl enable --now gitlab-runner

echo "==> Runner status:"
sudo gitlab-runner status

echo ""
echo "Done! Runner '$RUNNER_NAME' is live and listening for jobs."
echo "Head to $GITLAB_URL/natalie/natalieos/-/pipelines to trigger a build."
