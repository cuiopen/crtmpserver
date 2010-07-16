#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=
AS=as

# Macros
CND_PLATFORM=GNU-MacOSX
CND_CONF=Debug
CND_DISTDIR=dist

# Include project Makefile
include Makefile.nb

# Object Directory
OBJECTDIR=build/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/_ext/441423101/rtmpappprotocolhandler.o \
	${OBJECTDIR}/_ext/441423101/playlist.o \
	${OBJECTDIR}/_ext/1147538975/httpbufferprotocol.o \
	${OBJECTDIR}/_ext/413657679/m3u8appprotocolhandler.o \
	${OBJECTDIR}/_ext/441423101/speedcomputer.o \
	${OBJECTDIR}/_ext/441423101/applestreamingclient.o \
	${OBJECTDIR}/_ext/413657679/masterm3u8protocol.o \
	${OBJECTDIR}/_ext/1372129895/keyappprotocolhandler.o \
	${OBJECTDIR}/_ext/61573733/baseeventsink.o \
	${OBJECTDIR}/_ext/1372129895/inboundkeyprotocol.o \
	${OBJECTDIR}/_ext/693221815/protocolfactory.o \
	${OBJECTDIR}/_ext/693221815/genericprotocol.o \
	${OBJECTDIR}/_ext/1568282619/tsappprotocolhandler.o \
	${OBJECTDIR}/_ext/441423101/clientcontext.o \
	${OBJECTDIR}/_ext/1147538975/httpbuffappprotocolhandler.o \
	${OBJECTDIR}/_ext/413657679/childm3u8protocol.o \
	${OBJECTDIR}/_ext/1372139511/aesappprotocolhandler.o \
	${OBJECTDIR}/_ext/61573733/rtmpeventsink.o \
	${OBJECTDIR}/_ext/413657679/basem3u8protocol.o \
	${OBJECTDIR}/_ext/441423101/applestreamingclientapplication.o \
	${OBJECTDIR}/_ext/1372139511/inboundaesprotocol.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=-L../thelib/../Debug/GNU-MacOSX -lthelib -L../common/dist/Debug/GNU-MacOSX -lcommon

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-Debug.mk ../Debug/GNU-MacOSX/applications/applestreamingclient/libapplestreamingclient.dylib

../Debug/GNU-MacOSX/applications/applestreamingclient/libapplestreamingclient.dylib: ../thelib/../Debug/GNU-MacOSX/libthelib.dylib

../Debug/GNU-MacOSX/applications/applestreamingclient/libapplestreamingclient.dylib: ../common/dist/Debug/GNU-MacOSX/libcommon.dylib

../Debug/GNU-MacOSX/applications/applestreamingclient/libapplestreamingclient.dylib: ${OBJECTFILES}
	${MKDIR} -p ../Debug/GNU-MacOSX/applications/applestreamingclient
	${LINK.cc} -dynamiclib -install_name libapplestreamingclient.dylib -o ../${CND_CONF}/${CND_PLATFORM}/applications/applestreamingclient/libapplestreamingclient.dylib -fPIC ${OBJECTFILES} ${LDLIBSOPTIONS} 

${OBJECTDIR}/_ext/441423101/rtmpappprotocolhandler.o: ../../../../sources/applications/applestreamingclient/src/rtmpappprotocolhandler.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/441423101
	${RM} $@.d
	$(COMPILE.cc) -g -DOSX -DNET_KQUEUE -DLITTLE_ENDIAN_BYTE_ALIGNED -DHAS_PROTOCOL_RTMP -DHAS_PROTOCOL_HTTP -DHAS_PROTOCOL_TS -I/opt/local/include -I../../../../sources/common/include -I../../../../sources/thelib/include -I../../../../sources/applications/applestreamingclient/include -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/441423101/rtmpappprotocolhandler.o ../../../../sources/applications/applestreamingclient/src/rtmpappprotocolhandler.cpp

