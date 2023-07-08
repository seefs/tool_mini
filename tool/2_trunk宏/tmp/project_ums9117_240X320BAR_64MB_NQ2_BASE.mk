# *************************************************************************
# Feature Options (For User)
# !!!!!!!! The customer value can be modified in this option part.!!!!!!!!!
# !!!!!!!! If modification is in need,please find support from SPRD CPM or FAE.!!!!!!!!!
# !!!!!!!! 此部分Options 的值客户一般可以修改.!!!!!!!!!
# !!!!!!!! 此部分修改，最好与展讯客户经理(CPM)或技术支持工程师(FAE)沟通寻求支持.!!!!!!!!!
# *************************************************************************
RELEASE_INFO = TRUE                                 ### RELEASE version
                                                     # Option1:TRUE
                                                     # Option2:FALSE

KPD_LDO_MODE =TRUE					                       ###KPD_LDO_MODE Support:
                                                   # Option1:TRUE
                                                   # Option2:FALSE

TRACE_INFO_SUPPORT = TRUE                            ### TRACE INFO SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MAINLCD_DEV_SIZE = 240X320                           ### Resolution Of Main LCD Device,  MAINLCD_SIZE is the size of MMI
                                                     # Option1:128X160    #define MAINLCD_DEV_SIZE_128X160
                                                     # Option2:176X220    #define MAINLCD_DEV_SIZE_176X220
                                                     # Option3:240X320    #define MAINLCD_DEV_SIZE_240X320
                                                     # Option4:320X480    #define MAINLCD_DEV_SIZE_320X480
                                                     
MAINLCD_SIZE = 240X320                               ### Resolution Of Main LCD: 
                                                     # Option1:128X160    #define MAINLCD_SIZE_128X160
                                                     # Option2:176X220    #define MAINLCD_SIZE_176X220
                                                     # Option3:240X320    #define MAINLCD_SIZE_240X320
                                                     # Option4:320X480    #define MAINLCD_SIZE_320X480

MAINLCM_INTERFACE = SPI                              #### LCM interface support
                                                     # Option1:LCM
                                                     # Option2:SPI
                                                     # Option3:NONE

LCD_SPI = 3WIRE_9BIT_2DATA                           #### LCD SPI mode support
                                                     # Option1:3WIRE_9BIT_1DATA
                                                     # Option2:3WIRE_9BIT_2DATA
                                                     # Option3:4WIRE_8BIT_1DATA
                                                     # Option4:4WIRE_8BIT_2DATA

SPI_DATA2_SEL = DI                                   #### LCD SPI data2 line select
                                                     # Option1:CD
                                                     # Option2:DI

SUBLCM_INTERFACE = NONE                              #### Sub LCM interface support
                                                     # Option1:LCM
                                                     # Option2:SPI
                                                     # Option3:NONE

LCD_DATA_WIDTH = 8BIT                                ### FPGA LCM LCD 8BIT

LCD_ROT_MODE = NONE                                  ### LCD display rotation direction
                                                     # Option1:LCD180
                                                     # Option2:NONE
LCD_ESD_CHECK_RECOVER = TRUE                         ### LCD_ESD_CHECK_RECOVER
                                                     # Option1:TRUE
                                                     # Option2:FALSE
CUSTOM_CFLAG = -g                                    ### CUSTOM CFLAG
                                                     # Option1:-g

INTC_TYPE = GIC                                      #### gic interface support
                                                     # Option1:GIC

FONT_TYPE_SUPPORT = NONE                             ### font type support:
                                                     # Option1:NONE     #define FONT_TYPE_SUPPORT_NONE
                                                     # Option2:GRAY     #define FONT_TYPE_SUPPORT_GRAY
                                                     # Option3:VECTOR   #define FONT_TYPE_SUPPORT_VECTOR
                                                     # Option4:CSTAR_BITMAP   #define FONT_TYPE_SUPPORT_CSTAR_BITMAP

VECTOR_FONT_SUPPORT = NONE                           ### vector font support:
                                                     # Option1:NONE
                                                     # Option2:DEFAULT
                                                     # Option3:ETRUMP


