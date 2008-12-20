# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit gnome2

DESCRIPTION="Download Manager for the GNOME"
HOMEPAGE="http://live.gnome.org/GGet"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="epiphany"

RDEPEND=">=gnome-base/gconf-2
	>=x11-libs/gtk+-2.10
	>=dev-lang/python-2.5
	>=dev-python/pygtk-2.10
	>=dev-python/pygobject-2.12
	>=dev-python/gnome-python-2.16
	>=dev-python/gnome-python-extras-2.14
	>=dev-python/dbus-python-0.82
	>=dev-python/notify-python-0.1.1
	epiphany? ( >=www-client/epiphany-2.14 )"

DEPEND="${RDEPEND}
	>=dev-util/pkgconfig-0.9.0
	>=dev-util/intltool-0.33.0
	sys-devel/gettext"

pkg_setup() {
	G2CONF="${G2CONF}
		$(use_enable epiphany epiphany-extension)
		$(use_enable epiphany epiphany-extension-install)"
}

DOCS="AUTHORS NEWS TODO"
