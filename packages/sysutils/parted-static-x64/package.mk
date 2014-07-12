################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2014 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="parted-static-x64"
PKG_VERSION="2.4"
PKG_REV="1"
PKG_ARCH="x86_64"
PKG_LICENSE="GPL"
PKG_SITE="http://www.gnu.org/software/parted/"
PKG_URL="http://support.at-visions.org/openelec/${PKG_NAME}-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET=""
PKG_PRIORITY="optional"
PKG_SECTION="system"
PKG_SHORTDESC="parted: GNU partition editor"
PKG_LONGDESC="GNU Parted is a program for creating, destroying, resizing, checking and copying partitions, and the file systems on them. This is useful for creating space for new operating systems, reorganising disk usage, copying data between hard disks and disk imaging."
PKG_IS_ADDON="no"

PKG_AUTORECONF="no"

configure_init() {
  echo "no configure needed"
}

make_init() {
  echo "no make needed"
}

makeinstall_init() {
  mkdir -p $INSTALL/sbin
  echo "***" 
  sleep 1
  file $ROOT/$PKG_BUILD/parted.linux.x64
  echo "***"
  sleep 1
  cp -f $ROOT/$PKG_BUILD/parted.linux.x64 $INSTALL/sbin/parted
}
