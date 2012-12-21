# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Declarative command-line option parsing and documentation library."
HOMEPAGE="http://github.com/eli-frey/cmdtheline"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/parsec-3.1*:=[profile?]
		=dev-haskell/transformers-0.3*:=[profile?]
		>=dev-lang/ghc-7.4.1:="
DEPEND="${RDEPEND}
		test? ( >=dev-haskell/hunit-1.2.4
			<dev-haskell/hunit-2
			>=dev-haskell/test-framework-0.6
			>=dev-haskell/test-framework-hunit-0.2
		)
		>=dev-haskell/cabal-1.8"

src_prepare() {
	cabal_chdeps \
		'test-framework >= 0.6 && < 0.7' 'test-framework >= 0.6' \
		'test-framework-hunit >= 0.2 && < 0.3' 'test-framework-hunit >= 0.2'
	cp "${FILESDIR}/${PN}"-0.2.1.1/test/*.hs \
		"${S}/test" || die "Could not copy misising test files"
}
