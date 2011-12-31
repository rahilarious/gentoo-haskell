# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.14

EAPI="3"

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A pull-based approach to streaming data."
HOMEPAGE="http://github.com/snoyberg/conduit"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/lifted-base-0.1*
		>=dev-haskell/monad-control-0.3.1
		<dev-haskell/monad-control-0.4
		>=dev-haskell/text-0.11
		>=dev-haskell/transformers-0.2.2
		<dev-haskell/transformers-0.3
		>=dev-haskell/transformers-base-0.4.1
		<dev-haskell/transformers-base-0.5
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.8
		test? ( >=dev-haskell/cabal-1.10
			dev-haskell/hspec
			dev-haskell/hunit
			dev-haskell/quickcheck
		)
		"

src_configure() {
	cabal_src_configure $(use_enable test tests)
}

