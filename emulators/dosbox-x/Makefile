PORTNAME=	dosbox-x
DISTVERSIONPREFIX=	v
DISTVERSION=	0.83.18
CATEGORIES=	emulators

MAINTAINER=	joerg.preiss@slesa.de
COMMENT=	Cross-platform DOS emulator based on the DOSBox project

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/COPYING

LIB_DEPENDS=	libpng.so:graphics/png

USES=	autoreconf sdl

USE_GITHUB=	yes
GH_ACCOUNT=	joncampbell123
GH_TAGNAME=	${PORTNAME}-${DISTVERSIONFULL}

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--prefix=${WRKDIR}/dist
USE_SDL=	sdl net sound

.include <bsd.port.mk>
