#!/usr/bin/env bash
set -e

export PATH="$(pwd)/bin:$PATH"

mkdir -p bin
curl -Lo bin/sbt https://raw.githubusercontent.com/coursier/sbt-extras/150686c3d67c9e531a381283a803eb53d72735ab/sbt
chmod +x bin/sbt

(echo "#!/usr/bin/env sh" && curl -L https://github.com/lihaoyi/Ammonite/releases/download/1.6.2/2.12-1.6.2) > bin/amm
chmod +x bin/amm

curl -Lo bin/coursier https://github.com/coursier/coursier/releases/download/v2.0.0-RC3-4/coursier
chmod +x bin/coursier
