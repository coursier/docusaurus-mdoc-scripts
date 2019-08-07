#!/usr/bin/env bash
set -e

export PATH="$(pwd)/bin:$PATH"

mkdir -p bin
curl -Lo bin/sbt https://raw.githubusercontent.com/coursier/sbt-extras/e20d91edd7c2e9f4a17629dfae7d7d6bf9ba72a0/sbt
chmod +x bin/sbt

(echo "#!/usr/bin/env sh" && curl -L https://github.com/lihaoyi/Ammonite/releases/download/1.6.2/2.12-1.6.2) > bin/amm
chmod +x bin/amm

curl -Lo bin/coursier https://github.com/coursier/coursier/releases/download/v2.0.0-RC3-2/coursier
chmod +x bin/coursier