${OBJECTDIR}/_ext/441423101/playlist.o: ../../../../sources/applications/applestreamingclient/src/playlist.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/441423101
	${RM} $@.d
	$(COMPILE.cc) -g -DOSX -DNET_KQUEUE -DLITTLE_ENDIAN_BYTE_ALIGNED -DHAS_PROTOCOL_RTMP -DHAS_PROTOCOL_HTTP -DHAS_PROTOCOL_TS -I/opt/local/include -I../../../../sources/common/include -I../../../../sources/thelib/include -I../../../../sources/applications/applestreamingclient/include -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/441423101/playlist.o ../../../../sources/applications/applestreamingclient/src/playlist.cpp

${OBJECTDIR}/_ext/1147538975/httpbufferprotocol.o: ../../../../sources/applications/applestreamingclient/src/protocols/httpbuff/httpbufferprotocol.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/1147538975
	${RM} $@.d
	$(COMPILE.cc) -g -DOSX -DNET_KQUEUE -DLITTLE_ENDIAN_BYTE_ALIGNED -DHAS_PROTOCOL_RTMP -DHAS_PROTOCOL_HTTP -DHAS_PROTOCOL_TS -I/opt/local/include -I../../../../sources/common/include -I../../../../sources/thelib/include -I../../../../sources/applications/applestreamingclient/include -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/1147538975/httpbufferprotocol.o ../../../../sources/applications/applestreamingclient/src/protocols/httpbuff/httpbufferprotocol.cpp

${OBJECTDIR}/_ext/413657679/m3u8appprotocolhandler.o: ../../../../sources/applications/applestreamingclient/src/protocols/m3u8/m3u8appprotocolhandler.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/413657679
	${RM} $@.d
	$(COMPILE.cc) -g -DOSX -DNET_KQUEUE -DLITTLE_ENDIAN_BYTE_ALIGNED -DHAS_PROTOCOL_RTMP -DHAS_PROTOCOL_HTTP -DHAS_PROTOCOL_TS -I/opt/local/include -I../../../../sources/common/include -I../../../../sources/thelib/include -I../../../../sources/applications/applestreamingclient/include -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/413657679/m3u8appprotocolhandler.o ../../../../sources/applications/applestreamingclient/src/protocols/m3u8/m3u8appprotocolhandler.cpp

${OBJECTDIR}/_ext/441423101/speedcomputer.o: ../../../../sources/applications/applestreamingclient/src/speedcomputer.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/441423101
	${RM} $@.d
	$(COMPILE.cc) -g -DOSX -DNET_KQUEUE -DLITTLE_ENDIAN_BYTE_ALIGNED -DHAS_PROTOCOL_RTMP -DHAS_PROTOCOL_HTTP -DHAS_PROTOCOL_TS -I/opt/local/include -I../../../../sources/common/include -I../../../../sources/thelib/include -I../../../../sources/applications/applestreamingclient/include -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/441423101/speedcomputer.o ../../../../sources/applications/applestreamingclient/src/speedcomputer.cpp

${OBJECTDIR}/_ext/441423101/applestreamingclient.o: ../../../../sources/applications/applestreamingclient/src/applestreamingclient.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/441423101
	${RM} $@.d
	$(COMPILE.cc) -g -DOSX -DNET_KQUEUE -DLITTLE_ENDIAN_BYTE_ALIGNED -DHAS_PROTOCOL_RTMP -DHAS_PROTOCOL_HTTP -DHAS_PROTOCOL_TS -I/opt/local/include -I../../../../sources/common/include -I../../../../sources/thelib/include -I../../../../sources/applications/applestreamingclient/include -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/441423101/applestreamingclient.o ../../../../sources/applications/applestreamingclient/src/applestreamingclient.cpp

