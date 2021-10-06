PORTNAME=           dosbox-x
DISTVERSIONPREFIX=  v
DISTVERSION=        0.83.18
CATEGORIES=         emulators

MAINTAINER=         joerg.preiss@slesa.de
COMMENT=            A cross-platform DOS emulator based on the DOSBox project

LICENSE=            GPLv2
LICENSE_FILE=       ${WRKSRC}/COPYING

MASTER_SITES=       ${GITHUB}
MASTER_SITE_SUBDIR= joncampbell123/dosbox-x/archive/refs/tags/

USES=               autoreconf
GNU_CONFIGURE=      yes
CONFIGURE_ARGS=     --enable-sdl2 --prefix=${WRKDIR}/dist
USE_AUTOTOOLS=      aclocal autoheader automake autoconf
AUTOMAKE_ARGS=      --include-deps --add-missing --copy
USE_SDL=            sdl2

WRKSRC=             ${WRKDIR}/${PORTNAME}-${DISTNAME}


.include <bsd.port.mk>

