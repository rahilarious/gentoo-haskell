# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999
#hackport: flags: demo:demo-exe

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Haskell library for the Microsoft Language Server Protocol"
HOMEPAGE="https://github.com/alanz/haskell-lsp"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="demo-exe"

RDEPEND=">=dev-haskell/aeson-1.0.0.0:=[profile?]
	dev-haskell/async:=[profile?]
	dev-haskell/attoparsec:=[profile?]
	dev-haskell/data-default:=[profile?]
	dev-haskell/hashable:=[profile?]
	>=dev-haskell/haskell-lsp-types-0.23:=[profile?] <dev-haskell/haskell-lsp-types-0.24:=[profile?]
	dev-haskell/hslogger:=[profile?]
	>=dev-haskell/lens-4.15.2:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/network-uri:=[profile?]
	>=dev-haskell/rope-utf16-splay-0.3.1.0:=[profile?]
	>=dev-haskell/sorted-list-0.2.1:=[profile?] <dev-haskell/sorted-list-0.2.2:=[profile?]
	dev-haskell/stm:=[profile?]
	dev-haskell/temporary:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-8.4.3:=
	demo-exe? ( dev-haskell/vector:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/hspec
		dev-haskell/quickcheck
		dev-haskell/quickcheck-instances )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag demo-exe demo)
}