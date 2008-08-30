# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils gnome2

DESCRIPTION="A small GTK+ application to allow you to keep a diary of your life"
HOMEPAGE="http://tecnocode.co.uk/projects/diary/"
SRC_URI="http://tecnocode.co.uk/downloads/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="crypt"

RDEPEND=">=dev-libs/glib-2.16
	>=dev-db/sqlite-3.0
	>=gnome-base/gconf-2
	>=x11-libs/gtk+-2.12
	crypt? ( >=app-crypt/gpgme-1.0 )"

DEPEND="${RDEPEND}
	>=dev-util/pkgconfig-0.9.0
	>=dev-util/intltool-0.35.0
	sys-devel/gettext"

src_unpack() {
	gnome2_src_unpack

	epatch "${FILESDIR}"/icon-rename-fix.patch
}

pkg_setup() {
	G2CONF="$(use_enable crypt encryption)"
}

DOCS="AUTHORS ChangeLog INSTALL NEWS README"