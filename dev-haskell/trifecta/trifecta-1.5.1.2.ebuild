# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.3

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit base haskell-cabal

DESCRIPTION="A modern parser combinator library with convenient diagnostics"
HOMEPAGE="http://github.com/ekmett/trifecta/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/ansi-terminal-0.6:=[profile?] <dev-haskell/ansi-terminal-0.7:=[profile?]
	>=dev-haskell/ansi-wl-pprint-0.6.6:=[profile?] <dev-haskell/ansi-wl-pprint-0.7:=[profile?]
	>=dev-haskell/blaze-builder-0.3.0.1:=[profile?] <dev-haskell/blaze-builder-0.4:=[profile?]
	>=dev-haskell/blaze-html-0.5:=[profile?] <dev-haskell/blaze-html-0.9:=[profile?]
	>=dev-haskell/blaze-markup-0.5:=[profile?] <dev-haskell/blaze-markup-0.7:=[profile?]
	>=dev-haskell/charset-0.3.5.1:=[profile?] <dev-haskell/charset-1:=[profile?]
	>=dev-haskell/comonad-4:=[profile?] <dev-haskell/comonad-5:=[profile?]
	>=dev-haskell/fingertree-0.1:=[profile?] <dev-haskell/fingertree-0.2:=[profile?]
	>=dev-haskell/hashable-1.2.1:=[profile?] <dev-haskell/hashable-1.3:=[profile?]
	>=dev-haskell/lens-4.0:=[profile?] <dev-haskell/lens-5:=[profile?]
	>=dev-haskell/mtl-2.0.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/parsers-0.12.1:=[profile?] <dev-haskell/parsers-1:=[profile?]
	>=dev-haskell/reducers-3.10:=[profile?] <dev-haskell/reducers-4:=[profile?]
	>=dev-haskell/semigroups-0.8.3.1:=[profile?] <dev-haskell/semigroups-1:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?] <dev-haskell/transformers-0.5:=[profile?]
	>=dev-haskell/unordered-containers-0.2.1:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/utf8-string-0.3.6:=[profile?] <dev-haskell/utf8-string-0.4:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( >=dev-haskell/doctest-0.9.1
		dev-haskell/quickcheck )
"

PATCHES=("${FILESDIR}/${PN}-1.5.1-Fix-building-with-base-4.8.0.0.patch")
