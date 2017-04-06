#!/bin/bash

echo -n "Input your Github OTP : "
read GITHUB_OTP_CODE
curl -u skohar -H "X-GitHub-OTP: $GITHUB_OTP_CODE" -d '{"scopes": ["write:public_key"], "note": "From bootstrap"}' https://api.github.com/authorizations  | less
