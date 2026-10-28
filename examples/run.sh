#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_alerts info
PYTHONPATH=src python -m gbt_alerts check --payload '{}'
PYTHONPATH=src python -m gbt_alerts run   --payload '{}'
