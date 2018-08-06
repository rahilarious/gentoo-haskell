# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="MonadWriter orphan instances for writer-cps-transformers"
HOMEPAGE="https://github.com/minad/writer-cps-mtl#readme"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/mtl-2.2:=[profile?] <dev-haskell/mtl-2.4:=[profile?]
	>=dev-haskell/writer-cps-transformers-0.1.1.1:=[profile?] <dev-haskell/writer-cps-transformers-0.3:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
"
