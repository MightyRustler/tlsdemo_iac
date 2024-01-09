#
# Dockerfile
#
# this Dockefile is used to build the "actual" container image; it
# relies upon a known base image, and works from there.
#

FROM --platform=linux/amd64 kevinjswinton/tlsdemo:web-base-20231221

#just ensure an index.html is available
COPY code/source /usr/share/nginx/html
