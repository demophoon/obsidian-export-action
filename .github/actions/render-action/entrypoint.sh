#!/usr/bin/env bash

set -eaux

VAULT_LOCATION=${1:?Vault Location Required}
VAULT_SUBDIRECTORY="${VAULT_LOCATION}/${2:-/}"
HUGO_SITE=${3:-$(pwd)/hugo}

HTML_OUTPUT=${HTML_OUTPUT:-${HUGO_SITE}/public}
HUGO_CONTENT=${HUGO_CONTENT:-${HUGO_SITE}/content}

mkdir -p "${HTML_OUTPUT}"
mkdir -p "${HUGO_CONTENT}"

obsidian-export "${VAULT_LOCATION}" "${HUGO_CONTENT}" --start-at "${VAULT_SUBDIRECTORY}"

pushd "${HUGO_SITE}"
hugo

echo "::set-output name=html-path::${HTML_OUTPUT}"
env
