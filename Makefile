PORTNAME=	dosbox-x
DISTVERSIONPREFIX=	v
DISTVERSION=	0.83.18
CATEGORIES=	emulators

MAINTAINER=	joerg.preiss@slesa.de
COMMENT=	Cross-platform DOS emulator based on the DOSBox project

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/COPYING

USES=	autoreconf sdl

USE_GITHUB=	yes
GH_ACCOUNT=	joncampbell123
GH_TAGNAME=	${PORTNAME}-${DISTVERSIONFULL}

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--enable-sdl2 --prefix=${WRKDIR}/dist
USE_SDL=	sdl2

.include <bsd.port.mk>
