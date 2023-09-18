#!/bin/bash

# if ./noapm doesn't fail then error with a test failure

_SOURCING_FILE_FOR_TESTS=1

THIS_FILE_LOCATION=$(dirname $0)
. $THIS_FILE_LOCATION/noapm

_error_and_exit() {
    echo -e "\e[31mError: $1\e[0m" >&2
    exit 1
}

test_args_error() {
    __process_args $@ > /dev/null 2>&1 && _error_and_exit "Test failed: 'noapm $@' should have failed";
}

test_args_do_not_error() {
    _process_args $@ > /dev/null 2>&1 || _error_and_exit "Test failed: 'noapm $@' should not have failed";
}

test_args_error ""
test_args_error "-in"
test_args_error "-ia package"
test_args_error "-ua package"
test_args_error "-iu package"
test_args_error "-ui package"
test_args_error "-i package -un package"
test_args_error "-i package --un package"
test_args_error "--installnot package -u package"
test_args_error "installnot package otherpackage"
test_args_error "notinstall package otherpackage"

test_args_do_not_error "install package"
test_args_do_not_error "install package otherpackage"
test_args_do_not_error "install -f package otherpackage"
test_args_do_not_error "install --force package"
test_args_do_not_error "install --force package otherpackage"
test_args_do_not_error "install --configure package otherpackage"
test_args_do_not_error "install --completions package otherpackage"

test_args_do_not_error "uninstall package"
test_args_do_not_error "uninstall package otherpackage"
test_args_do_not_error "uninstall -f package otherpackage"
test_args_do_not_error "uninstall --force package"
test_args_do_not_error "uninstall --force package otherpackage"
test_args_do_not_error "uninstall --configure package otherpackage"
test_args_do_not_error "uninstall --completions package otherpackage"

echo -e "\e[32mTest passed: 'noapm' args error handling\e[0m"

