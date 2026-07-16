#!/usr/bin/env bash
# SPDX-License-Identifier: BSD-3-Clause
# Copyright 2017-2022, Intel Corporation
# Copyright 2026, Hewlett Packard Enterprise Development LP
#
# utils/version.sh -- determine project's version
#
set -e
set -o errtrace
set -x

cd "$1"

GIT_DESCRIBE=$(git describe) && true
if [ -n "$GIT_DESCRIBE" ]; then
	echo "$GIT_DESCRIBE"
	exit 0
fi

exit 1
