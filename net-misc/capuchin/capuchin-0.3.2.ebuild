# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit mono multilib versionator

MY_PV=$(get_version_component_range 1-2)

DESCRIPTION="A program that runs in the background, downloads and installs plugins"
HOMEPAGE="http://capuchin.k-d-w.org/"
SRC_URI="mirror://gnome/sources/${PN}/${MY_PV}/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="app-crypt/gnupg
	>=dev-lang/mono-1.1.13
	>=dev-dotnet/gnomevfs-sharp-2.0
	>=dev-dotnet/dbus-sharp-0.5.2"

DEPEND="${RDEPEND}
	dev-util/pkgconfig"

src_install () {
	emake DESTDIR="${D}" install || die

	dodoc AUTHORS ChangeLog NEWS README TODO
}
