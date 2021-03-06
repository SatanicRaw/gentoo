# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

COMMIT=b13aac15904c1f821b1739d00445f49432705387
inherit cmake-utils vcs-snapshot

DESCRIPTION="Automatic BPM detection utility"
HOMEPAGE="https://github.com/Tatsh/bpmdetect"
SRC_URI="https://github.com/Tatsh/${PN}/archive/${COMMIT}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-qt/qtcore:5
	dev-qt/qtgui:5
	dev-qt/qtmultimedia:5
	dev-qt/qtwidgets:5
	media-libs/flac
	media-libs/libmad
	media-libs/libvorbis
	media-libs/portaudio
	media-libs/taglib
"
DEPEND="${RDEPEND}
	virtual/pkgconfig
"

src_install() {
	einstalldocs
	dobin "${BUILD_DIR}"/src/${PN}
}
