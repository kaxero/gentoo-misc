# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MY_PN="DeviceKit-power"

DESCRIPTION="An abstraction for enumerating power devices, listening to device events and querying history and statistics"
HOMEPAGE="http://hal.freedesktop.org/docs/DeviceKit-power"
SRC_URI="http://hal.freedesktop.org/releases/${MY_PN}-${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc"

RDEPEND=">=dev-libs/glib-2.16.1
		>=sys-apps/dbus-1
		>=dev-libs/dbus-glib-0.76
		>=sys-auth/policykit-0.7"

DEPEND="${RDEPEND}
		>=dev-util/intltool-0.40
		dev-libs/libxslt
		dev-util/pkgconfig
		app-text/docbook-xsl-stylesheets
		doc? ( dev-util/gtk-doc )"

S="${WORKDIR}/${MY_PN}-${PV}"

src_compile() {
	econf $(use_enable doc gtk-doc) || die "econf failed"
	emake || die "emake failed"
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
}
