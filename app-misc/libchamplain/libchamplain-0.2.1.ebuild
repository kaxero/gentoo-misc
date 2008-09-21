# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=1

DESCRIPTION="C library aimed to provide a Gtk+ widget to display rasterized maps"
HOMEPAGE="http://blog.squidy.info/projects/libchamplain/"
SRC_URI="http://libchamplain.squidy.info/release/${PV}/${P}.tar.gz"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="doc"

RDEPEND=">=dev-libs/glib-2.16
	>=x11-libs/gtk+-2.2
	>=net-libs/libsoup-2.4.1
	>=media-libs/clutter-0.8
	>=media-libs/clutter-cairo-0.8
	>=x11-libs/cairo-1.6
	>=net-libs/libsoup-2.4.1"

DEPEND="${RDEPEND}
	dev-util/pkgconfig
	doc? ( >=dev-util/gtk-doc-1.9 )"

src_compile() {
	econf $(use_enable doc gtk-doc)
	emake || die "Make failed!"
}

src_install() {
	emake DESTDIR="${D}" install || die "Install failed!"
}
