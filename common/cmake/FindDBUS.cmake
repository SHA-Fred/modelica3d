FIND_PATH( DBUS_INCLUDE_DIR dbus/dbus.h PATH_SUFFIXES /include/dbus-1.0)
FIND_PATH( DBUS_INCLUDE_LIB_DIR dbus/dbus-arch-deps.h PATH_SUFFIXES /lib/dbus-1.0/include /lib64/dbus-1.0/include /lib/x86_64-linux-gnu/dbus-1.0/include/ /lib/i386-linux-gnu/dbus-1.0/include/)

FIND_LIBRARY(DBUS_LIBRARY NAME dbus-1 PATHS /lib)

IF( DBUS_INCLUDE_DIR AND DBUS_INCLUDE_LIB_DIR AND DBUS_LIBRARY )
SET( DBUS_FOUND TRUE )
ENDIF( DBUS_INCLUDE_DIR AND DBUS_INCLUDE_LIB_DIR AND DBUS_LIBRARY )

IF( DBUS_INCLUDE_DIR AND DBUS_INCLUDE_LIB_DIR )
SET( DBUS_INCLUDES ${DBUS_INCLUDE_DIR} ${DBUS_INCLUDE_LIB_DIR} )
ENDIF( DBUS_INCLUDE_DIR AND DBUS_INCLUDE_LIB_DIR )

IF( DBUS_FOUND )
    MESSAGE( STATUS "Found dbus: ${DBUS_LIBRARY}" )
    ELSE( DBUS_FOUND )
    IF( DBUS_FIND_REQUIRED )
    	MESSAGE( FATAL_ERROR "Could not find dbus  ${DBUS_INCLUDE_LIB_DIR}" )
    ENDIF( DBUS_FIND_REQUIRED )
ENDIF( DBUS_FOUND )


