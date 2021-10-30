# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Interface for JavaScript that works with GHCJS and GHC"
HOMEPAGE="https://hackage.haskell.org/package/jsaddle"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="call-stacks check-unchecked"

RDEPEND=">=dev-haskell/aeson-0.11.3.0:=[profile?] <dev-haskell/aeson-1.6:=[profile?]
	>=dev-haskell/attoparsec-0.11:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/base-compat-0.9.0:=[profile?] <dev-haskell/base-compat-0.12:=[profile?]
	>=dev-haskell/base64-bytestring-1.0.0.1:=[profile?]
	>=dev-haskell/exceptions-0.8:=[profile?] <dev-haskell/exceptions-0.11:=[profile?]
	>=dev-haskell/http-types-0.8.6:=[profile?] <dev-haskell/http-types-0.13:=[profile?]
	>=dev-haskell/lens-3.8.5:=[profile?] <dev-haskell/lens-5.1:=[profile?]
	>=dev-haskell/primitive-0.6.1.0:=[profile?] <dev-haskell/primitive-0.8:=[profile?]
	>=dev-haskell/random-1.1:=[profile?] <dev-haskell/random-1.3:=[profile?]
	>=dev-haskell/ref-tf-0.4.0.1:=[profile?]
	>=dev-haskell/scientific-0.3:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/stm-2.4.4:=[profile?] <dev-haskell/stm-2.6:=[profile?]
	>=dev-haskell/text-1.2.1.3:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/unliftio-core-0.1:=[profile?] <dev-haskell/unliftio-core-0.3:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_prepare() {
	default
	cabal_chdeps \
		'base64-bytestring >=1.0.0.1 && <1.2' 'base64-bytestring >=1.0.0.1' \
		'ref-tf >=0.4.0.1 && <0.5' 'ref-tf >=0.4.0.1'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag call-stacks call-stacks) \
		$(cabal_flag check-unchecked check-unchecked)
}
