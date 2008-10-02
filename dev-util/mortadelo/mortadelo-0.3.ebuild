# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit mono

DESCRIPTION="A graphical, systemwide version of strace"
HOMEPAGE="http://live.gnome.org/Mortadelo"
SRC_URI="http://www.gnome.org/~federico/hacks/mortadelo/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-util/systemtap
	>=dev-lang/mono-1.2.2
	>=dev-dotnet/gtk-sharp-2.8"

DEPEND="${RDEPEND}
	dev-util/pkgconfig"

src_install () {
	emake DESTDIR="${D}" install || die

	dodoc AUTHORS ChangeLog NEWS README TODO doc/architecture.txt doc/notes.txt doc/systemtap-supported-syscalls.txt
}
