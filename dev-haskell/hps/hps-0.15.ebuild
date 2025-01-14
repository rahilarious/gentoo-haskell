# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Haskell Postscript"
HOMEPAGE="http://rd.slavepianos.org/?t=hps"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="build-exec"

RDEPEND=">=dev-haskell/hcg-minus-0.15:=[profile?] <dev-haskell/hcg-minus-0.16:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	build-exec? ( dev-haskell/random:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
"

PATCHES=(
	"${FILESDIR}"/${P}-ghc84.patch
)

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag build-exec build-exec)
}
