alias gtr='git tag -s -e -m "Release $(date "+%Y-%m-%d %H:%M")" release-$(date "+%Y-%m-%d-%H-%M") && git push --tags';