${OBJECTDIR}/_ext/413657679/masterm3u8protocol.o: ../../../../sources/applications/applestreamingclient/src/protocols/m3u8/masterm3u8protocol.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/413657679
	${RM} $@.d
	$(COMPILE.cc) -g -DOSX -DNET_KQUEUE -DLITTLE_ENDIAN_BYTE_ALIGNED -DHAS_PROTOCOL_RTMP -DHAS_PROTOCOL_HTTP -DHAS_PROTOCOL_TS -I/opt/local/include -I../../../../sources/common/include -I../../../../sources/thelib/include -I../../../../sources/applications/applestreamingclient/include -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/413657679/masterm3u8protocol.o ../../../../sources/applications/applestreamingclient/src/protocols/m3u8/masterm3u8protocol.cpp

${OBJECTDIR}/_ext/1372129895/keyappprotocolhandler.o: ../../../../sources/applications/applestreamingclient/src/protocols/key/keyappprotocolhandler.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/1372129895
	${RM} $@.d
	$(COMPILE.cc) -g -DOSX -DNET_KQUEUE -DLITTLE_ENDIAN_BYTE_ALIGNED -DHAS_PROTOCOL_RTMP -DHAS_PROTOCOL_HTTP -DHAS_PROTOCOL_TS -I/opt/local/include -I../../../../sources/common/include -I../../../../sources/thelib/include -I../../../../sources/applications/applestreamingclient/include -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/1372129895/keyappprotocolhandler.o ../../../../sources/applications/applestreamingclient/src/protocols/key/keyappprotocolhandler.cpp

${OBJECTDIR}/_ext/61573733/baseeventsink.o: ../../../../sources/applications/applestreamingclient/src/eventsink/baseeventsink.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/61573733
	${RM} $@.d
	$(COMPILE.cc) -g -DOSX -DNET_KQUEUE -DLITTLE_ENDIAN_BYTE_ALIGNED -DHAS_PROTOCOL_RTMP -DHAS_PROTOCOL_HTTP -DHAS_PROTOCOL_TS -I/opt/local/include -I../../../../sources/common/include -I../../../../sources/thelib/include -I../../../../sources/applications/applestreamingclient/include -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/61573733/baseeventsink.o ../../../../sources/applications/applestreamingclient/src/eventsink/baseeventsink.cpp

${OBJECTDIR}/_ext/1372129895/inboundkeyprotocol.o: ../../../../sources/applications/applestreamingclient/src/protocols/key/inboundkeyprotocol.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/1372129895
	${RM} $@.d
	$(COMPILE.cc) -g -DOSX -DNET_KQUEUE -DLITTLE_ENDIAN_BYTE_ALIGNED -DHAS_PROTOCOL_RTMP -DHAS_PROTOCOL_HTTP -DHAS_PROTOCOL_TS -I/opt/local/include -I../../../../sources/common/include -I../../../../sources/thelib/include -I../../../../sources/applications/applestreamingclient/include -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/1372129895/inboundkeyprotocol.o ../../../../sources/applications/applestreamingclient/src/protocols/key/inboundkeyprotocol.cpp

${OBJECTDIR}/_ext/693221815/protocolfactory.o: ../../../../sources/applications/applestreamingclient/src/protocols/protocolfactory.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/693221815
	${RM} $@.d
	$(COMPILE.cc) -g -DOSX -DNET_KQUEUE -DLITTLE_ENDIAN_BYTE_ALIGNED -DHAS_PROTOCOL_RTMP -DHAS_PROTOCOL_HTTP -DHAS_PROTOCOL_TS -I/opt/local/include -I../../../../sources/common/include -I../../../../sources/thelib/include -I../../../../sources/applications/applestreamingclient/include -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/693221815/protocolfactory.o ../../../../sources/applications/applestreamingclient/src/protocols/protocolfactory.cpp

${OBJECTDIR}/_ext/693221815/genericprotocol.o: ../../../../sources/applications/applestreamingclient/src/protocols/genericprotocol.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/693221815
	${RM} $@.d
	$(COMPILE.cc) -g -DOSX -DNET_KQUEUE -DLITTLE_ENDIAN_BYTE_ALIGNED -DHAS_PROTOCOL_RTMP -DHAS_PROTOCOL_HTTP -DHAS_PROTOCOL_TS -I/opt/local/include -I../../../../sources/common/include -I../../../../sources/thelib/include -I../../../../sources/applications/applestreamingclient/include -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/693221815/genericprotocol.o ../../../../sources/applications/applestreamingclient/src/protocols/genericprotocol.cpp

