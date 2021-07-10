# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999
#hackport: flags: -llvm

CABAL_FEATURES="lib profile haddock hoogle hscolour" # Drop test-suite: circular depends
inherit haskell-cabal

DESCRIPTION="High-resolution clock functions: monotonic, realtime, cputime"
HOMEPAGE="https://github.com/corsis/clock"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RESTRICT=test # circular depend: tasty->clock[test]->tasty

RDEPEND=">=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-llvm
}