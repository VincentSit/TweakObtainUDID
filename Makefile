include $(THEOS)/makefiles/common.mk

ARCHS = armv7 armv7s arm64
TWEAK_NAME = TweakObtainUDID
TweakObtainUDID_FILES = Tweak.xm
TweakObtainUDID_FRAMEWORKS = Foundation
TweakObtainUDID_PRIVATE_FRAMEWORKS = ManagedConfiguration
include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 profiled"

after-uninstall::
	install.exec "killall -9 profiled"