${OBJECTDIR}/_ext/1568282619/tsappprotocolhandler.o: ../../../../sources/applications/applestreamingclient/src/protocols/ts/tsappprotocolhandler.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/1568282619
	${RM} $@.d
	$(COMPILE.cc) -g -DOSX -DNET_KQUEUE -DLITTLE_ENDIAN_BYTE_ALIGNED -DHAS_PROTOCOL_RTMP -DHAS_PROTOCOL_HTTP -DHAS_PROTOCOL_TS -I/opt/local/include -I../../../../sources/common/include -I../../../../sources/thelib/include -I../../../../sources/applications/applestreamingclient/include -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/1568282619/tsappprotocolhandler.o ../../../../sources/applications/applestreamingclient/src/protocols/ts/tsappprotocolhandler.cpp

${OBJECTDIR}/_ext/441423101/clientcontext.o: ../../../../sources/applications/applestreamingclient/src/clientcontext.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/441423101
	${RM} $@.d
	$(COMPILE.cc) -g -DOSX -DNET_KQUEUE -DLITTLE_ENDIAN_BYTE_ALIGNED -DHAS_PROTOCOL_RTMP -DHAS_PROTOCOL_HTTP -DHAS_PROTOCOL_TS -I/opt/local/include -I../../../../sources/common/include -I../../../../sources/thelib/include -I../../../../sources/applications/applestreamingclient/include -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/441423101/clientcontext.o ../../../../sources/applications/applestreamingclient/src/clientcontext.cpp

${OBJECTDIR}/_ext/1147538975/httpbuffappprotocolhandler.o: ../../../../sources/applications/applestreamingclient/src/protocols/httpbuff/httpbuffappprotocolhandler.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/1147538975
	${RM} $@.d
	$(COMPILE.cc) -g -DOSX -DNET_KQUEUE -DLITTLE_ENDIAN_BYTE_ALIGNED -DHAS_PROTOCOL_RTMP -DHAS_PROTOCOL_HTTP -DHAS_PROTOCOL_TS -I/opt/local/include -I../../../../sources/common/include -I../../../../sources/thelib/include -I../../../../sources/applications/applestreamingclient/include -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/1147538975/httpbuffappprotocolhandler.o ../../../../sources/applications/applestreamingclient/src/protocols/httpbuff/httpbuffappprotocolhandler.cpp

${OBJECTDIR}/_ext/413657679/childm3u8protocol.o: ../../../../sources/applications/applestreamingclient/src/protocols/m3u8/childm3u8protocol.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/413657679
	${RM} $@.d
	$(COMPILE.cc) -g -DOSX -DNET_KQUEUE -DLITTLE_ENDIAN_BYTE_ALIGNED -DHAS_PROTOCOL_RTMP -DHAS_PROTOCOL_HTTP -DHAS_PROTOCOL_TS -I/opt/local/include -I../../../../sources/common/include -I../../../../sources/thelib/include -I../../../../sources/applications/applestreamingclient/include -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/413657679/childm3u8protocol.o ../../../../sources/applications/applestreamingclient/src/protocols/m3u8/childm3u8protocol.cpp

${OBJECTDIR}/_ext/1372139511/aesappprotocolhandler.o: ../../../../sources/applications/applestreamingclient/src/protocols/aes/aesappprotocolhandler.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/1372139511
	${RM} $@.d
	$(COMPILE.cc) -g -DOSX -DNET_KQUEUE -DLITTLE_ENDIAN_BYTE_ALIGNED -DHAS_PROTOCOL_RTMP -DHAS_PROTOCOL_HTTP -DHAS_PROTOCOL_TS -I/opt/local/include -I../../../../sources/common/include -I../../../../sources/thelib/include -I../../../../sources/applications/applestreamingclient/include -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/1372139511/aesappprotocolhandler.o ../../../../sources/applications/applestreamingclient/src/protocols/aes/aesappprotocolhandler.cpp

