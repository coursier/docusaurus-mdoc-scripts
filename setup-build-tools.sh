#!/usr/bin/env bash
set -e

export PATH="$(pwd)/bin:$PATH"

mkdir -p bin
curl -Lo bin/sbt https://raw.githubusercontent.com/coursier/sbt-extras/7f77446f59ff841bf78741ef21d2db2dd6d1219a/sbt
chmod +x bin/sbt

(echo "#!/usr/bin/env sh" && curl -L https://github.com/lihaoyi/Ammonite/releases/download/1.6.2/2.12-1.6.2) > bin/amm
chmod +x bin/amm

curl -Lo bin/coursier https://github.com/coursier/coursier/releases/download/v1.1.0-M10/coursier
chmod +x bin/coursier
