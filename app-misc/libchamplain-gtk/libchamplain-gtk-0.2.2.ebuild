# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="A GTK+ map widget using libchamplain"
HOMEPAGE="http://blog.squidy.info/projects/libchamplain/"
SRC_URI="http://libchamplain.squidy.info/release/${PV}/${P}.tar.gz"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=x11-libs/gtk+-2.2
	>=media-libs/clutter-0.8
	>=media-libs/clutter-gtk-0.8
	>=app-misc/libchamplain-0.2"

DEPEND="${RDEPEND}
	dev-util/pkgconfig"

src_compile() {
	econf
	emake || die "Make failed!"
}

src_install() {
	emake DESTDIR="${D}" install || die "Install failed!"
}