${OBJECTDIR}/_ext/61573733/rtmpeventsink.o: ../../../../sources/applications/applestreamingclient/src/eventsink/rtmpeventsink.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/61573733
	${RM} $@.d
	$(COMPILE.cc) -g -DOSX -DNET_KQUEUE -DLITTLE_ENDIAN_BYTE_ALIGNED -DHAS_PROTOCOL_RTMP -DHAS_PROTOCOL_HTTP -DHAS_PROTOCOL_TS -I/opt/local/include -I../../../../sources/common/include -I../../../../sources/thelib/include -I../../../../sources/applications/applestreamingclient/include -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/61573733/rtmpeventsink.o ../../../../sources/applications/applestreamingclient/src/eventsink/rtmpeventsink.cpp

${OBJECTDIR}/_ext/413657679/basem3u8protocol.o: ../../../../sources/applications/applestreamingclient/src/protocols/m3u8/basem3u8protocol.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/413657679
	${RM} $@.d
	$(COMPILE.cc) -g -DOSX -DNET_KQUEUE -DLITTLE_ENDIAN_BYTE_ALIGNED -DHAS_PROTOCOL_RTMP -DHAS_PROTOCOL_HTTP -DHAS_PROTOCOL_TS -I/opt/local/include -I../../../../sources/common/include -I../../../../sources/thelib/include -I../../../../sources/applications/applestreamingclient/include -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/413657679/basem3u8protocol.o ../../../../sources/applications/applestreamingclient/src/protocols/m3u8/basem3u8protocol.cpp

${OBJECTDIR}/_ext/441423101/applestreamingclientapplication.o: ../../../../sources/applications/applestreamingclient/src/applestreamingclientapplication.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/441423101
	${RM} $@.d
	$(COMPILE.cc) -g -DOSX -DNET_KQUEUE -DLITTLE_ENDIAN_BYTE_ALIGNED -DHAS_PROTOCOL_RTMP -DHAS_PROTOCOL_HTTP -DHAS_PROTOCOL_TS -I/opt/local/include -I../../../../sources/common/include -I../../../../sources/thelib/include -I../../../../sources/applications/applestreamingclient/include -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/441423101/applestreamingclientapplication.o ../../../../sources/applications/applestreamingclient/src/applestreamingclientapplication.cpp

${OBJECTDIR}/_ext/1372139511/inboundaesprotocol.o: ../../../../sources/applications/applestreamingclient/src/protocols/aes/inboundaesprotocol.cpp 
	${MKDIR} -p ${OBJECTDIR}/_ext/1372139511
	${RM} $@.d
	$(COMPILE.cc) -g -DOSX -DNET_KQUEUE -DLITTLE_ENDIAN_BYTE_ALIGNED -DHAS_PROTOCOL_RTMP -DHAS_PROTOCOL_HTTP -DHAS_PROTOCOL_TS -I/opt/local/include -I../../../../sources/common/include -I../../../../sources/thelib/include -I../../../../sources/applications/applestreamingclient/include -fPIC  -MMD -MP -MF $@.d -o ${OBJECTDIR}/_ext/1372139511/inboundaesprotocol.o ../../../../sources/applications/applestreamingclient/src/protocols/aes/inboundaesprotocol.cpp

# Subprojects
.build-subprojects:
	cd ../thelib && ${MAKE}  -f Makefile.nb CONF=Debug
	cd ../common && ${MAKE}  -f Makefile.nb CONF=Debug

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/Debug
	${RM} ../Debug/GNU-MacOSX/applications/applestreamingclient/libapplestreamingclient.dylib

# Subprojects
.clean-subprojects:
	cd ../thelib && ${MAKE}  -f Makefile.nb CONF=Debug clean
	cd ../common && ${MAKE}  -f Makefile.nb CONF=Debug clean

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
