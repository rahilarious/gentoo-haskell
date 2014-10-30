# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.4.9999

CABAL_FEATURES="bin"
inherit base elisp-common haskell-cabal

DESCRIPTION="Structured editing Emacs mode for Haskell"
HOMEPAGE="https://github.com/chrisdone/structured-haskell-mode"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="emacs"

RDEPEND=""
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	>=dev-haskell/haskell-src-exts-1.15 <dev-haskell/haskell-src-exts-1.16
	>=dev-lang/ghc-7.4.1
	emacs? ( virtual/emacs )
"
SITEFILE="50${PN}-gentoo.el"

PATCHES=( "${FILESDIR}/${PN}-1.0.4.patch" )

src_compile() {
	haskell-cabal_src_compile
	if use emacs; then
		pushd elisp
		elisp-compile *.el || die
		popd
	fi
}

src_install() {
	haskell-cabal_src_install
	if use emacs; then
		elisp-install "${PN}" elisp/*.{el,elc}
		elisp-site-file-install "${FILESDIR}/${SITEFILE}"
	fi
}

pkg_postinst() {
	if use emacs; then
		elisp-site-regen
	fi
}

pkg_postrm() {
	if use emacs; then
		elisp-site-regen
	fi
}
