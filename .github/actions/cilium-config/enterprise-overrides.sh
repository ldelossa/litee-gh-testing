#!/usr/bin/env bash
# Sourced (not executed) by action.yml so it can mutate CONFIG in place.
# Reads ENTERPRISE_VRF from the process environment.

if [ "${ENTERPRISE_VRF:-false}" == "true" ]; then
  CONFIG="${CONFIG} --helm-set=enterprise.vrf.enabled=true"
fi
