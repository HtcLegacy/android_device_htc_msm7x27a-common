#
# Property overrides msm7x27a
#

# Telephony
PRODUCT_PROPERTY_OVERRIDES += \
   mobiledata.interfaces=rmnet0 \
   rild.libpath=/system/lib/libhtc_ril.so \
   ro.telephony.ril_class=HtcMsm7x27aRIL

PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    ro.telephony.call_ring.multiple=false \
    ro.vold.umsdirtyratio=50 \
    persist.sys.purgeable_assets=1 \
    ro.telephony.call_ring.delay=3000 \
    ro.config.low_ram=true \
    ro.com.android.mobiledata=false \
    ro.com.android.dataroaming=false

# Dalvik Tweaks	
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.jit.codecachesize=0 \
    dalvik.vm.heapstartsize=5m \
    dalvik.vm.heapgrowthlimit=48m \
    dalvik.vm.heapsize=64m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=2m

# Use awesome player instead of nuplayer	
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.media.use-awesome=true
	
# Disable atlas services on low-ram targets
PRODUCT_PROPERTY_OVERRIDES += \
    config.disable_atlas=true	

# Newer camera API isn't supported.
PRODUCT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1
