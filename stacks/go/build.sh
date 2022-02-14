#!/bin/bash

# Load stack utils
. /usr/bin/stack-utils

# Implement build function
function build() {
    curl -L -o /opt/drycc/tmp.tar.gz https://go.dev/dl/go"${STACK_VERSION}".linux-"${OS_ARCH}".tar.gz
    cd /opt/drycc && tar -xvzf tmp.tar.gz && rm -rf tmp.tar.gz && cd -
    cp -rf /opt/drycc/go "${TARNAME}"/data
}

# call build stack
build-stack "${1}"
