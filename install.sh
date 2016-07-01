#!/bin/bash
set -o errexit

basepath="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# set ROOT to $HOME/local unless already defined
export ROOT=${ROOT:-$HOME/local}

$basepath/pkg/base/install.sh

sed "s|basepath=.*|basepath=$basepath|" $basepath/bin/fac > $ROOT/bin/fac
chmod +x $ROOT/bin/fac

install $basepath/bin/patenv

