#!/bin/bash

export API_KEY_URL='https://bsky.social/xrpc/com.atproto.server.createSession'
export POST_DATA="{ \"identifier\" : \"${DID}\" , \"password\": \"${BSKY_P}\" }"

export API_KEY=$(curl -s -X POST -H 'Content-Type: application/json' -d "$POST_DATA" "$API_KEY_URL" | jq -r .accessJwt)

echo "export API_KEY=\"${API_KEY}\""
