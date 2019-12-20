#!/bin/bash

export VERSION=`(git rev-parse --short HEAD~1)`

rm -f nighthawk_binaries/*.tar.gz
tar cvzf nighthawk_client_${VERSION}.tar.gz bazel-bin/nighthawk_client 
tar cvzf nighthawk_test_server_${VERSION}.tar.gz bazel-bin/nighthawk_test_server
tar cvzf nighthawk_service_${VERSION}.tar.gz bazel-bin/nighthawk_service
tar cvzf nighthawk_output_transform_${VERSION}.tar.gz bazel-bin/nighthawk_output_transform
cp *.tar.gz nighthawk_binaries/
rm *.tar.gz
