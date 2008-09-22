# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="Command Line Interface for NetworkManager"
HOMEPAGE="http://vidner.net/martin/software/cnetworkmanager/"
SRC_URI="http://www.mundurat.net/kaxero/tmp/gnome-overlay/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/python-2.5
	>=dev-python/pygobject-2
	>=dev-python/dbus-python-0.82"

DEPEND="${RDEPEND}"

src_install() {
	dobin cnetworkmanager
	insinto /usr/bin/

	dodoc NEWS
}
