#!/bin/sh

gulp

PROJECTDIR=$(pwd)
TMPDIR=$(uuidgen)

git clone `git config --get remote.origin.url` -b gh-pages /tmp/${TMPDIR} && \
cd /tmp/${TMPDIR} && \
cp -rf ${PROJECTDIR}/web/www/* /tmp/${TMPDIR}/ && \
git add -A && \
git commit -am "new build" && \
git push origin gh-pages  && \
echo "DONE!"
