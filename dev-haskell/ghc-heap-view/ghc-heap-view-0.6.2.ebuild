# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.6

# This library cannot be built using profiling.
CABAL_FEATURES="lib haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Extract the heap representation of Haskell values and thunks"
HOMEPAGE="https://hackage.haskell.org/package/ghc-heap-view"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="prim-supports-any"

RDEPEND=">=dev-lang/ghc-8.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.0.0 <dev-haskell/cabal-3.3
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag prim-supports-any prim-supports-any)
}