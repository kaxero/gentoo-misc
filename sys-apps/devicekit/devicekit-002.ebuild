# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

MY_PN="DeviceKit"

DESCRIPTION="An abstraction for enumerating devices and listening to device events"
HOMEPAGE="http://hal.freedesktop.org/docs/DeviceKit"
SRC_URI="http://hal.freedesktop.org/releases/${MY_PN}-${PV}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc"

RDEPEND=">=dev-libs/glib-2.12
		 >=dev-libs/dbus-glib-0.76
		 >=sys-fs/udev-130"
DEPEND="${RDEPEND}
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
