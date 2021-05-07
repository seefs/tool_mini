# *************************************************************************
# This is the board created for the basic dual simcard release version.
# *************************************************************************
include project_ums9117_240X320BAR_64MB_NQ2_BASE.mk

NQ2_VERSION = BASIC                                  # basic version support
                                                     # Option1:BASIC
                                                     # Option2:VALUE
                                                     # Option3:NONE

AUDIO_NV_CONFIG_BASIC = TRUE

CAMERA_SUPPORT = FALSE                               ### CAMERA Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

include make/nv_cus_config/nv_cus_config_NQ2/MS.pid
