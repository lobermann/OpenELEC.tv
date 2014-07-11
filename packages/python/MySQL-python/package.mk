################################################################################
# This file is part of OpenELEC - http://www.openelec.tv
# Copyright (C) 2009-2014 Stephan Raue (stephan@openelec.tv)
#
# OpenELEC is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 2 of the License, or
# (at your option) any later version.
#
# OpenELEC is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with OpenELEC. If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="MySQL-python"
PKG_VERSION="1.2.5"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2"
PKG_SITE="https://pypi.python.org/pypi/MySQL-python"
PKG_URL="https://pypi.python.org/packages/source/M/$PKG_NAME/$PKG_NAME-$PKG_VERSION.zip"
PKG_SOURCE_DIR="$PKG_NAME"
PKG_DEPENDS_TARGET="toolchain Python mysql mysql:host distutilscross:host"
PKG_PRIORITY="optional"
PKG_SECTION="python"
PKG_SHORTDESC="A python library for MySQL access"
PKG_LONGDESC="A python library for MySQL access"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

post_unpack() {
  PKG_FULL="${PKG_NAME}-${PKG_VERSION}"
  mv -f $BUILD/$PKG_FULL/$PKG_FULL/* $BUILD/$PKG_FULL/.
}

pre_make_target() {
  export PYTHONXCPREFIX="$SYSROOT_PREFIX/usr"
  export PATH=$TARGET_PKG_CONFIG_SYSROOT_DIR/bin:$PATH
}

make_target() {
  python setup.py build --cross-compile
}

makeinstall_target () {
  python setup.py install --root=$INSTALL --prefix=/usr
}

