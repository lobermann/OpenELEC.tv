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

PKG_NAME="rsync"
PKG_VERSION="3.1.1"
PKR_REV="1"
PKG_ARCH="i386 x86_64"
PKG_LICENSE="GPL"
PKG_SITE="http://rsync.samba.org/"
PKG_URL="http://rsync.samba.org/ftp/rsync/src/${PKG_NAME}-${PKG_VERSION}.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="tools"
PKG_SHORTDESC="rsync is an open source utility that provides fast incremental file transfer."
PKG_LONGDESC="rsync is an open source utility that provides fast incremental file transfer."

PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"
 
