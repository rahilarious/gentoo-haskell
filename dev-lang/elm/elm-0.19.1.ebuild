# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Meta package for Elm"
HOMEPAGE="https://github.com/elm"

LICENSE="metapackage"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	~dev-lang/elm-compiler-${PV}
"
