PORTNAME=           dosbox-x
DISTVERSIONPREFIX=  v
DISTVERSION=        0.83.18
CATEGORIES=         emulators

MAINTAINER=         joerg.preiss@slesa.de
COMMENT=            A cross-platform DOS emulator based on the DOSBox project

LICENSE=            GPLv2
LICENSE_FILE=       ${WRKSRC}/COPYING

USE_GITHUB=	yes
GH_ACCOUNT=	joncampbell123
GH_TAGNAME=	${PORTNAME}-${DISTVERSIONFULL}

USES=               autoreconf
GNU_CONFIGURE=      yes
CONFIGURE_ARGS=     --enable-sdl2 --prefix=${WRKDIR}/dist
AUTOMAKE_ARGS=      --include-deps --add-missing --copy
USE_SDL=            sdl2

.include <bsd.port.mk>
