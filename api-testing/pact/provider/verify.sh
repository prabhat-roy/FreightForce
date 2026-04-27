#!/usr/bin/env bash
set -euo pipefail
pact-provider-verifier https://pact-broker.freightforce.internal \
  --provider freightforce_identity_service \
  --provider-base-url http://identity-service.freightforce.svc:50060 \
  --provider-version "${GIT_SHA:-local}" \
  --publish-verification-results
