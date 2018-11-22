# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Fast base32 and base32hex codec for ByteStrings"
HOMEPAGE="https://github.com/pxqr/base32-bytestring"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/bits-extras-0.1:=[profile?] <dev-haskell/bits-extras-0.2:=[profile?]
	>=dev-haskell/cpu-0.1:=[profile?] <dev-haskell/cpu-0.2:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( dev-haskell/hspec
		dev-haskell/quickcheck )
"
