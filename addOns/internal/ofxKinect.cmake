# -----------------------------------------------------------------
# --- NO script applied, as there are different
# --- versions for each plattform
# -----------------------------------------------------------------

# TODO Windows libs
set( OFX_KINECT_CPP
        ${OF_DIRECTORY}/addons/ofxKinect/src/extra/ofxKinectExtras.cpp
        ${OF_DIRECTORY}/addons/ofxKinect/src/ofxKinect.cpp
        ${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/src/audio.c
        ${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/src/cameras.c
        ${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/src/core.c
        ${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/src/flags.c
        ${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/src/keep_alive.c
        ${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/src/loader.c
        ${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/src/registration.c
        ${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/src/tilt.c
        ${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/src/usb_libusb10.c
        ##        ${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/platform/windows/libusb10emu/libusb-1.0/failguard.cpp
        ##        ${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/platform/windows/libusb10emu/libusb-1.0/libusbemu.cpp
        )

# -----------------------------------------------------------------
# --- Set ALL directories of the addOn, which contain .h files
# -----------------------------------------------------------------

include_directories(
        "${OF_DIRECTORY}/addons/ofxKinect/src"
        "${OF_DIRECTORY}/addons/ofxKinect/src/extra"
        "${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/include"
        "${OF_DIRECTORY}/addons/ofxKinect/libs/libfreenect/src"
        "${OF_DIRECTORY}/addons/ofxKinect/libs/libusb-1.0/include/libusb-1.0" )

# -----------------------------------------------------------------
# --- Set the keyword, so you can simply include the addOn
# -----------------------------------------------------------------

add_library( ofxKinect STATIC ${OFX_KINECT_CPP} )

# -----------------------------------------------------------------
# --- Setting a compiled lib
# -----------------------------------------------------------------

if( APPLE )
set(    ofxKinectLib
        "${OF_DIRECTORY}/addons/ofxKinect/libs/libusb-1.0/lib/osx/usb-1.0.a" )
endif()