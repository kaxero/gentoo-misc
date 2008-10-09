# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="Clutter based world map renderer"
HOMEPAGE="http://blog.squidy.info/projects/libchamplain/"
SRC_URI="http://libchamplain.squidy.info/release/${PV}/${P}.tar.gz"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-libs/glib-2.16
	>=x11-libs/gtk+-2.10
	>=net-libs/libsoup-2.4.1
	>=media-libs/clutter-0.8
	>=media-libs/clutter-cairo-0.8
	>=x11-libs/cairo-1.6
	>=net-libs/libsoup-2.4.1"

DEPEND="${RDEPEND}
	dev-util/pkgconfig"

src_compile() {
	econf
	emake || die "Make failed!"
}

src_install() {
	emake DESTDIR="${D}" install || die "Install failed!"
}
