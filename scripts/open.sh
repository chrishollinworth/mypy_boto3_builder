#!/usr/bin/env bash
set -e

NAME="${1:-boto3}"
echo "Opening $NAME"

SITE_PACKAGES=`uv run python -c "import sys; import os; paths = filter(lambda x: x.startswith(os.getcwd()), sys.path); print(list(paths)[0])"`
echo "Site packages:" ${SITE_PACKAGES}
code ${SITE_PACKAGES}/${NAME}
