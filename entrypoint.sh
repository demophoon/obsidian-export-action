#!/usr/bin/env bash

set -aux

VAULT_LOCATION=${1:?Vault Location Required}
HUGO_SITE=${2:-./hugo}

HTML_OUTPUT=${HTML_OUTPUT:-${HUGO_SITE}/public}
HUGO_CONTENT=${HUGO_CONTENT:-${HUGO_SITE}/content}

mkdir -p "${HTML_OUTPUT}"
mkdir -p "${HUGO_CONTENT}"

obsidian-export "${VAULT_LOCATION}" "${HUGO_CONTENT}"

cd "${HUGO_SITE}"
hugo

echo "::set-output name=html-path::${HTML_OUTPUT}"
