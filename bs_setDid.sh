#!/bin/bash

export BSKY_H="raclepoulpe.bsky.social"
export DID_URL="https://bsky.social/xrpc/com.atproto.identity.resolveHandle" # Le endpoint d'API pour récupérer le DID en focntion de votre handle
export DID=$(curl -s -G --data-urlencode "handle=$BSKY_H" "$DID_URL" | jq -r .did)

echo "export DID=\"${DID}\""
