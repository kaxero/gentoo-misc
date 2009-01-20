# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="1"

inherit gnome2

DESCRIPTION="A small GTK+ application to allow you to keep a diary of your life"
HOMEPAGE="http://tecnocode.co.uk/projects/almanah/"
SRC_URI="http://tecnocode.co.uk/downloads/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
IUSE="crypt spell"

RDEPEND=">=dev-libs/glib-2.14
	dev-db/sqlite:3
	gnome-base/gconf:2
	>=x11-libs/gtk+-2.14
	crypt? ( app-crypt/gpgme:1
		app-crypt/seahorse )
	spell? ( app-text/gtkspell )"

DEPEND="${RDEPEND}
	dev-util/pkgconfig
	>=dev-util/intltool-0.35.0
	sys-devel/gettext"

G2CONF="$(use_enable crypt encryption) \
	$(use_enable spell spell-checking)"

DOCS="AUTHORS ChangeLog NEWS README"
