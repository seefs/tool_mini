include project_ums9117_240X320BAR_64MB.mk

WIFI_SUPPORT = MARLIN2                               ### wifi Support
                                                     # Option1:NONE           #define WIFI_SUPPORT_NONE
                                                     # Option6:MARLIN2        #defube WIFI_SUPPORT_MARLIN2
WIFI_VENDOR = UNISOC                                 ### wifi vendor
                                                     # Option1:NONE

HOTSPOT_SUPPORT = TRUE                               ### hotspot Support
                                                     # Option1:TRUE
                                                     # Option6:FALSE        #need WIFI_SUPPORT 

BT_HCI_TRANS = SDIO                                  #### HCI transport layer?
                                                     # Option1:BCSP
                                                     # Option2:UART
                                                     # Option3:SIPC
                                                     # Option4:SDIO
