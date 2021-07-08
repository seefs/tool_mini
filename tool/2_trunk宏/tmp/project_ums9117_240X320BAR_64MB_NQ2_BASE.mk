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

MMI_MULTI_GREEN_KEY = SINGLE                         ### MMI_MULTI_GREEN_KEY Support for Dial Key
                                                     # Option1:SINGLE    #define MMI_MULTI_GREEN_KEY_SINGLE
                                                     # Option2:DUAL      #define MMI_MULTI_GREEN_KEY_DUAL

MMI_MULTI_SIM_SYS = DUAL                             ### Platform Support Multi Sim Card Number
                                                     # Option1:SINGLE    #define MMI_MULTI_SIM_SYS_SINGLE
                                                     # Option2:DUAL      #define MMI_MULTI_SIM_SYS_DUAL
                                                     
KEYPAD_TYPE = TYPICAL_KEYPAD                         ### KEYPAD TYPE
                                                     # Option1:TYPICAL_KEYPAD        #define KEYPAD_TYPE_TYPICAL_KEYPAD
                                                     # Option3:COMPACT_KEYPAD        #define KEYPAD_TYPE_COMPACT_KEYPAD
                                                     # Option4:FOUR_KEY_UNIVERSE     #define KEYPAD_TYPE_FOUR_KEY_UNIVERSE
                                                     
MMI_PDA_SUPPORT = FALSE                               ### Platform Support PDA Style MMI
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MMI_ANDROID_SUPPORT  = FALSE                          ### Platform Support Android style PDA UI
                                                     # Option1:TRUE   
                                                     # Option2:FALSE

MMI_ISTYLE_SUPPORT   = FALSE                          ### Platform Support Istyle PDA UI
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MMI_SMART_IDLE_SUPPORT = NONE                        ### Smart Idle Support
                                                     # Option1:LARGE_ICON     #define MMI_SMART_IDLE_SUPPORT_LARGE_ICON 
                                                     # Option2:SMALL_ICON     #define MMI_SMART_IDLE_SUPPORT_SMALL_ICON
                                                     # Option3:NONE           #define MMI_SMART_IDLE_SUPPORT_NONE

MMI_COMMON_IDLE_SUPPORT = TRUE                       ### Common Idle Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE
                                                       
MMI_GRID_IDLE_SUPPORT = FALSE                        ### Platform Support Grid idle support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

UPB_IDLE_SUPPORT = FALSE                             ### UPB_SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

TOUCHPANEL_TYPE    = NONE                            ### Touch panel type
                                                     # Option1:HW            #define TOUCHPANEL_TYPE_HW
                                                     # Option2:NONE          #define TOUCHPANEL_TYPE_NONE

TPC_TYPE = NONE                                      ### tpc sampling type
                                                     # Option1:SINGLE  #define TPC_TYPE_SINGLE
                                                     # Option2:DOUBLE  #define TPC_TYPE_DOUBLE
                                                     # Option3:NONE    #define TPC_TYPE_NONE

TP_EXCHANGE = NONE                                   ### tp channel exchange type
                                                     # Option1:XY      #define TP_EXCHANGE_XY
                                                     # Option2:NONE    #define TP_EXCHANGE_NONE

TOUCHPANEL_SW_HW = FALSE                             ### Touch panel SW
                                                     # Option1:TRUE          #define TOUCHPANEL_SW_HW_TRUE
                                                     # Option2:FALSE         #define TOUCHPANEL_SW_HW_FALSE

CAP_TP_SUPPORT = NONE                                ### Capacitive Touch panel chip
                                                     # Option0:NONE          #define CAP_TP_SUPPORT_NONE
                                                     # Option1:FT5206        #define CAP_TP_SUPPORT_FT5206
                                                     # Option1:CY8C21434     #define CAP_TP_SUPPORT_CY8C21434

TOUCH_PANEL_HWICON_SUPPORT = NONE                    ### touch panel hw support
                                                     # Option1:DIAL_PB_SMS_MAINMENU         #define TOUCH_PANEL_HWICON_SUPPORT_DIAL_PB_SMS_MAINMENU
                                                     # Option2:MAINMENU_PB_SMS_CAMERA_MP4   #define TOUCH_PANEL_HWICON_SUPPORT_MAINMENU_PB_SMS_CAMERA_MP4
                                                     # Option3:MAINMENU_SMS_PB_DIAL_MP3     #define TOUCH_PANEL_HWICON_SUPPORT_MAINMENU_SMS_PB_DIAL_MP3
                                                     # Option4:VIRTUAL_2KEY                 #define TOUCH_PANEL_HWICON_SUPPORT_VIRTUAL_2KEY
                                                     # Option5:NONE

TP_VK_SUPPORT = FALSE                                ### touch panel virtual key driver support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

BB_DRAM_TYPE = 64MB                                  ### DRAM Type
                                                     # Option1:32MB     #define BB_DRAM_TYPE_32MB
                                                     # Option2:64MB     #define BB_DRAM_TYPE_64MB


MMI_RES_DIR = mmi_res_240X320                        ### resource directory
                                                     # Option1:mmi_res_240x320_universe
                                                     # Option3:mmi_res_320x480_universe
                                                     # Option4:mmi_res_128x160
                                                     # Option5:mmi_res_176x220
                                                     # Option6:mmi_res_240x320
                                                     # Option8:mmi_res_320x480
                                                                                                         
MMI_RES_ORIENT = PORTRAIT                            ### screen orientation
                                                     # Option1:PORTRAIT     #define MMI_RES_ORIENT_PORTRAIT
                                                     # Option2:LANDSCAPE    #define MMI_RES_ORIENT_LANDSCAPE
                                                     # Option3:BOTH         #define MMI_RES_ORIENT_BOTH
                                                     
MAINLCD_LOGIC_ANGLE = 0                              ### Mainlcd logic angle
                                                     # Option1:0        #define MAINLCD_LOGIC_ANGLE_0
                                                     # Option2:90       #define MAINLCD_LOGIC_ANGLE_90
                                                     # Option3:180      #define MAINLCD_LOGIC_ANGLE_180
                                                     # Option4:270      #define MAINLCD_LOGIC_ANGLE_270

LCD_SLIDE_SUPPORT = FALSE                            ### LCD Slide Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

LCD_SLIDE_SIMU = FALSE                               ### LCD Slide SIMU, use star key replace lcd_slide key:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

FLIP_PHONE_SUPPORT = FALSE                           ### FLIP PHONE SUPPORT
                                                     # Option1:TRUE
                                                     # Option2:FALSE

SUBLCD_PHONE_SIMU_SUPPORT = FALSE                    ### SUB LCD PHONE SIMU SUPPORT
                                                     # Option1:TRUE
                                                     # Option2:FALSE

SUBLCD_DEV_SIZE = NONE                               ### Resolution Of Main LCD(None To Disable Related Opeartions Of SUBLCD):
                                                     # Option1:NONE       #define SUBLCD_DEV_SIZE_NONE
                                                     # Option2:96X64      #define SUBLCD_DEV_SIZE_96X64
                                                     # Option3:96X96      #define SUBLCD_DEV_SIZE_96X96

SUBLCD_LOGIC_ANGLE = 0                               ### Sublcd logic angle
                                                     # Option1:0        #define SUBLCD_LOGIC_ANGLE_0
                                                     # Option2:90       #define SUBLCD_LOGIC_ANGLE_90
                                                     # Option3:180      #define SUBLCD_LOGIC_ANGLE_180
                                                     # Option4:270      #define SUBLCD_LOGIC_ANGLE_270

SUBLCD_SIZE = NONE                                   ### Resolution Of Main LCD(None To Disable Related Opeartions Of SUBLCD):
                                                     # Option1:NONE       #define SUBLCD_SIZE_NONE
                                                     # Option2:96X64      #define SUBLCD_SIZE_96X64
                                                     # Option3:96X96      #define SUBLCD_SIZE_96X96

MAIN_LCD_DISPLAY_LAYER_NUM = 1                       ### Support display layer num of main lcd
                                                     # Option1:1        #define MAIN_LCD_DISPLAY_LAYER_NUM_1
                                                     # Option2:2        #define MAIN_LCD_DISPLAY_LAYER_NUM_2
                                                     # Option3:3        #define MAIN_LCD_DISPLAY_LAYER_NUM_3

SUB_LCD_DISPLAY_LAYER_NUM = 0                        ### Support display layer num of sub lcd
                                                     # Option1:0         #define SUB_LCD_DISPLAY_LAYER_NUM_0
                                                     # Option2:1         #define SUB_LCD_DISPLAY_LAYER_NUM_1

DISPLAY_PIXELDEPTH_MAX = 16                          ### depth of display pixel on lcd
                                                     # Option1:16       #define DISPLAY_PIXELDEPTH_MAX_16
                                                     # Option2:32       #define DISPLAY_PIXELDEPTH_MAX_32
                                                     
SPECIAL_EFFECT_ICON_SIZE = 48X48                     ### Wide x Height of special effect icon! Must equal Main menu icon size
                                                     ### If none,not support Mainmenu 3d icon moving
                                                     # Option1:48X48    #define MAIN_MENU_48X48 Default
                                                     # Option2:60X60    #define MAIN_MENU_60X60 Only for HVGA

PRELOAD_SUPPORT = FALSE                              ### pre-load support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

UI_P3D_SUPPORT = TRUE                                ### UI P3D Effect Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE
                                                     
MMI_PUBWIN_ANIM_SUPPORT = FALSE                      ### MMI PUBWIN Anim Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

FM_SUPPORT = TRUE                                    ### FM Function Support:
                                                     # Option0:NONE      #define FM_SUPPORT_NONE
                                                     # Option4:BK1080    #define FM_SUPPORT_BK1080

FM_S_ANT_SUPPORT = TRUE                             ### FM Short Antenna Function Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

FM_RDS_SUPPORT = FALSE                               ### FM RDS Function Support:
                                                     # Option0:TRUE      #define FM_RDS_SUPPORT
                                                     # Option4:FALSE

MV_SUPPORT = NONE                                    ### Magic voice Support
                                                     # Option1:NONE     #define MV_SUPPORT_NONE
                                                     # Option2:IFLYTEK  #define MV_SUPPORT_IFLYTEK

ASP_SUPPORT = FALSE                                   ### Answer machine Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MULTI_THEME_SUPPORT = FALSE                           ### theme Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

PB_SEARCH_SURPPORT = CHAR                            ### Phonebook Surpported search algorithm:
                                                     # Option1:NONE        #define PB_SEARCH_SURPPORT_NONE    no algorithm surpported
                                                     # Option2:NUMBER    #define PB_SEARCH_SURPPORT_NUMBER  rush search surpported
                                                     # Option3:CHAR      #define PB_SEARCH_SURPPORT_CHAR

HOME_LOCATION_INQUIRE_SUPPORT = NONE                ### HOME_LOCATION_INQUIRE_SUPPORT Support: ONLY VALIDATE WHEN CHINESE LANGUAGE SUPPORTED
                                                     # Option1:CODE    #define HOME_LOCATION_INQUIRE_SUPPORT_CODE
                                                     # Option2:TCARD   #define HOME_LOCATION_INQUIRE_SUPPORT_TCARD   //归属地信息放入T卡中。
                                                     # Option3:NONE    #define HOME_LOCATION_INQUIRE_SUPPORT_NONE

CAMERA_SENSOR_ANGLE = 0                             ### Sensor Angle
                                                     # Option1:0        #define CAMERA_SENSOR_ANGLE_0
                                                     # Option2:90      #define CAMERA_SENSOR_ANGLE_90

SENSOR_INSTALL_ANGEL = 0                           ### Sensor install Angle
                                                     # Option1:0
                                                     # Option2:90
                                                     # Option2:180
                                                     # Option2:270

ATV_SUPPORT = NONE                                   ### ATV_SUPPORT Player And Driver Support:
                                                     # Option1:NMI601      #define ATV_SUPPORT_NMI601
                                                     # Option2:NONE

VIDEO_PLAYER_SUPPORT = TRUE                          ### video player:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

KING_MOVIE_SUPPORT = NONE                             ### kingmovie play:
                                                     # Option1:STAND
                                                     # Option2:EXTEND
                                                     # Option3:ALL
                                                     # Option4:NONE

TYPE_3GP_SUPPORT = MP4                               ### 3GP type format Support:
                                                     # Option1:NONE       #define TYPE_3GP_SUPPORT_NONE
                                                     # Option2:MP4        #define TYPE_3GP_SUPPORT_MP4
                                                     # Option3:MJPEG      #define TYPE_3GP_SUPPORT_MJPEG

PIC_VIEWER_SUPPORT = TRUE                            ### Picture Viewer Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

PIC_GLIDE_SUPPORT = FALSE                             ### Picture glide preview support
                                                     # Option1:TRUE
                                                     # Option2:FALSE
                                                     
PIC_ZOOM_SUPPORT = FALSE                              ### Picture zoom
                                                     # Option1:TRUE  
                                                     # Option2:FALSE
                                                     
PIC_CROP_SUPPORT = FALSE                              ### Picture crop support
                                                     # Option1:TRUE  
                                                     # Option2:FALSE

WIFI_SUPPORT = NONE                                  ### wifi Support
                                                     # Option1:NONE           #define WIFI_SUPPORT_NONE
                                                     # Option6:RTL8189        #defube WIFI_SUPPORT_RTL8189

WIFI_VENDOR = NONE                                   ### wifi vendor
                                                     # Option1:NONE
                                                     
WLAN_EAP_SUPPORT = FALSE                             ### Support EAP:
                                                     # Option1:FALSE
                                                     # Option1:TRUE  

WLAN_PORTAL_SUPPORT = FALSE                          ### wlan portal support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

WLAN_RESELECT_SUPPORT = FALSE                        ### wlan reselect support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

SQLITE_SUPPORT = FALSE                               ### Sqlite
                                                     # Option1:TRUE
                                                     # Option2:FALSE

BROWSER_SUPPORT = TRUE                               ### Browser SW Supplier:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

BROWSER_SUPPORT_DORADO = TRUE                        ### dorado Browser support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

BROWSER_OPERA_START_PAGE = FALSE                     ### Browser SW Supplier:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

BROWSER_OPERA_FAVORITE_WITH_DEFAULT = FALSE          ### Browser SW Supplier:
                                                     # Option1:TRUE
                                                     # Option2:FALSE
JAVA_SUPPORT = NONE                                ### JAVA SW Supplier:
                                                     # Option1:MYRIAD      #define JAVA_SUPPORT_MYRIAD
                                                     # Option2:NONE        #define JAVA_SUPPORT_NONE

JAVA_SUPPORT_TYPE = NONE                              ###  JAVA_SUPPORT_TYPE
                                                     # Option1: SVM        #difine JAVA_SUPPORT_TYPE_Myriad svm

SUPPORT_BACKGROUND_RUN = FALSE                       ###  JAVA background run support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

JAVA_SUPPORT_CMCC = FALSE                             ### JAVA_SUPPORT_CMCC
                                                     # Option1: TRUE        #difine JAVA_SUPPORT_CMCC                                                   
                                                     # Option2: FALSE       #define JAVA_SUPPORT_CMCC_NOE
                                                                           
WEATHER_SUPPORT = FALSE                              ### Weather forecast support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

USB_WEBCAMERA_SUPPORT = FALSE                        ### USB Web Camera Support:
                                                     # Option1:FALSE

USB_MTP_SUPPORT = FALSE                              ### USB MTP Support:
                                                     # Option1:FALSE
                                                     
SCREENSAVER_SUPPORT = TRUE                           ### screensaver support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

PRODUCT_CONFIG = ums9117_nq2                         ### MS_Customize/source/product/config;scf file;nv;resource
                                                     # default: project name

PRODUCT_BASELIB_DIR = $(PROJECT)                     ### Dir name for base lib in MS_Code\lib\
                                                     # default: project name

MOTION_SENSOR_TYPE = NONE                            ### MOTION SENSOR SUPPORT:
                                                     # Option1:NONE
                                                     # Option2:ADXL346

MOTION_SENSOR_TYPE_OPTICAL = NONE                    ### MOTION SENSOR OPTICAL SUPPORT:
                                                     # Option1:NONE
                                                     # Option2:LTR501

FONT_HAN_SIMP_ONLY = FALSE                            ### FONT SIMP Only:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

BLUETOOTH_SUPPORT = SPRD_BT                          ### Bluetooth Chip Type:
                                                     # Option1:NONE      #define BLUETOOTH_SUPPORT_NONE
                                                     # Option6:SPRD_BT          #define BLUETOOTH_SUPPORT_SPRD_BT 

BT_PBAP_SUPPORT = FALSE 								 ### 
                                                     # Option1:TRUE
                                                     # Option2:FALSE
													 
BT_DIALER_SUPPORT = FALSE                             ### 
                                                     # Option1:TRUE
                                                     # Option2:FALSE	


BT_CHIP = UNISOC                                     ### phy Bluetooth chip
                                                     # Option1:NONE      #define BT_CHIP_NONE
                                                     # Option2:BEKEN     #define BT_CHIP_BEKEN
                                                     # optine3:RDA       #define BT_CHIP_RDA
                                                     # optine4:UNISOC    #define BT_CHIP_UNISOC
													 
BT_HCI_TRANS = SIPC                                  #### HCI transport layer?
                                                     # Option1:BCSP
                                                     # Option2:UART
													 # Option3:SIPC

BT_SCO_OVER = PCM                                    ### SCO OVER PCM OR UART
                                                     # Option1:PCM

BT_SHARE_XTL_SUPPORT = TRUE                          ### Switch Of BT Share Crystal Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

GPS_SUPPORT = FALSE                                  ### Switch Of GPS Module Support
                                                     # Option1:FALSE

TP_SELFADAPTIVE_ENABLE = FALSE                       ### TP_SELFADAPTIVE_ENABLE Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MMI_AZAN_SUPPORT = FALSE                             ### MMI AZAN Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE
                                                     
IM_ENGINE = NONE                             		 ### Im Engine Support:
                                                     # Option1:CSTAR         #define IM_ENGINE_CSTAR
                                                     # Option2:T9    				 #define IM_ENGINE_T9                                                     
                                                     # Optino3:NONE          #define IM_ENGINE_NONE
                                                     # Option: IEKIE         #define IM_ENGINE_IEKIE(MUST use spml display engine)
                                                                                    
IM_UDB_SUPPORT   = TRUE             								### Pre-filled Udb Support, only support when IM_ENGINE is T9 and umem_support set TRUE
                                        						# Option1:TRUE
                                        						# Option2:FALSE  
                                                     
IM_TUDB_SUPPORT   = FALSE             							### Pre-filled TUdb Support, only support when IM_ENGINE is T9
                                        						# Option1:TRUE
                                        						# Option2:FALSE 
                                        
IM_SMART_TYPE_SUPPORT    = TRUE        							### SMART IME SUPPORT:
                                        						# Option1:TRUE
                                        					# Option2:FALSE    

IM_HANDWRITING = NONE                               ### Handwriting SW Supplier(None to Disable):
                                                     # Option1:HANWANG   #define IM_HANDWRITING_HANWANG
                                                     # Option2:NONE      #define IM_HANDWRITING_NONE

MMIIM_HW_FULLSCREEN_SUPPORT = FALSE                  ### FULL SCREEN HANDWRITING SUPPORT
                                                     # Option1:TRUE    only support cstar,hanwang and pda
                                                     # Option2:FALSE 

MMI_DISPLAY_SIMP_CHINESE_SUPPORT = TRUE             ### DISPLAY SIMPLE CHINESE SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_TRAD_CHINESE_SUPPORT = FALSE                      ### INPUTMETHOD TRAD CHINESE SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MMI_DISPLAY_TRAD_CHINESE_SUPPORT = TRUE             ### DISPLAY TRAD CHINESE SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_ARABIC_SUPPORT = FALSE                            ### ARABIC SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_THAI_SUPPORT = FALSE                              ### THAI SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_VIETNAMESE_SUPPORT = FALSE                         ### VIETNAMESE SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_PORTUGUESE_SUPPORT = FALSE                        ### PORTUGUESE SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_RUSSIAN_SUPPORT = FALSE                           ### RUSSIAN SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_HINDI_SUPPORT = FALSE                             ### HINDI SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_INDONESIAN_SUPPORT = FALSE                         ### INDONESIAN SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_GREEK_SUPPORT = FALSE                             ### GREEK SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_PERSIAN_SUPPORT = FALSE                           ### PERSIAN SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_MALAY_SUPPORT = FALSE                             ### MALAY SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_FRENCH_SUPPORT = FALSE                            ### FRENCH SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_TAGALOG_SUPPORT = FALSE                           ### TAGALOG SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_URDU_SUPPORT = FALSE                              ### URDU SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_HUNGARIAN_SUPPORT = FALSE                         ### HUNGARIAN SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_ITALIAN_SUPPORT = FALSE                           ### ITALIAN SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_TURKISH_SUPPORT = FALSE                           ### TURKISH SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_SPANISH_SUPPORT = FALSE                            ### SPANISH SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_GERMAN_SUPPORT = FALSE                            ### GERMAN SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_ROMANIAN_SUPPORT = FALSE                          ### ROMANIAN SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_SLOVENIAN_SUPPORT = FALSE                         ### SLOVENIAN SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_HEBREW_SUPPORT = FALSE                            ### HEBREW SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_BENGALI_SUPPORT = FALSE                           ### BENGALI SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_CZECH_SUPPORT = FALSE                             ### CZECH SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_DUTCH_SUPPORT = FALSE                             ### DUTCH SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_TELUGU_SUPPORT = FALSE                            ### TELUGU SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_MARATHI_SUPPORT = FALSE                           ### MARATHI SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_TAMIL_SUPPORT = FALSE                             ### TAMIL SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_GUJARATI_SUPPORT = FALSE                          ### GUJARATI SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_KANNADA_SUPPORT = FALSE                           ### KANNADA SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_MALAYALAM_SUPPORT = FALSE                         ### MALAYALAM SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_ORIYA_SUPPORT = FALSE                             ### ORIYA SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_PUNJABI_SUPPORT = FALSE                           ### PUNJABI SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_AFRIKAANS_SUPPORT = FALSE                         ### AFRIKAANS SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_ALBANIAN_SUPPORT = FALSE                          ### ALBANIAN SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_ARMENIAN_SUPPORT = FALSE                          ### ARMENIAN SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_AZERBAIJANI_SUPPORT = FALSE                       ### AZERBAIJANI SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_BASQUE_SUPPORT = FALSE                            ### BASQUE SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_BULGARIAN_SUPPORT = FALSE                         ### BULGARIAN SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_CATALAN_SUPPORT = FALSE                           ### CATALAN SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_CROATIAN_SUPPORT = FALSE                          ### CROATIAN SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_DANISH_SUPPORT = FALSE                            ### DANISH SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_ESTONIAN_SUPPORT = FALSE                          ### ESTONIAN SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_FINNISH_SUPPORT = FALSE                           ### FINNISH SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_GALICIAN_SUPPORT = FALSE                          ### GALICIAN SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_GEORGIAN_SUPPORT = FALSE                          ### GEORGIAN SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_HAUSA_SUPPORT = FALSE                             ### HAUSA SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_ICELANDIC_SUPPORT = FALSE                         ### ICELANDIC SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_IGBO_SUPPORT = FALSE                              ### IGBO SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_IRISH_SUPPORT = FALSE                             ### IRISH SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_KAZAKH_SUPPORT = FALSE                            ### KAZAKH SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_LATVIAN_SUPPORT = FALSE                           ### LATVIAN SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_LITHUANIAN_SUPPORT = FALSE                        ### LITHUANIAN SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_MACEDONIAN_SUPPORT = FALSE                        ### MACEDONIAN SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_MOLDOVAN_SUPPORT = FALSE                          ### MOLDOVAN SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_NORWEGIAN_SUPPORT = FALSE                         ### NORWEGIAN SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_POLISH_SUPPORT = FALSE                            ### POLISH SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_SERBIAN_SUPPORT = FALSE                           ### SERBIAN SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_SESOTHO_SUPPORT = FALSE                           ### SESOTHO SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_SLOVAK_SUPPORT = FALSE                            ### SLOVAK SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_SWEDISH_SUPPORT = FALSE                           ### SWEDISH SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_UKRAINIAN_SUPPORT = FALSE                         ### UKRAINIAN SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_YORUBA_SUPPORT = FALSE                            ### YORUBA SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_XHOSA_SUPPORT = FALSE                             ### XHOSA_ SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_ZULU_SUPPORT = FALSE                              ### ZULU SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_ASSAMESE_SUPPORT = FALSE                          ### ASSAMESE SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_SWAHILI_SUPPORT = FALSE                           ### SWAHILI SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_MYANMAR_SUPPORT = FALSE                           ### MYANMAR SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_AMHARIC_SUPPORT = FALSE                           ### AMHARIC SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_KHMER_SUPPORT = FALSE                             ### KHMER SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_LAO_SUPPORT = FALSE                               ### LAO SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_UYGHUR_SUPPORT = FALSE                            ### UYGHUR SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_SINHALESE_SUPPORT = FALSE                         ### TIBETAN SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_NEPALI_SUPPORT = FALSE                             ### NEPALI SUPPORT:
                                                     # Option1:TRUE (need IM_ENGINE = IEKIE)
                                                     # Option2:FALSE 													 

IM_TIBETAN_SUPPORT = FALSE                           ### TIBETAN SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_LATIN_SPANISH_SUPPORT = FALSE                     ### IM_LATIN_SPANISH_SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_LATIN_SERBIAN_SUPPORT = FALSE                     ### IM_LATIN_SERBIAN_SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_BRAZILIAN_PORTUGUESE_SUPPORT = FALSE              ### IM_BRAZILIAN_PORTUGUESE:
                                                     # Option1:TRUE
                                                     # Option2:FALSE	
 
MMI_3DUI_SUPPORT = TRUE                              ### algorithm collection(sin cos)
                                                     # Option1:TRUE
                                                     # Option2:FALSE
                        
WEATHER_INFORMATION_BUFFER_STORE_SUPPORT = FALSE      ### BUFFER STORE
                                                     # Option1:TRUE
                                                     # Option2:FALSE

CM_SUPPORT  = FALSE                                  ### Collision special effect Type:
                                                     # Option0:TRUE
                                                     # Option1:FALSE

SE_RIPPLE_SUPPORT = TRUE                            ### Ripple special effect Type:
                                                     # Option0:TRUE
                                                     # Option1:FALSE

SE_FIRE_SUPPORT = FALSE                              ### Fire special effect Type:
                                                     # Option0:TRUE
                                                     # Option1:FALSE

SE_VISUAL_SUPPORT = FALSE                            ### Visual special effect Type:
                                                     # Option0:TRUE     
                                                     # Option1:FALSE  
                                                     
SE_PAGE_TURN_SUPPORT = TRUE                          ### Page turn special effect Type:
                                                     # Option0:TRUE     
                                                     # Option1:FALSE 
                                                     
SE_ROLL_SUPPORT = FALSE                              ### Roll special effect Type:
                                                     # Option0:TRUE     
                                                     # Option1:FALSE 
                                                     
SE_SOLID_SUPPORT = TRUE                              ### Solid special effect Type:
                                                     # Option0:TRUE     
                                                     # Option1:FALSE 
                                                     
SE_GRID_SUPPORT = TRUE                               ### Grid special effect Type:
                                                     # Option0:TRUE
                                                     # Option1:FALSE

SE_LEAF_SUPPORT = FALSE                              ### Leaf special effect Type:
                                                     # Option0:TRUE     
                                                     # Option1:FALSE  
                                                                                                                          
SE_CRT_SUPPORT = TRUE                                ### CRT special effect Type:
                                                     # Option0:TRUE     
                                                     # Option1:FALSE   
                                                     
ANALOG_CLK_SUPPORT = FALSE                            ### analog clock support:
                                                     # Option0:TRUE     
                                                     # Option1:FALSE  
                                                     
ROTATE_2D_SUPPORT = TRUE                             ### Arbitrary rotate support:
                                                     # Option0:TRUE     
                                                     # Option1:FALSE 
                                                     
MMI_POWER_SAVING_MODE_SUPPORT = FALSE                 ### Power Saving mode Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

EMAIL_SUPPORT = FALSE                                 ### EMAIL Client:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

PUSH_EMAIL_SUPPORT = FALSE                           ### PUSH MAIL SUPPORT
                                                     # Option2:FALSE

PUSH_EMAIL_3_IN_1_SUPPORT = FALSE                    ### PUSH EMAIL 3_IN_1 SUPPORT
                                                     # Option2:FALSE

DEMOD_HW = NONE                                      ### demod chip type:
                                                     # Option1:NONE
                                                     # Option1:SIANO      DEMOD_HW_SIANO
                                                     # Option2:INNOFIDEI  DEMOD_HW_INNOFIDEI

OPERA_MINI_SUPPORT = VER42                            #opera mini support
                                                     # Option1:VER6     OPERA_MINI_SUPPORT_VER6
                                                     # Option2:VER42    OPERA_MINI_SUPPORT_VER42
                                                     # Option3:NONE     OPERA_MINI_SUPPORT_NONE

BROWSER_ALL_RUNNING_SUPPORT = FALSE                  ### Browser running at the same time Supplier:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

TRACE_TYPE = ID                                      ### TRACE TYPE SUPPORT:
                                                     # Option1:CLASSIC
                                                     # Option2:ID

AUDIO_RATE_SUPPORT = FALSE                            ### AUDIO rate set
                                                     # Option1:TRUE
                                                     # Option2:FALSE

PDA_UI_DROPDOWN_WIN = FALSE                           ### Platform Support dropdown window Style MMI
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MMIEMAIL_SUPPORT = FALSE                              ### EMAIL Client Need Browser not set NONE
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MMI_TASK_MANAGER = FALSE                              ### Task manager
                                                     # Option1:TRUE
                                                     # Option2:FALSE
                                                     
MMI_MEMO_SUPPORT = FALSE                              ### Memo
                                                     # Option1:TRUE
                                                     # Option2:FALSE 
                                                     
QBTHEME_SUPPORT = FALSE                               ### qb theme support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IKEYBACKUP_SUPPORT = FALSE                            ### 1-key backup Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

UZONE_SUPPORT = NONE                                ### UZONE: 
                                                     # Option1: BOOKRACK      #define UZONE_SUPPORT_BOOKRACK
                                                     # Option2: SINGLE        #define UZONE_SUPPORT_SINGLE
                                                     # Option3: GLASS         #define UZONE_SUPPORT_GLASS
                                                     # Option3: NONE          Not suppport

SMS_AUTO_SIGNATURE_SUPPORT = TRUE                   ### sms auto signature Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE
SNS_SUPPORT = FALSE                                   ### sns support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

CHATMODE_ONLY_SUPPORT = TRUE                        ### CHATMODE_ONLY_SUPPORT Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

SMS_CHAT_SUPPORT = TRUE                             ### CHATMODE SUPPORT Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

PHONEBOOK_ITEM_NUMBER = 2000                         ### phonebook  max item number
                                                     # Option1:50
                                                     # Option2:100
                                                     # Option3:150
                                                     # OPtion4:300   only for NV > 64M
                                                     # OPtion5:500   only for NV > 64M  
                                                     # OPtion6:2000, no GPRS

MMI_FUNC_COMPATIBLE_SUPPORT = TRUE                   ### MMI Old Export Function Support
                                                     # Option1:TRUE

PDA_UI_SUPPORT_MANIMENU_GO = FALSE                    ### PDA UI SUPPORT main menu :
                                                     # Option1:TRUE
                                                     # Option2:FALSE

PDA_UI_MAINMENU_SUPPORT_SELECT_ANIM = FALSE          ### MAINMENU_SUPPORT_SELECT_ANIM
                                                     # Option1:TRUE    #ANIM  SELECT
                                                     # Option2:FALSE   #STATIC SELECT

PDA_UI_SUPPORT_U_IDLE = FALSE                         ### U_IDLE Special Effect Support
                                                     # Option1:TRUE    #U_IDLE Special Effect Open 
                                                     # Option2:FALSE   #U_IDLE Special Effect Close

MAINMENU_SELECT_LAYER_ON_TOP = TRUE

MENU_SWEETS_SUPPORT  = FALSE                          ### MENU SWEETS SUPPORT(ONLY FOR HVGA temporary):
                                                     # Option1:TRUE
                                                     # Option2:FALSE

CAMERA_SUPPORT = TRUE                               ### CAMERA Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

DC_FLASH_SUPPORT = TRUE                             ### dc flash support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

EBOOK_SUPPORT = TRUE                                 ### EBOOK Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE
                                                     
CALCULATOR_SUPPORT = TRUE                            ### CALCULATOR Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

SYNCTOOL_SUPPORT = TRUE                              ### Synctool Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

WORLD_CLOCK_SUPPORT = TRUE                           ### World Clock Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

SEARCH_SUPPORT = FALSE                                ### Local Search Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE
                                                     
COUNTEDTIME_SUPPORT = TRUE                           ### counted time Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE
                                                     
STOPWATCH_SUPPORT = TRUE                             ### stopwatch Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MMI_UNITCONVERSION_SUPPORT = TRUE                   ### unitconversion Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

CALENDAR_SUPPORT = TRUE                              ### CALENDAR Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

LIVE_WALLPAPER_FRAMEWORK_SUPPORT = FALSE              ###LIVE WALLPAPER
                                                     # Option1:TRUE
                                                     # Option2:FALSE

LIGHTGRID_WALLPAPER_SUPPORT = FALSE                    ### Live WallPaper LightGrid Effect
                                                     # Option1:ROM
                                                     # Option2:TCARD
                                                     # Option2:FALSE

LINEAR_WALLPAPER_SUPPORT = FALSE                       ### Live WallPaper Linear Effect
                                                     # Option1:ROM
                                                     # Option2:TCARD
                                                     # Option2:FALSE

GALAXY_WALLPAPER_SUPPORT = FALSE                       ### Live WallPaper Galaxy Effect
                                                     # Option1:ROM
                                                     # Option2:TCARD
                                                     # Option2:FALSE

POP_WALLPAPER_SUPPORT = FALSE                          ### Live WallPaper Pop
                                                     # Option1:ROM
                                                     # Option2:TCARD
                                                     # Option3:FALSE

BEE_WALLPAPER_SUPPORT = FALSE                          ### Live WallPaper Bee
                                                     # Option1:ROM
                                                     # Option2:TCARD
                                                     # Option3:FALSE

SAKURA_WALLPAPER_SUPPORT = FALSE                       ### Live WallPaper Sakura
                                                     # Option1:ROM
                                                     # Option2:TCARD
                                                     # Option3:FALSE

SEAWORLD_WALLPAPER_SUPPORT = FALSE                     ### Live WallPaper seaworld
                                                     # Option1:ROM
                                                     # Option2:TCARD
                                                     # Option3:FALSE

RIPPLE_WALLPAPER_SUPPORT = FALSE                     ### Live WallPaper Ripple
                                                     # Option1:ROM
                                                     # Option2:TCARD
                                                     # Option2:FALSE

LITTLECAT_WALLPAPER_SUPPORT = FALSE                  ### Live WallPaper Littlecat
                                                     # Option1:ROM
                                                     # Option2:TCARD
                                                     # Option2:FALSE

WINDMILL_WALLPAPER_SUPPORT = FALSE                   ### Live WallPaper Windmill
                                                     # Option1:ROM
                                                     # Option2:TCARD
                                                     # Option2:FALSE

RAINBOWCITY_WALLPAPER_SUPPORT = FALSE                ### Live WallPaper Rainbowcity
                                                     # Option1:ROM
                                                     # Option2:TCARD
                                                     # Option2:FALSE

PAPERTOWN_WALLPAPER_SUPPORT = FALSE                    ### Live WallPaper Papertown
                                                     # Option1:ROM
                                                     # Option2:TCARD
                                                     # Option2:FALSE

AQUARIUM_WALLPAPER_SUPPORT = FALSE                     ### Live WallPaper AQuarium
                                                     # Option1:ROM
                                                     # Option2:TCARD
                                                     # Option2:FALSE

GIRLSWING_WALLPAPER_SUPPORT = FALSE                    ### Live WallPaper girlswing
                                                     # Option1:ROM
                                                     # Option2:TCARD
                                                     # Option3:FALSE


NEST_WALLPAPER_SUPPORT = FALSE                         ### Live WallPaper NEST Effect
                                                     # Option1:ROM
                                                     # Option2:TCARD
                                                     # Option3:FALSE

SPRING_WALLPAPER_SUPPORT = FALSE                     ### Live WallPaper SPRING Effect
                                                     # Option1:ROM
                                                     # Option2:TCARD
                                                     # Option3:FALSE

MMI_CHECK_MEMINFO_SUPPORT = FALSE                    ### Check Memory Overrun Info Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MRAPP_SUPPORT = FALSE                                ### MRAPP_SUPPORT
                                                     # Option1:TRUE
                                                     # Option2:FALSE

AUTO_DOWNLOAD_SUPPORT = TRUE                         ### AUTO_DOWNLOAD_SUPPORT
                                                     # Option1:TRUE
                                                     # Option2:FALSE

RECORD_SUPPORT = TRUE                                ### RECORD_SUPPORT
                                                     # Option1:TRUE
                                                     # Option2:FALSE

OPTION_MENU_SUPPORT = TRUE                           ### OPTION_MENU_SUPPORT
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MID_SOFTKEY_USE_IMG_SUPPORT = TRUE                  ### MID_SOFTKEY_USE_IMG:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MMI_OTA_SUPPORT = TRUE                               ### OTA Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

OMA_CP_SEC_SUPPORT = TRUE                            ### OMA CP SECURITY CONFIG                        
                                                     # Option1:TRUE
                                                     # Option2:FALSE
                                                     
MMI_VER  = MAIN                                      ### MMI_VER
                                                     # Option1: MAIN    Select MS_MMI_main

OPERATOR_CUSTOM =  NONE                              ### mobile netowrk operator custom 
                                                     # Option1:NONE
                                                     # Option2:TELCEL
                                                     
IMEI_OTP_SUPPORT = NONE                              ### IMEI Write protect support 
                                                     # Option1:NONE     
                                                     # Option2:EFUSE : NOTICE: SAVE IMIE in EFUSE only One Time!!
                                                     # depend on    MMI_MULTI_SIM_SYS_SINGLE or  MMI_MULTI_SIM_SYS_DUAL  

SPRD_DOWNLOAD_ONETIME_SUPPORT = FALSE                ### Download via usb once
                                                     # Option1: TRUE
						                                         # Option2: FALSE			
						            
MMI_PREFER_PLMN_SUPPORT = FALSE                       ### Prefer network
	                                                   # Option1: TRUE
	                                                   # Option2: FALSE                                         

REF_PCB_VER = B2                                     ### RefrencePhone PCB version
                                                     # Option1:B1
                                                     # Option2:B2

TCXO_DCXO_AUTO_ADAPTATION_SUPPORT = TRUE             ###auto identify crystal whether use TCXO or not(DCXO)
                                                     #Option1: TRUE
                                                     #Option2: FALSE

SDRAM_DDR333 = FALSE                    	           ### SDRAM DDR333
	                                                   # Option1: TRUE
                                                     # Option2: FALSE

						                                                      
DEEP_CHANNEL_SUPPORT = FALSE                         ## support deep channel(124)
	                                                   # Option1: TRUE
	                                                   # Option2: FALSE

HW_DDR_DLL_SWITCH = FALSE                            ## support some special HW
	                                                   # Option1: TRUE
	                                                   # Option2: FALSE

VIRTUAL_VIBRATE_FUNC = TRUE	                       ###VIRTUAL_VIBRATE_FUNC Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

GAME_SUPPORT = TRUE                                  ### game Support:
                                                     # Option1:TRUE                                                     
                                                     # Option2:FALSE

#==========od game start==============
OD_GAME_SUPPORT = TRUE                               ### OD游戏总宏
                                                     # Option1:TRUE
                                                     # Option2:FALSE
ifeq ($(strip $(OD_GAME_SUPPORT)), TRUE)
ifeq ($(strip $(GAME_SUPPORT)), FALSE)
$(error Please open macro GAME_SUPPORT!!!)
endif
endif

OD_GAME_LIB_SUPPORT = TRUE                           ### OD_GAME_LIB_SUPPORT
                                                     # Option1:TRUE
                                                     # Option2:FALSE

OD_GAME_BILLING_SUPPORT = TRUE                       ### 游戏计费
                                                     # Option1:TRUE
                                                     # Option2:FALSE

OD_GAME_CONTINUE_SUPPORT = TRUE                      ### 续命模式 continue mode
                                                     # Option1:TRUE
                                                     # Option2:FALSE

OD_DOODLE_JUMP_SUPPORT = TRUE                        ### 涂鸦跳跃 
                                                     # Option1:TRUE
                                                     # Option2:FALSE

OD_CROSSY_ROAD_SUPPORT = TRUE                        ### 天天过马路   
                                                     # Option1:TRUE
                                                     # Option2:FALSE

OD_STICK_HERO_SUPPORT = TRUE                         ### 棍子英雄
                                                     # Option1:TRUE
                                                     # Option2:FALSE


OD_BUBBLE_PARTY_MIX_SUPPORT = TRUE                   ### BUBBLE_PARTY_MIX
                                                     # Option1:TRUE
                                                     # Option2:FALSE

OD_SUPER_PET_SUPPORT = TRUE                          ### 超级宠物
                                                     # Option1:TRUE
                                                     # Option2:FALSE

OD_SOCCER_SUPPORT = TRUE                             ### 足球游戏
                                                     # Option1:TRUE
                                                     # Option2:FALSE

OD_COSMIC_ESCAPE_SUPPORT = FALSE                    ### 星空穿越
                                                     # Option1:TRUE
                                                     # Option2:FALSE
                                                     
WAV_24BIT_SUPPORT = TRUE                             ### SUPPORT WAV 24BIT DECODE:
                                                     # Option1:TRUE
                                                     # Option2:FALSE 

ifeq ($(strip $(OD_COSMIC_ESCAPE_SUPPORT)),TRUE)
OD_SPEED_PUBLIC_CODE_SUPPORT = TRUE                  ### SPEED_PUBLIC_CODE
                                                     # Option1:TRUE
                                                     # Option2:FALSE
                                                     
endif

OD_RACING_ATTACK_SUPPORT = FALSE                     ### 赛车
                                                     # Option1:TRUE
                                                     # Option2:FALSE

ifeq ($(strip $(OD_RACING_ATTACK_SUPPORT)),TRUE)
OD_SPEED_PUBLIC_CODE_SUPPORT = TRUE                  ### SPEED_PUBLIC_CODE
                                                     # Option1:TRUE
                                                     # Option2:FALSE
                                                     
endif

OD_SPEED_SOCCER_SUPPORT = FALSE                      ### 足球
                                                     # Option1:TRUE
                                                     # Option2:FALSE
 
ifeq ($(strip $(OD_SPEED_SOCCER_SUPPORT)),TRUE)
OD_SPEED_PUBLIC_CODE_SUPPORT = TRUE                  ### SPEED_PUBLIC_CODE
                                                     # Option1:TRUE
                                                     # Option2:FALSE
 
endif
OD_GAME_PLMN_FREE_SUPPORT = TRUE                     ### 是否支持根据PLMN来设置免费
                                                     # Option1:TRUE
                                                     # Option2:FALSE
 
DATA_ACCOUNT_USE_SPLIT_FILE = TRUE                   ### 是否支持APN数据分成多个NTAC文件加载，可以节省内存
                                                     # Option1:TRUE
                                                     # Option2:FALSE
#==========od game end==============

SFR_SUPPORT = FALSE
ifeq ($(strip $(SFR_SUPPORT)),TRUE)
SFR_SUPPORT_CTCC = FALSE   ### support CTCC self register or not
SFR_SUPPORT_CMCC = FALSE   ### support CMCC self register or not
endif

DUALMIC  = FALSE                                     ### DUALMIC OR SINGLE MIC switch
                                                     # Option1:TRUE
                                                     # Option2:FALSE   

#****************************************************************************************#
#  Segment: SPRD MACRO
#  Description: Get all sprd macro list
#****************************************************************************************#
SPRD_MACRO_LIST_START := $(call GET_SPRD_MACRO_START)

# *************************************************************************
# Feature Options FOR SPRD
# !!!!!!!! Attention:please don't modify the customer value of this option part. !!!!!!!!!
# !!!!!!!! If modification is in need, the new version should be released by SPRD. !!!!!!!!!
# !!!!!!!! 注意: 此部分Options 的取值客户请勿修改!!!!!!!!!
# !!!!!!!! 若需要修改，需展讯重新发布版本!!!!!!!!!
# *************************************************************************


SKY_CAT_SUPPORT   = FALSE                            ### SKY_CAT_SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

SKY_SKIRT_SUPPORT   = FALSE                          ### SKY_SKIRT_SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE
                                                     
SXH_APPLE_SUPPORT = FALSE                            ### SXH APPLE SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

PCLINK_SUPPORT = FALSE                                ### PCLink function work for TCPIP_SUPPORT = TRUE  
                                                     # Option1:TRUE


CONTINUE_RAM_LAYOUT = TRUE                           ### Memory saving for 7701
                                                     # Option1: TRUE
						                                         # Option2: FALSE
						                                         # Note: This macro is only used for 7701 projects  

SHELL_DEBUG_SUPPORT = TRUE                          ### SHELL_DEBUG_SUPPOR
                                                     # Option1:TRUE
                                                     # Option2:FALSE

USB_PROTOCOL_SUPPORT  = USB20                        ### USB Protocol Sel Support:
                                                     # Option2:USB20

PLD_SRT_SCENARIO_TEST_SUPPORT = FALSE                ### support PLD-SRT SCENARIO TEST
                                                     # Option1:TRUE
                                                     # Option2:FALSE

SPRD_CUSTOMER = TRUE                                ### SPRD Customer
                                                     # Option1:TRUE
                                                     # Option2:FALSE

SPRD_APP_RELEASE = TRUE                              ### SPRD APP RELEASE
                                                     # Option1:TRUE
                                                     # Option2:FALSE

PLATFORM = UMS9117                                    ### Chip Platform Definition:
                                                     # Option1:SC6530   #define PLATFORM_SC6530


CHIP_VER = 9117                                      ### Chip version:
                                                     # Option1:6800H1     #define CHIP_VER_6800H1
                                                     # Option2:6800H3     #define CHIP_VER_6800H3

FPGA_SUPPORT = NONE                                  ### FPGA_SUPPORT_SC6530

FPGA_VERIFICATION = FALSE                            ### Debug Version
                                                     # Option1:TRUE
                                                     # Option2:FALSE

POWERON_DEBUG   = TRUE                               ### Debug Version
                                                     # Option1:TRUE
                                                     # Option2:FALSE

CHIP_MARK = NONE                                     ### Chip Mark Number:
                                                     # Option1:NONE       #define CHIP_MARK_NONE

CHIP_ENDIAN_DEFAULT  = LITTLE                        ### Chip default endianess:
                                                     # Option1: BIG
                                                     # Option2: LITTLE

CHIP_ENDIAN = LITTLE                                 ### Chip endianess:
                                                     # Option1: BIG
                                                     # Option2: LITTLE

COMPILER = RVCT                                      ### Compiler version
                                                     # Option1:ADS  ( ADS v1.2 )
                                                     # Option2:RVCT ( RVCT v2.2, RVCT v3.1 )

RVCT_VERSION = V504                                ### RVCT version
                                                     # Option1:NONE(defult RVCT31)
                                                     # Option2:RVCT41
                                                     # Option3:V504

NANDBOOT_SUPPORT = TRUE                              ### Boot From Nandflash Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

POWER_OFF_PROTECT_SUPPORT = TRUE                     ### Switch power off protect support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

USB_VCOM_AUTORUN_SUPPORT = FALSE                     ### support to instacll UCOM drivre and ewalk software:
                                                     # Option1:TRUE
                                                     # Option2:FALSE


SBC_OVERLAY = FALSE                                  ### implement sbc with memory overlay  HR L = false, M = TRUE, default = FALSE
                                                     # Option1:TRUE
                                                     # Option2:FALSE

DOLPHIN_SUPPORT = TRUE                               ### Switch Of dolphin device Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

VT_SUPPORT    = FALSE                                ### VT support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

VM_SUPPORT    = TRUE                                 ### VM support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

BZP_SUPPORT  = FALSE                                 ###new memory management,now only be used in 128X32 Nor
                                                     # Option1:TRUE
                                                     # Option2:FALSE



UI_MULTILAYER_SUPPORT = TRUE                         ### ui layer support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MSDC_CARD_SUPPORT = TRUE                             ### SD Card Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

USB_VCOM_SUPPORT = TRUE                              ### USB Virtual COM Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

USB_SUPPORT = TRUE                                   ### USB TXer Type:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MODEM_CONTROL_SUPPORT_USB = TRUE                   ### USB suspend/resume support
                                                     # Option1: TRUE
                                                     # Option2: FALSE
                                                     
TCPIP_SUPPORT = TRUE                                 ### TCPIP Profile Support:
                                                     # Option1:TRUE

SSL_SUPPORT = TRUE                                   ### SSL Profile Support:
                                                     # Option1:FALSE

HTTP_SUPPORT = TRUE                                  ### HTTP Profile Support:
                                                     # Option1:FALSE
						     
HTTP2_SUPPORT = TRUE                                ### HTTP2 Profile Support:
                                                     # Option1:FALSE

RTP_SUPPORT = TRUE                                   ### RTP Support:
                                                     # Option1:FALSE
                                                     # Option2:TRUE

RTSP_SUPPORT = TRUE                                  ### RTSP Support:
                                                     # Option1:FALSE
                                                     # Option2:TRUE

WSP_SUPPORT = TRUE                                   ### WSP Profile Support:
                                                     # Option1:FALSE

XML_SUPPORT = TRUE                                   ### EXPAT XML Support:
                                                     # Option1:FALSE

DL_SUPPORT = TRUE                                    ###Download Manager Supplier:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

DRM_SUPPORT = V1                                     ### DRM Support:ONLY VALIDATE WHEN MMI_AUTO_UPDATE_TIME_SUPPORT SET TRUE
                                                     # Option0:NONE
                                                     # Option1:V1

STACK_CHECK_SUPPORT = FALSE                          ### STACK CHECK SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

CARD_LOG = TRUE                                      ### CARD SAVE LOG SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

SPRD_RAW_CARD_LOG = FALSE                            ### T-CARD SAVE LOG SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

UMEM_SUPPORT = FALSE                                 ### Switch Of nor flash udisk support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

UDISK_PC_CONNECT = FALSE                             ### Norflash disk pc access support UMEM_SUPPORT MUST set TRUE
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MMI_VCALENDAR_SUPPORT = FALSE                         ### MMI_VCALENDAR_SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

JTAG_SUPPORT = FALSE                                 ### JTAG Debug Version:
                                                     # Option1: TRUE
                                                     # Option2: FALSE

SOUNDBANK_VER = ARM_2MB                              ### Soundbank Talbe Type
                                                     # Option1:ARM_512KB #define SOUNDBANK_VER_ARM_512KB
                                                     # Option2:ARM_2MB   #define SOUNDBANK_VER_ARM_2MB
                                                     # Option3:ARM_256KB #define SOUNDBANK_VER_ARM_256KB
                                                     # Option4:ARM_700KB #define SOUNDBANK_VER_ARM_700KB
                                                     # Option5:ARM_300KB #define SOUNDBANK_VER_ARM_300KB
                                                     # Option6:NEWMIDI_75KB #define SOUNDBANK_VER_NEWMIDI_75KB
                                                     # Option7:NEWMIDI_170KB #define SOUNDBANK_VER_NEWMIDI170KB
                                                     # Option8:NEWMIDI_400KB #define SOUNDBANK_VER_NEWMIDI_400KB

SOUNDBANK_MODE   = FULL                              ### MIDI Soundbank Mode
                                                     # Option1: FULL
                                                     # Option2: COMPACT

MIDI_DECODER_OPTIMIZED   = FALSE                     ### MIDI Decoder Optimized:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

BT_NONSIG_SUPPORT = TRUE                            ### Nosig support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

BT_BQB_SUPPORT = TRUE                                ### BQB SUPPORT
                                                     # Option1:TRUE
                                                     # Option2:FALSE

BT_CONTROLLER_BQB_SUPPORT = TRUE                     ### BQB SUPPORT
                                                     # Option1:TRUE
                                                     # Option2:FALSE

BT_OPP_SUPPORT = TRUE                                ### Switch Of OPP Profile Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

BT_FTS_SUPPORT = FALSE                               ### Switch Of FTP Server Profile Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

BT_DUN_SUPPORT = FALSE                                ### Switch Of DUN Profile Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

BT_SPP_SUPPORT = FALSE                               ### Switch Of SPP Profile Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

BT_HFG_SUPPORT = TRUE                                ### Switch Of Hand Free Gateway Profile Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

BT_HSP_SUPPORT = TRUE                                ### Switch Of Headset Profile Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE 

BT_A2DP_SUPPORT = TRUE                               ### Switch Of A2DP Profile Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

BT_A2DP_SAMPLERATE_RECONFIG_SUPPORT = FALSE          ### a2dp sample rate reconfig Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

BT_FIXPIN_SUPPORT = FALSE                            ### Switch of BT Fixed Pin Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MP3_A2DP_SUPPORT = TRUE                              ### MP3 Support Bluetooth Stereo:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

WAV_A2DP_SUPPORT = TRUE                              ### WAV Support Bluetooth Stereo:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

AMR_A2DP_SUPPORT = TRUE                              ### AMR_DSP Support Bluetooth Stereo:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MIDI_A2DP_SUPPORT = TRUE                             ### MIDI Support Bluetooth Stereo:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

AAC_A2DP_SUPPORT = TRUE                              ### AAC Support Bluetooth Stereo:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

WMA_A2DP_SUPPORT = TRUE                              ### WMA Support Bluetooth Stereo:
                                                     # Option1:FALSE

MP3_SUPPORT = TRUE                                   ### MP3 Decoder Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE
													 
MMI_MP3_SUPPORT = TRUE                              ### MMＩ　MP3 Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE													 

AAC_SUPPORT = TRUE                                   ### AAC Decoder Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

WMA_SUPPORT = TRUE                                   ### WMA Decoder Support:
                                                     # Option1:FALSE

AMR_SUPPORT = TRUE                                   ### AMR Decoder Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MIC_SEL_HANDS = SUB_MIC                              ## NONE 
                                                     # SUB_MIC

DUALMIC_NORMAL  = FALSE                              ### DUALMIC NORMAL OR DEMO switch
                                                     # Option1:TRUE
                                                     # Option2:FALSE

AUDIO_PLAYER_DUALDMA = TRUE                         ### DUAL DMA audio player Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MIDI_SUPPORT = TRUE                                  ### MIDI Decoder Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MIC_SAMPLE_SUPPORT = FALSE                           ### MIC SAMPLE SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

CAT_MVOICE_SUPPORT = FALSE                           ### CAT_MVOICE_SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

H264_DEC_SUPPORT = TRUE                              ### H264 Decoder Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE													 
H264_ENC_SUPPORT = FALSE                             ### H264 encoder Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

WAV_SUPPORT = TRUE                                   ### WAV Decoder Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

ARM_TONE_SUPPORT = TRUE                              ### ARM DTMF tone Support:
                                                     # Option1: TRUE
                                                     # Option2: FALSE

DRA_SUPPORT    = FALSE                               ### DRA Decoder Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MP3_BACKGROUND_SUPPORT = TRUE                        ### MP3 BACKGROUND SUPPORT
                                                     # Option1:TRUE
                                                     # Option2:FALSE

WMA_BACKGROUND_SUPPORT = TRUE                        ### WMA BACKGROUND SUPPORT
                                                     # Option1:FALSE

AAC_BACKGROUND_SUPPORT = TRUE                        ### AAC BACKGROUND SUPPORT
                                                     # Option1:TRUE
                                                     # Option2:FALSE

AMR_BACKGROUND_SUPPORT = TRUE                        ### AMR BACKGROUND SUPPORT
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MIDI_BACKGROUND_SUPPORT = TRUE                       ### MIDI BACKGROUND SUPPORT
                                                     # Option1:TRUE
                                                     # Option2:FALSE

WAV_BACKGROUND_SUPPORT = TRUE                        ### WAV BACKGROUND SUPPORT
                                                     # Option1:TRUE
                                                     # Option2:FALSE

EQ_SUPPORT = TRUE                                    ### EQ Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MP3_EQ_SUPPORT = TRUE                                ### MP3 EQ Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

EQ_EXE_ON_CHIP = TRUE                                ### EQ Type:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MP3_SEEK_SUPPORT = TRUE                              ### MP3 Seek Function Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

AAC_SEEK_SUPPORT = TRUE                              ### AAC Seek Function Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

WMA_SEEK_SUPPORT = TRUE                              ### WMA Seek Function Support:
                                                     # Option1:FALSE

AMR_SEEK_SUPPORT = TRUE                              ### AMR Seek Function Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MIDI_SEEK_SUPPORT = TRUE                             ### MIDI Seek Function Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

WAV_SEEK_SUPPORT = TRUE                              ### WAV Seek Function Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

DIGITAL_GAIN_SUPPORT   = TRUE                        ### Digital Gain Express PlugIn Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

GIF_DEC_SUPPORT = GIF_SW                             ### GIF Decoder Lib Type:
                                                     # Option0:NONE     #define GIF_DEC_SUPPORT_NONE
                                                     # Option1:GIF_SW   #define GIF_DEC_SUPPORT_GIF_SW
                                                     # Option2:GIF_HW   #define GIF_DEC_SUPPORT_GIF_HW

PNG_DEC_SUPPORT = PNG_SW                             ### PNG Decoder Lib Type:
                                                     # Option0:NONE     #define PNG_DEC_SUPPORT_NONE
                                                     # Option1:PNG_SW   #define PNG_DEC_SUPPORT_PNG_SW

BMP_DEC_SUPPORT = BMP_SW                             ### BMP Decoder Lib Type:
                                                     # Option0:NONE     #define BMP_DEC_SUPPORT_NONE
                                                     # Option1:BMP_SW   #define BMP_DEC_SUPPORT_BMP_SW

ICO_DEC_SUPPORT = ICO_SW                             ### ICO Decoder Lib Type:
                                                     # Option0:NONE     #define ICO_DEC_SUPPORT_NONE
                                                     # Option1:ICO_SW   #define ICO_DEC_SUPPORT_ICO_SW

JPG_DEC_SUPPORT = JPG_HW                             ### JPG Decoder Lib Type:
                                                     # Option0:NONE     #define JPG_DEC_SUPPORT_NONE
                                                     # Option1:JPG_SW   #define JPG_DEC_SUPPORT_JPG_SW
                                                     # Option2:JPG_HW   #define JPG_DEC_SUPPORT_JPG_HW

JPG_DEC_TYPE_SUPPORT = BASELINE_PROGRESSIVE          ### decode type support:
                                                     # Option0:BASELINE
                                                     # Option1:BASELINE_PROGRESSIVE

JPG_ENC_SUPPORT = JPG_HW                             ### JPG Encoder Lib Type:
                                                     # Option0:NONE     #define JPG_ENC_SUPPORT_NONE
                                                     # Option1:JPG_SW   #define JPG_ENC_SUPPORT_JPG_SW
                                                     # Option2:JPG_HW   #define JPG_ENC_SUPPORT_JPG_HW

WMA_DEC_SUPPORT = TRUE                               ### WMA Decoder Lib Support:
                                                     # Option1:FALSE

IPVERSION_SUPPORT = V4_V6                            ###IPVERSION_SUPPORT:
                                                     #Option1: V4: IPv4 only, use ipv4 daps
                                                     #Option2: V4_V6: IPv4&IPv6, user ipv6 daps
                                                     
AVI_DEC_SUPPORT = TRUE                               ### AVI Decoder Lib Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

FLV_DEC_SUPPORT = TRUE                               ### FLV Decoder Lib Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

AVI_ENC_SUPPORT = TRUE                               ### AVI Encoder Lib Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

TMVB_DEC_SUPPORT = FALSE                             ### Switch RMVB video Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

TA8LBR_SUPPORT = TRUE                                ### Switch RA8 Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

GZIP_DEC_SUPPORT = GZIP_SW                              ### GZIP Decoder Lib Type:
                                                     # Option0:NONE     #define GZIP_DEC_SUPPORT_NONE
                                                     # Option1:GZIP_SW  #define GZIP_DEC_SUPPORT_GZIP_SW

APP_PRODUCT_DM = TRUE                                ### APP FOR 3G PS SUPPORT
                                                     # Option1:TRUE
                                                     # Option2:FALSE

APP_DUALMODE_ENABLE = TRUE                           ### APP FOR 3G PS DUALMODE SUPPORT
                                                     # Option1:TRUE
                                                     # Option2:FALSE

NULL_CODEC_SUPPORT = TRUE                            ### NULL_CODEC  Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

ARM_AD_ADP_SUPPORT = TRUE                            ### ARM_AD_ADP CODEC Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

AD_OUTPUT_ADP_SUPPORT = TRUE                         ### AD_OUTPUT_ADP CODEC Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

DYNAMIC_MODULE_SUPPORT = FALSE                       ### caf Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

AUDIO_PARAM_ARM = FALSE                              #### move audio param from dsp audio nv to arm audio nv

DUAL_TCARD_SUPPORT = FALSE                           ### 6800H openphone Dual TCards SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

STRM_SUPPORT_REDUCE_MEMORY = FALSE                   ### To reduce memory for low memory system
                                                     # Option1:TRUE
                                                     # Option2:FALSE

NEW_MEMORY_MM = FALSE                                ###new memory management，now only be used in 128X32 Nor
                                                     # Option1:TRUE
                                                     # Option2:FALSE

STRM_APP_CONFLICT = TRUE                             ### STRM_APP_CONFLICT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MOBILE_VIDEO_SUPPORT   = FALSE                       ### movile video player:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

SCREEN_CAPTURE_SUPPORT   = TRUE                      ### Screen capture support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

VECTOR_TABLE_ADDR   = HIGH                           ### vector table address:
                                                     # Option1:HIGH       #define VECTOR_TABLE_ADDR_HIGH
                                                     # Option2:LOW        #define VECTOR_TABLE_ADDR_LOW

TF_LOAD_SUPPORT = TRUE                              ### TF UPDATE SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

TF_LOAD_PROTECT = TRUE                              ### TF UPDATE SUPPORT:
                                                     # Option1:TRUE   TF BOOTLOADER will put in first sector
                                                     # Option2:FALSE  TF BOOTLOADER WILL load in TF CARD

STONE_IMAGE_SUPPORT = FALSE                          ###Merge PS and resource to one image
                                                     # Option1:TRUE
                                                     # Option2:FALSE

NXP_LVVE_SUPPORT = FALSE                              ### NXP Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

NV_PRTITION = NORMAL                                 ### NV Prtition
                                                     # Option1:TINY
                                                     # Option2:SMALL
                                                     # Option3:NORMAL
                                                     # Option4:LARGE


MULTI_BIN_SUPPORT = FALSE                            ### ZIP method only open in 32x64
                                                     # Option1:TRUE
                                                     # Option2:FALSE

SPLOAD_ENABLE = FALSE                                ### lcd and sensor seperate bin dload support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

STREAMING_SUPPORT = TRUE                             ### Switch Streaming Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

CSS_SUPPORT = TRUE                                   ### Browser SW Supplier:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

JS_SUPPORT = TRUE                                    ### Java script support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

AUTOTEST_DEVICE_SUPPORT = TRUE                       ### AUTOTEST_DEVICE_SUPPORT
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MSLT_SUPPORT = FALSE                                 ### MSLT_SUPPORT
                                                     # Option1:TRUE
                                                     # Option2:FALSE

PIC_EDITOR_SUPPORT = TRUE                            ### Picture Editor Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

U_CAMERA_SUPPORT = FALSE                              ### MORE CAMERA SUPPORT
                                                     # Option1:TRUE
                                                     # Option2:FALSE
                                                     
IMG_EDITER_SUPPORT = TRUE                            ### Image Editer Support(u_camera/img_editer):
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MEMORY_DEBUG_SUPPORT = TRUE                          ### MEMORY DEBUG SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

VM_TABLE_CONFIG = NORMAL                             ### VM_TABLE_CONFIG
                                                     # Option1:TINY
                                                     # Option2:SMALL
                                                     # Option3:NORMAL

MMIDORADO_WRE_TRANSCODE_SUPPORT = FALSE              ### MMIDORADO WRE TRANSCODE SUPPORT
                                                     # Option1:TRUE
                                                     # Option2:FALSE                                                     

##########################################################################################
#  OLD MACRO OR NO USE
#
##########################################################################################
FLASH_SUPPORT = FALSE                                ### If flash UI support, MCAREV30_FLASH_SUPPORT must be true
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MMI_GUI_STYLE_TYPICAL = FALSE                        ### GUI STYLE
                                                     # Option1:TRUE
                                                     # Option2:FALSE

DC_2M_SUPPORT = FALSE                                ### only for 6530 dc actual big resolution snapshot support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

OPERA_MOBILE_SUPPORT = NONE                          #opera mobile support
                                                     # Option1:NONE     OPERA_MOBILE_SUPPORT_NONE
                                                     # Option2:V11      OPERA_MOBILE_SUPPORT_V11
                                                     
DEV_MANAGE_SUPPORT = FALSE                           ### device manage support
                                                     # Option1:TRUE
                                                     # Option2:FALSE
                                                     
DM_SUPPORT = NONE                                    ### DM LIBRARY:
                                                     # Option1:NONE   #define DM_SUPPORT_NONE
                                                     # Option2:DFRESH   #define DM_SUPPORT_DFRESH
                                                     # Option3:REDBENCH   #define DM_SUPPORT_REDBENCH   

AUTODEMO_SUPPORT = FALSE                             ### AUTODEMO_SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MTV_MIDDLEWARE_ON_BB = FALSE                         ### MTV Middleware deployed on BB:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

ASSERT_TYPE_SUPPORT = ASSERT                         ### ASSERT TYPE SUPPORT
                                                     # Option1:ASSERT
                                                     # Option2:WARNING

NOR_SINGLEBANK_SUPPORT = FALSE                       ### Support Single Bank Type Norflash:
                                                     # Option1:FALSE
                                                     # Option1:TRUE

KURO_SUPPORT = FALSE                                 ### KURO Player Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

LOW_MEMORY_SUPPORT = NONE                            ### Low Memory Size Requirement:
                                                     # Option1:256X64
                                                     # Option1:128X64
                                                     # Option2:128X32
                                                     # Option3:64X64
                                                     # Option4:32X64
                                                     # Option5:16X16
                                                     # Option6:ESTIMATE
                                                     # Option7:NONE

CSC_SUPPORT = FALSE                                  ### Customer Specific Customization support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

CSC_XML_SUPPORT = FALSE                              ### Customer Specific Customization XML File:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MULTI_SIM_SYS_QUAD_TO = NONE                         ### Platform Support Multi Sim Card Number
                                                     # Option1:DUAL_WITHOUT6302
                                                     # Option2:TRI_SINGLE6302_BBSIM0
                                                     # Option3:TRI_SINGLE6302_BBSIM1
                                                     # Option4:NONE

VDDCORE_SUPPLY = DCDC                                ### VDDCORE_SUPPLY
                                                     # Option1:DCDC     #define VDDCORE_SUPPLY_DCDC
                                                     # Option2:LDO     #define VDDCORE_SUPPLY_LDO

DUAL_BATTERY_SUPPORT = FALSE                         ### Dual battery Support
                                                     # Option1:FALSE

GPIO_SIMULATE_SPI_SUPPORT = FALSE                    ### To simulate SPI by GPIO
                                                     # Option2:FALSE

GPIO_SPI_SUPPORT = NONE                              ### Quadsim SPI by GPIO mode:
                                                     # Option1:NONE                 #define GPIO_SPI_SUPPORT_NONE 
   
QWERTY_KEYPAD = NONE                                 ### QWERTY_KEYPAD TYPE
                                                     # Option1:NOKIA         #define QWERTY_KEYPAD_NOKIA
                                                     # Option2:BLACKBERRY    #define QWERTY_KEYPAD_BLACKBERRY
                                                     # Option3:CUST          #define QWERTY_KEYPAD_CUST
                                                     # Option4:NONE          #define QWERTY_KEYPAD_NONE
    
TTS_SUPPORT = NONE                                     ### TTS Support
                                                     # Option1:NONE     #define TTS_SUPPORT_NONE
                                                     # Option2:IFLYTEK  #define TTS_SUPPORT_IFLYTEK
                                                     # Option3:EJ          #define TTS_SUPPORT_EJ
                                                     # Option4:YOUNGTONE #define TTS_SUPPORT_YOUNGTONE
                                                     
CMMB_SUPPORT = FALSE                                 ### CMMB Player And Driver Support:
                                                     # Option2:FALSE
                                                     
MBBMS_SUPPORT = FALSE                                ### MBBMS Player And Driver Support:
                                                     # Option2:FALSE

CMMB_DAC_TYPE = AP                                   ### support 3 dac mode
                                                     # Option1:AP        #define CMMB_DAC_TYPE_AP
                                                     # Option2:V         #define CMMB_DAC_TYPE_V
                                                     # Option3:HYBRID    #define CMMB_DAC_TYPE_HYBRID

QQ_SUPPORT = NONE                                    ### QQ Support
                                                     # Option1:NONE        #define QQ_SUPPORT_NONE

MCARE_V31_SUPPORT = FALSE                            ### MACARE QQ
                                                     # Option1:TRUE
                                                     # Option2:FALSE          
 
DCD_SUPPORT = FALSE                                  ### dcd support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE 
NETFRONT_SUPPORT = NONE                              ### Browser SW Supplier:
                                                     # Option1:NONE
                                                     # Option2:VER35     #define NETFRONT_SUPPORT_VER35
                                                     # Option3:VER40     #define NETFRONT_SUPPORT_VER40
                                                     # Option4:VER42     #define NETFRONT_SUPPORT_VER42                                                                                      
PIM_SUPPORT = FALSE                                  ### PIM(personal Information Manage) Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE                                                     
                                                     
BROWSER_SUPPORT_NETFRONT = FALSE                     ### netfront Browser support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE
                                                     
BT_HL_PATCH_SUPPORT= FALSE                           ### HanLynn BT Patch Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

WRE_SUPPORT = FALSE                                  ### Mwin support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

WRE_WREKERNEL_NORFLASH = FALSE                       ### WRE NORFALSH support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

WRE_WREKERNEL_PRELOAD = FALSE                        ### WRE KERNEL PRELOAD SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

WRE_WRESTORE_PRELOAD = FALSE                         ### WRE STORE PRELOAD SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

WRE_STORE_OVERSEAS = FALSE                           ### WRE STORE OVERSEAS
                                                     # Option1:TRUE
                                                     # Option2:FALSE

WRE_VIRTUALDISK_SUPPORT = FALSE                      ### wre Virtual Disk Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

NES_SUPPORT = FALSE                                  ### Mwin support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

WRE_FACEBOOK_SUPPORT = FALSE                         ### Wre facebook Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

WRE_WEIBO_SUPPORT = FALSE                            ### Wre weibo Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

WRE_TWITTER_SUPPORT = NONE                           ### Wre twitter Support
                                                     # Option1:NONE
                                                     # Option2:SNS
                                                     # Option3:KEYPAD

WRE_CONTRA_SUPPORT = FALSE                           ### Wre twitter Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

WRE_SUPERMARIO_SUPPORT = FALSE                       ### Wre twitter Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

WRE_TSLAND_SUPPORT = FALSE                           ### Wre twitter Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

WRE_FRUIT_SUPPORT = FALSE                            ### Wre FRUIT Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

WRE_PREINSTALL_APP_SUPPORT = FALSE                   ### Wre FRUIT Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE


MET_MEX_SUPPORT = FALSE                              ### MET MEX SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MET_MEX_MERIG_SUPPORT = FALSE                        ### MET MEX MERIGSUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MET_MEX_QQ_SUPPORT = FALSE                           ### MET MEX SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MET_MEX_TB_SUPPORT = FALSE                           ### MET MEX SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MET_MEX_ZT_SUPPORT = FALSE                           ### MET MEX SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MET_MEX_AB_SUPPORT = FALSE                           ### MET MEX AngryBirds SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MET_MEX_MSN_SUPPORT = FALSE                          ### MET MEX MSN SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MET_MEX_FETION_SUPPORT = FALSE                       ### MET MEX Fetion SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MET_MEX_AQ_SUPPORT = FALSE                           ### MET_MEX_AQ_SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MET_MEX_DOUBLE_QQ_SUPPORT = FALSE                    ### MET_MEX_DOUBLE_QQ_SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MET_PLAT_CMOTION_SUPPORT = FALSE                     ### MET_PALT_CMOTION_SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MEX_G7_UI_SUPPORT = FALSE                            ### MET MEX FAUI SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MET_MEX_CQZ_SUPPORT = TRUE                           ### MET_MEX_CQZ_SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MET_MEX_JSCB_SUPPORT = FALSE                         ### MET_MEX_JSCB_SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MET_MEX_TOMCAT_SUPPORT = TRUE                        ### MET MEX TOMCAT SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MET_MEX_WEIBO_SUPPORT = FALSE                        ### MET MEX SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MET_MEX_WOMIVIDEO_SUPPORT = FALSE                    ### MET MEX SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE                                                                                                                                                     
MAILBOX_SUPPORT = TRUE

AUDIO_COMMON_EXCHANGE = TRUE                         ###
                                                     # Option1:TRUE
                                                     # Option2:FALSE
#****************************************************************************************#
#  Segment: MP MACRO
#  Description: Get all MP macro list
# !!!!!!!! Attention:please don't modify the customer value of this option part. !!!!!!!!!
# !!!!!!!! If modification is in need, the new version should be released by SPRD. !!!!!!!!!
# !!!!!!!! 注意: 此部分Options 的取值客户请勿修改!!!!!!!!!
# !!!!!!!! 若需要修改，需展讯重新发布版本!!!!!!!!!
#****************************************************************************************#
DEBUG_VERSION  = TRUE                                ### DEBUG_VERSION:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

TRACE_SDIO_MODE = FALSE                              ### TRACE_SDIO_MODE:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

RELEASE_FLAG = TRUE                                  ### RELEASE_FLAG
                                                     # Option1:TRUE
                                                     # Option2:FALSE

#****************************************************************************************#
#  Segment: MP MACRO
#  Description: 此部分是7701 2G/3G 通信相关feature，需要Owner确认 modem v2 是否全部覆盖这些功能
# !!!!!!!! !!!!!!!!!
# !!!!!!!! !!!!!!!!!
#****************************************************************************************#


#****************************************************************************************#
#  Segment: CTA MACRO
#  Description: 客户可根据各自过CTA情况，控制相关的CTA宏定义
#  1. 双卡单待宏定义:MULTI_SIM_GSM_CTA_SUPPORT = TRUE
#  2. 关闭GPRS宏定义:
#  MMS_SUPPORT = NONE; BROWSER_SUPPORT = FALSE; BROWSER_SUPPORT_DORADO = FALSE; UPDATE_TIME_SUPPORT = FALSE
#  MMS_SMS_IN_1_SUPPORT = FALSE; OPERA_MINI_SUPPORT = NONE; CHATMODE_ONLY_SUPPORT = FALSE; SMS_CHAT_SUPPORT = FALSE
#  WRE_SUPPORT = FALSE; WRE_WREKERNEL_NORFLASH = FALSE; WRE_WRESTORE_PRELOAD = FALSE; WRE_VIRTUALDISK_SUPPORT = FALSE; SNS_SUPPORT = FALSE
#  NES_SUPPORT = FALSE; WRE_FACEBOOK_SUPPORT = FALSE; WRE_WEIBO_SUPPORT = FALSE; WRE_TWITTER_SUPPORT = FALSE;
#  WRE_CONTRA_SUPPORT = FALSE; WRE_SUPERMARIO_SUPPORT = FALSE; WRE_TSLAND_SUPPORT
#  WEATHER_SUPPORT = FALSE; WEATHER_INFORMATION_BUFFER_STORE_SUPPORT = FALSE; MMIEMAIL_SUPPORT = FALSE;
#  另外需要在release_app_macro.mk中屏蔽MMI_GPRS_SUPPORT(#MCFLAG_OPT        +=  -DMMI_GPRS_SUPPORT)
#  3. 屏蔽频段宏定义:BAND_FILTER_CTA_SUPPORT = TRUE
#  4. 电话本精确匹配宏定义:  PB_PRECISE_MATCH_CTA_SUPPORT = TRUE
#****************************************************************************************#
MULTI_SIM_GSM_CTA_SUPPORT = FALSE                    ### MULTI SIM GSM CTA Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

BAND_FILTER_CTA_SUPPORT = FALSE                      ### Band Filter CTA Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

PB_PRECISE_MATCH_CTA_SUPPORT = FALSE                 ### Band Filter CTA Support
                                                     # Option1:TRUE
                                                    # Option2:FALSE

#****************************************************************************************#
#  Segment: MP MACRO
#  Description: Get all MP macro list
# !!!!!!!! Attention:please don't modify the customer value of this option part. !!!!!!!!!
# !!!!!!!! If modification is in need, the new version should be released by SPRD. !!!!!!!!!
# !!!!!!!! 注意: 此部分Options 的取值客户请勿修改!!!!!!!!!
# !!!!!!!! 若需要修改，需展讯重新发布版本!!!!!!!!!
#****************************************************************************************#
UPDATE_TIME_SUPPORT = TRUE                      ### UPDATE_TIME_SUPPORT
                                                     # Option1:TRUE
                                                     # Option2:FALSE

SNTP_SUPPORT = TRUE                                  ### Simple network time protocol
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MMS_SUPPORT = DORADO                                 ### MMS SW Supplier:
                                                     # Option1:NONE      #define MMS_SUPPORT_NONE
                                                     # Option2:DORADO    #define MMS_SUPPORT_DORADO

CMCC_VCARD_SUPPORT = TRUE                            ### Switch VCARD Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MMS_SMS_IN_1_SUPPORT = TRUE                          ### MMS SMS IN 1 Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

DATA_ROAMING_SUPPORT = TRUE                         ### data roam Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

UPLINK_8PSK_SUPPORT = TRUE                           ## supp ul 8psk
	                                                   # Option1: TRUE
	                                                   # Option2: FALSE

DUAL_DSP_ADAPTION = TRUE                              ### dual dsp adaption support
	                                                   # Option1: TRUE
	                                                   # Option2: FALSE

CHG_BAND5_TO_BAND8 = FALSE                           ### CHG_BAND5_TO_BAND8
                                                     # Option1: TRUE
						                                         # Option2: FALSE

HWPPP_USB = FALSE                                     ### HWPPP_USB
                                                     # Option1: TRUE
						                                         # Option2: FALSE

WL2_DATA_MGR_SUPPORT = FALSE                          ### WL2_DATA_MGR_SUPPORT
                                                     # Option1: TRUE
						                                         # Option2: FALSE

MUX_SUPPORT    = TRUE                                ### MUX SUPPORT
                                                     # Option1:TRUE
                                                     # Option2:FALSE

TIANLONG_MOCOR = TRUE                                ### Switch between Advanced and Mocor PS:
                                                     # Option1:TRUE

L1_IT = FALSE                                        ### L1_IT support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

PS_VER=TRUNK                                ### PS VER
                                                     # Option1:TRUNK
                                                     # Option2:12B
                                                     # Option3:BASE

RF_TYPE = QUORUM                                     ### RF Chip Type:
                                                     # Option1:QUORUM        #define RF_TYPE_QUORUM
                                                     # Option2:QUORUM518     #define RF_TYPE_QUORUM518
                                                     # Option2:SR528            #define RF_TYPE_SR528

SBC_DSP_SUPPORT = VERSION1                           ### dsp support sbc or mp3-sbc. VERSION1:sbc,VERSION2:sbc-mp3
                                                     # Option1:VERSION1      #define SBC_DSP_SUPPORT_VERSION1
                                                     # Option2:VERSION2    #define SBC_DSP_SUPPORT_VERSION2

EXPRESS_PROCESS_IN_DSP = FALSE                       ### Switch Of express process(transamplerate and sbc encode) in dsp
                                                     # Option1:TRUE
                                                     # Option2:FALSE

HALFRATE_SUPPORT = TRUE                              ### halfrate support feature
                                                     # Option1:TRUE
                                                     # Option2:FALSE

ATC_SUPPORT    = FULL                                ### ATC support feature
                                                     # Option1:FULL
                                                     # Option2:COMPACT

PRODUCT_DM = TRUE                                    ### TD/GSM DualModule product
                                                     # Option1:TRUE
                                                     # Option2:FALSE

GPRSMPDP_SUPPORT = TRUE                              ### GPRS Multi PDP support
                                                     # Option1:TRUE

FDN_SUPPORT = TRUE                                  ### FDN Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE
CMCC_UI_STYLE = FALSE                                 ### CMCC UI STYLE 使用移动入库的UI代码
                                                     # Option1:TRUE
                                                     # Option2:FALSE
                                                     # 用于控制是否

CMCC_TEST_FLAG = FALSE                               ### 仅用于控制入库测试的特殊需求，量产版本必须为FALSE
                                                     # Option1:TRUE   用于入库测试
                                                     # Option2:FALSE  用于量产

OMADL_SUPPORT = TRUE                                 ### OMA download Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE
                                                     # work for XML_SUPPORT = TRUE && HTTP_SUPPORT = TRUE

GPRS_SUPPORT = TRUE                                  ### GRPS Support:该宏的取值用户不能修改
                                                     # Option1:TRUE
                                                     # Option2:FALSE

DUALSIM_SUPPORT =   FALSE                            ### Dual SIM CARD Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MULTI_SIM_SYS = DUAL                                 ### Platform Support Multi Sim Card Number:
                                                     # Option2:DUAL      #define MULTI_SIM_SYS_DUAL

DSP_HW_COMPRESS = FALSE                              ### DSP HW Compress
                                                     # Option1:TRUE
                                                     # Option2:FALSE

SMART_PAGING_SUPPORT = FALSE                         ### Smart Paging Support Option:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

ORANGE_SUPPORT = FALSE                                ### Orange Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

CPHS_SUPPORT = TRUE                                  ### CPHS Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

SIM_LANGUAGE_SUPPORT = TRUE                          ### sim language select Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

SIM_LOCK_SUPPORT = TRUE                              ### SIM Lock Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

USIM_TP_AFTER_AID_SEL = FALSE                        ### TERMINAL PROFILE SEND AFTER USIM APPLICATION SELECTION
                                                     # Option1:TRUE
                                                     # Option2:FALSE

WPS_SUPPORT_RELEASE7 = TRUE                          ### WPS SUPPORT RELEASE 7
                                                     # Option1:TRUE
                                                     # Option2:FALSE

VOICE_WB  = TRUE																		### VOICE WIDEBAND OR NARROWBAND switch
                                                     # Option1:TRUE
                                                     # Option2:FALSE

DSP_USB_LOG = TRUE                                   ### DSP USB LOG SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE
TARGET_M8120 = TRUE                                  ### TARGET_M8120:
                                                     # Option1:TRUE
                                                     # Option2:FALSE      
                                                                                                           
_PERFORMANCE_TEST_ = FALSE                           ### _PERFORMANCE_TEST_:
                                                     # Option1:TRUE
                                                     # Option2:FALSE  
                                                          
TITAN1_8_DATA_CARD = TRUE                            ### TITAN1_8_DATA_CARD:
                                                     # Option1:TRUE
                                                     # Option2:FALSE  
                                                          
SLEEP_MODE = TRUE                                    ### SLEEP_MODE:
                                                     # Option1:TRUE
                                                     # Option2:FALSE   
                                                     
_INTER_RAT_MODE_ = TRUE                              ### _INTER_RAT_MODE_:
                                                     # Option1:TRUE
                                                     # Option2:FALSE   
                                                         
TRACE_SDIO_MODE = FALSE                              ### TRACE_SDIO_MODE:
                                                     # Option1:TRUE
                                                     # Option2:FALSE       
                                                     
EMBEDED_WCDMA_UNIT = TRUE                            ### EMBEDED_WCDMA_UNIT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE       
                                                     
M8180B_DEV = TRUE                                    ### M8180B_DEV:
                                                     # Option1:TRUE
                                                     # Option2:FALSE       

WCDMA_AS_PRESENT = TRUE                              ### WCDMA_AS_PRESENT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE       
                                                     
WDP_DEBUG = TRUE                                     ### WDP_DEBUG:
                                                     # Option1:TRUE
                                                     # Option2:FALSE       
                                                     
W_TRACE_FUNC = TRUE                                  ### W_TRACE_FUNC:
                                                     # Option1:TRUE
                                                     # Option2:FALSE       

MTA_EXPAND_TRACE_BUFF = TRUE				                 ###support high speed trace mode
                                                     # Option1:TRUE
                                                     # Option2:FALSE       
                                                     
HWVERSION_8810PHONE = TRUE						               ### hardware version  #to config hardware version
                                                     # Option1: T381
                                                     # Option2: X501 
                                                     # Option2: 8810PHONE 

MTA_EX_MERGE_TRACE_POOL = TRUE                       ###support high speed trace mode
                                                     # Option1:TRUE
                                                     # Option2:FALSE    

POWER_SAVING_MODE = TRUE                             # POWER_SAVING_MODE:
                                                     #   TRUE - turn on power saving function
                                                     #   FALSE - don't use power saving function

TD_AS_NOT_PRESENT   = TRUE                           # TD-SCDMA AS Present:
                                                     # Option1:TRUE
                                                     # Option2:FALSE                                        

MONITORSET_MEM_CUT = TRUE                            # haibo WCDMA PS RW cut
                                                     # Option1:TRUE
                                                     # Option2:FALSE    
                                                     
EXTERNAL_CRYSTAL_SUPPORT = TRUE                      # EXTERNAL_CRYSTAL_SUPPORT
                                                     # Option1:TRUE
                                                     # Option2:FALSE    

WCDMA_FEATUREPHONE_USERPLANE_OPT = TRUE              # WCDMA_FEATUREPHONE_USERPLANE_OPT
                                                     # Option1:TRUE
                                                     # Option2:FALSE    

FP_PS_RATE =  72M_2M	                               ### PS rate
                                                     #Option1: 72M_384K
                                                     #Option2: 384K_384K
                                                     #Option3: CS_ONLY
                                                     #Option4: 72M_2M


XDSP_CFG_TFCI_HW = TRUE                              ### XDSP_CFG_TFCI_HW
                                                     # Option1:TRUE
                                                     # Option2:FALSE

W_MODEM_POWER_OFF_ENABLE = TRUE                      ### W_MODEM_POWER_OFF_ENABLE
                                                     # Option1:TRUE
                                                     # Option2:FALSE                                   
                                                     
RELEASE_FLAG = TRUE                                  ### RELEASE_FLAG
                                                     # Option1:TRUE
                                                     # Option2:FALSE 

AUDIO_STOP_RAMP = TRUE                              ### AUDIO FADING OUT WHEN STOP PLAYING 
                                                     # Option1:TRUE
                                                     # Option2:FALSE 

DSP_CTRL_PCM = TRUE




# *************************************************************************
# Feature Options FOR 19a PS
# !!!!!!!! Attention:please don't modify the customer value of this option part. !!!!!!!!!
# !!!!!!!! If modification is in need, the new version should be released by SPRD. !!!!!!!!!
# !!!!!!!! 注意: 此部分Options 为PS相关配置,除PS同事外,其他人请勿修改!!!!!!!!!
# !!!!!!!! 若需要修改,需要与PS同事联系!!!!!!!!!
# !!!!!!!!  存在几个???????未确定的宏 还需要确认
# *************************************************************************


DSP_USB_LOG = TRUE             ###  dsp usb log support
                                        # Option1:TRUE
                                        # Option2:FALSE



RF_TYPE         = QUORUM         ### RF Chip Type:
                                        # Option1:QUORUM      #define RF_TYPE_QUORUM
                                        # Option2:QUORUM518   #define RF_TYPE_QUORUM518


ATC_SUPPORT	  = FULL        ### ATC support feature
                                        # Option1:FULL
                                        # Option2:COMPACT

PRODUCT_DM       = TRUE         ### TD/GSM DualModule product
                                        # Option1:TRUE
                                        # Option2:FALSE

RF_AGC_3DB_FUNCTION       = TRUE        ### 3DB OR 2DB
                                        # Option1:TRUE
                                        # Option2:FALSE

GPRSMPDP_SUPPORT       = TRUE   ### GPRS Multi PDP support
                                        # Option1:TRUE
                                        # Option2:FALSE

DUALSIM_SUPPORT =   FALSE         ### Dual SIM CARD Support:
                                        # Option1:TRUE
                                        # Option2:FALSE
DUAL_SIM_PLUG_SUPPORT =   TRUE      ### Dual SIM HOT PLUG Support:
                                        # Option1:TRUE
                                        # Option2:FALSE

GPRS_SUPPORT =   TRUE         ### GRPS Support:
                                        # Option1:TRUE
                                        # Option2:FALSE

FDN_SUPPORT =   TRUE             ### FDN Support:
                                        # Option1:TRUE
                                        # Option2:FALSE

ifeq ($(strip $(GPRS_SUPPORT)), TRUE)
MBBMS_SUPPORT    = FALSE         ### MBBMS Player And Driver Support:
                                        # Option1:TRUE
                                        # Option2:FALSE
endif

MBEDTLS_SUPPORT = TRUE           ###  TLS1.2 Support
                                        # Option0:TRUE     
                                        # Option1:FALSE 
													 
ENABLE_HTTPC = TRUE               ###  TLS1.2 Support
                                        # Option0:TRUE     
                                        # Option1:FALSE 

TCPIP_SUPPORT     = TRUE         ### TCPIP Profile Support:
                                        # Option1:TRUE

EQ_EXE_ON_CHIP    = TRUE         ###  EQ Type:???????未确定
                                        # Option1:TRUE
                                        # Option2:FALSE

XML_SUPPORT      = TRUE          ### EXPAT XML Support:
                                        # Option1:FALSE

TIANLONG_MOCOR = TRUE            ### Switch between Advanced and Mocor PS:???????未确定
                                        # Option1:TRUE
                                        # Option2:FALSE

CMCC_VCARD_SUPPORT = TRUE        ### Switch VCARD Support:
                                        # Option1:TRUE
                                        # Option2:FALSE

IP6_SUPPORT = FALSE

LTE_SUPPORT = TRUE
LTE_PHY = MIMOON
LTE_MULTIMODE_SUPPORT = TRUE

#Following 2 macros define PS<->Audio DSP interface format, one of them can be set to TRUE at most
PS_NEW_AUDIO_CHANNEL_SUPPORT = FALSE #Used for Whale2/iWhale2
PS_AUDIO_CHANNEL_V2_SUPPORT = TRUE   #Used for SharkL2/iSharkL2

CEVA_TEAKLITE_SUPPORT = TRUE
WHALE_SUPPORT = TRUE

CRYSTAL_TYPE = TCXO             # Crystal_type
                                # Option1:VCTCXO
                                # Option2:TCXO


# Deata NV configuration
FORCECHANGE_SUPPORT = TRUE

DELTA_NV_PATITION_SUPPORT = TRUE

DELTA_NV_CONFIG_PATH = ums9117_nq2

DELTA_NV_BIN_SUPPORT = TRUE

#DELTA_NV_RF = RFID         ### RFID: Identify RF type by RF ID;
                           ### CHIPVER: Identify RF type by CHIP Version if no RF ID

DELTA_NV_OPERATOR = operator_config_all
                                # Option1:operator_config_all
                                # Option1:operator_config_customer

#DELTA_PRODUCT_NV_OPERATOR = TRUE

VOICE_WB  = TRUE    ### VOICE WIDEBAND OR NARROWBAND switch
                                        # Option1:TRUE
                                        # Option2:FALSE

VOICE_PROCESS_NEW = TRUE

SPRD_CP_TYPE_INTERNAL = TRUE    ###???????未确定

#ANALOG_SC2721 = TRUE



# *************************************************************************
# Feature Options (For User)
# !!!!!!!! The customer value can be modified in this option part.!!!!!!!!!
# !!!!!!!! If modification is in need,please find support from SPRD CPM or FAE.!!!!!!!!!
# !!!!!!!! 此部分Options 的值客户一般可以修改.!!!!!!!!!
# !!!!!!!! 此部分修改，最好与展讯客户经理(CPM)或技术支持工程师(FAE)沟通寻求支持.!!!!!!!!!
# *************************************************************************


PS_VER = TRUNK                     #PS version
                                 #Option1: TRUNK
                                 #Option2: 12B
                                 #Option3: BASE

ifeq ($(strip $(GPRS_SUPPORT)), TRUE)
DCD_SUPPORT    = FALSE            ### dcd support:
                                        # Option1:TRUE
                                        # Option2:FALSE


DEV_MANAGE_SUPPORT = FALSE        ### device manage support: ???????未确定
                                        # Option1:TRUE
                                        # Option2:FALSE

ifeq ($(strip $(DEV_MANAGE_SUPPORT)), TRUE)

DM_SUPPORT = DFRESH       ### DM LIBRARY:???????未确定
                                        # Option1:DFRESH   #define DM_SUPPORT_DFRESH
                                        # Option2:REDBENCH   #define DM_SUPPORT_REDBENCH

ifeq ($(strip $(DM_SUPPORT)), REDBENCH)
DM_FOTA_SUPPORT = TRUE                  ### REDBENCH DM FOTA Support:
                                        # Option1:TRUE
                                        # Option2:FALSE
else
DM_FOTA_SUPPORT = FALSE                 ### REDBENCH DM FOTA Support:
                                        # Option1:TRUE
                                        # Option2:FALSE
endif

endif

endif

VT_SUPPORT    = FALSE             ### VT support:
                                        # Option1:TRUE
                                        # Option2:FALSE

MODEM_VT_SUPPORT    = FALSE             ### MODEM VT support:
                                        # Option1:TRUE
                                        # Option2:FALSE

PCLINK_SUPPORT    = FALSE          ### PCLink function
                                        # Option1:TRUE
                                        # Option2:FALSE
                                        # work for TCPIP_SUPPORT = TRUE



DSPDATA_CODEC_SUPPORT = TRUE     ### DSP DATA CODEC switch
                                        # used to transfer data between arm and dsp in some cases like  voip/cdma/...
                                        # Option1:TRUE
                                        # Option2:FALSE

UPLINK_8PSK_SUPPORT = TRUE      ###需要手机硬件支持EDGE PA，才可以打开
                                 # Option1:TRUE    硬件支持上行8PSK
                                 # Option2:FALSE   硬件不支持上行8PSK

TCPIP_MODEM_ONLY_SUPPORT = TRUE         ### TCPIP modem mode only / normal mode feature
                                        # Option 1: TRUE
                                        # Option 2: FALSE

MULTI_SIM_SYS = DUAL        ### Platform Support Multi Sim Card Number:
                                        # Option1:SINGLE    #define MULTI_SIM_SYS_SINGLE
                                        # Option2:DUAL      #define MULTI_SIM_SYS_DUAL
                                        # Option3:TRI       #define MULTI_SIM_SYS_TRI
                                        # OPtion4:QUAD         #define MMI_MULTI_SIM_SYS_QUAD

REFP_SUPPORT        = FDDCSFB           ### Reference Phone SVLTE SUPPORT
                                        # Option1:FDDCSFB   #define REFP_SUPPORT_FDDCSFB
                                        # Option2:TDDCSFB   #define REFP_SUPPORT_TDDCSFB
                                        # Option3:SVLTE     #define REFP_SUPPORT_SVLTE
                                        # Option4:5MODECSFB #define REFP_SUPPORT_5MODECSFB


LTE_DUAL_CARD = TRUE

AGPS_SUPPORT = TRUE

RF_AGC_3DB_FUNCTION = TRUE
WCDMA_AS_PRESENT = TRUE

HS_CELL_CHANGE_ENABLE = TRUE
DC_HSDPA_ENABLE = FALSE

ifeq ($(strip $(WCDMA_AS_PRESENT)), TRUE)
#PS_VER = TRUNK                   #PS version
                                 #Option1: TRUNK
                                 #Option2: 12B
                                 #Option3: BASE

DEBUG_VERSION = TRUE


SLEEP_MODE = TRUE

CBS_OPEN = FALSE

#W_MODEM_DUALCORE           =TRUE

#W_DUALCORE_9620            =TRUE

_W_LTE_DUAL_MODE_          =TRUE

#CHIP9620_DMA_SEPARATE      = TRUE

W_TRACE_FUNC = TRUE

PS_SUPPORT = TRUE

EMBEDED_WCDMA_UNIT = TRUE

WPS_SUPPORT_RELEASE7 = TRUE

MTA_EXPAND_TRACE_BUFF = FALSE				###support high speed trace mode


MTA_EX_MERGE_TRACE_POOL = FALSE                       ###support high speed trace mode
                                                     # Option1:TRUE
                                                     # Option2:FALSE

#TRACE_FOR_WL1_DIVIDE				= FALSE											###support high speed trace mode
                                                     # Option1:TRUE
                                                     # Option2:FALSE

WL2_DATA_MGR_SUPPORT = FALSE                          ### WL2_DATA_MGR_SUPPORT
                                                     # Option1: TRUE

WPS_SUPPORT_RELEASE6 = TRUE                          # WPS_SUPPORT_RELEASE5
                                                     # Option1:TRUE
                                                     # Option2:FALSE

L1_IT = FALSE                                        ### L1_IT support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

XDSP_CFG_TFCI_HW = TRUE                              ### XDSP_CFG_TFCI_HW
                                                     # Option1:TRUE
                                                     # Option2:FALSE

W_MODEM_POWER_OFF_ENABLE = TRUE             # W_MODEM_POWER:
                                            #   TRUE - turn off w modem power when deep sleep
                                             #  FALSE - keep w modem power on when deep sleep
endif

DATA_PLANE_MIPS_OPT = TRUE

WL2_NONCACHE_MEM_ENABLE = TRUE

ERACH_SUPPORT=TRUE   ##SUPPORT E-RACH

MACI_ENABLE_CTRL=TRUE     ##SUPPOERT MAC-I

#DMA_LINK_ENABLE=TRUE      ##SUPPORT DMA LINK

WCDMA_DMA_SUPPORT = DMA_LINK_ONLY         ### WCDMA_DMA_SUPPORT
                                          # Option1:DMA1_ONLY
                                          # Option2:DMA_LINK_ONLY
                                          # Option2:DMA1_AND_DMA_LINK

WCDMA_HSDPA_21M = TRUE
#DMA_LINK_NONCACHE=TRUE       ##SUPPOERT DMA LINK
#W_TX_RLC_USE_NONCACHE_BUF=TRUE	## UL SUPPORT NONCACHE
UIA2_SUPPORT = TRUE           ### WL3 DMA LINK

WV2_DBITS_DUMP_SUPPORT=TRUE

ifeq ($(strip $(MMS_SUPPORT)), DORADO)
MMS_SUPPORT_IN_GPRSOFF = FALSE          ### MMS send/receive in gprs setting is off
                                       # Option1:TRUE
                                       # Option2:FALSE
endif

####*********** Volte*******************#####
SSL_SUPPORT      = TRUE        ### SSL Profile Support:

HTTP_SUPPORT     = TRUE          ### HTTP Profile Support:

VOLTE_SUPPORT = TRUE

ROHC_SUPPORT = TRUE


####*********** Sharkl2 add *******************#####

CONFIG_MEM_DECOUPLING = TRUE

V2_SUPPORT = TRUE

SHARKL2_SUPPORT = TRUE
SHARKLE_SUPPORT = TRUE
EVS_SUPPORT = TRUE
EVS_NV_SWITCH = FALSE
VIDEO_SUPPORT = TRUE

WCDMA_BANDS_SUPPORT = BAND_1_2_4_5_8

TSX_32KLESS = TRUE

PSDSP_INTERFACE_UL64QAM_SUPPORTED = TRUE

#EFUSE_CAT46 = TRUE

DFS_SUPPORT = TRUE

DISABLE_CA = FALSE

ENABLE_DL_CA = FALSE

DISABLE_LTE_PRESCAN = TRUE

DISABLE_CPP_INIT_COMPATIBLE = TRUE

PUBCP_LOW_POWER_CONFIG = TRUE   ###for sharkl2/sharklj1/sharkle
PUBCP_LPC_CONFIG = TRUE  ### for sharkl2/sharklj1/isharkl2/sharkle/pike2
WTLCP_TGDSP_SLEEP = TRUE

LTE_WCDMA_SHARE_MEM_SUPPORT = TRUE

LTE_CATEGORY = NUMBER_4             #NUMBER_1:CAT1
                                    #NUMBER_2:CAT2
                                    #NUMBER_3:CAT3
                                    #NUMBER_4:CAT4
                                    #NUMBER_5:CAT5
                                    #NUMBER_6:CAT6
                                    #NUMBER_7:CAT7
CRYSTAL_TYPE_ALL = TRUE

NV_EXTEND_1M = TRUE
CONFIG_VDDCORE_DVFS = TRUE

DVFS_ON = TRUE

FEATURE_ETB_EANBLE = TRUE

DVFS_MODE = 2                   #
                                # Option0:dvfs_mode=0x0
                                # Option1:dvfs_mode=0x1
                                # Option2:dvfs_mode=0x2

SPRD_DSI_CLK_SSC = TRUE
TD_AS_NOT_PRESENT    = TRUE     ### TD AS NOT support
                                # Option1:TRUE
                                # Option2:FALSE

WCDMA_IQ_CAPTURE_DEBUG = FALSE
WV2_SUPPORT_SRCHREST = TRUE

NEW_SIM_HOTPLUG_SUPPORT = FALSE

BAT_BUA_SUPPORT = FALSE

MOCONF_SIMLOCK = FALSE

CONFIG_SLP_PD_CHECK = TRUE

SUPPORT_NONCACHE_TP_DYNAMIC_CONF = TRUE

DSP_BIN_USE = SPS

#CUST_TYPE = 4GPLUS2G

ifeq ($(strip $(LTE_SUPPORT)), TRUE)
LTE_CA_SUPPORT = TRUE
endif

ifeq ($(strip $(LTE_CATEGORY)), NUMBER_4)
LTE_CA_SUPPORT = FALSE
endif

ifeq ($(strip $(CUST_TYPE)), 4GPLUS2G)
WCDMA_AS_PRESENT = FALSE
TD_AS_NOT_PRESENT = TRUE
endif



# *************************************************************************
# sharkle_pub_fp add
# !!!!!!!! The customer value can be modified in this option part.!!!!!!!!!
# !!!!!!!! If modification is in need,please find support from SPRD CPM or FAE.!!!!!!!!!
# !!!!!!!! 此部分Options 的值客户一般可以修改.!!!!!!!!!
# !!!!!!!! 此部分修改，最好与展讯客户经理(CPM)或技术支持工程师(FAE)沟通寻求支持.!!!!!!!!!
# *************************************************************************

#PRODUCT_CONFIG = sharkle_pub_fp

WCDMA_HSDPA_21M = TRUE

#EVS feature phone do not need support
EVS_NV_SWITCH = FALSE

WCDMA_IQ_CAPTURE_DEBUG = FALSE

#sharkle+9820E+3593A
LTE_RF_TYPE = NemoL_T117_NQ2

DUMP_MODEM_RFIC_ENABLE = TRUE

EVS_SUPPORT = TRUE

FEATURE_ETB_ENABLE = TRUE

VOLTE_CODEC_EVS_NOT_SUPPORT = TRUE

DSP_BIN_USE = FP


TDD_BANDS_SUPPORT = BAND_38_39_40_41   #LTE TDD band

FDD_BANDS_SUPPORT = BAND_1_2_3_4_5_7_8_12_13_17_20_28  # LTE FDD Band

SECURITY_DATA_PROTECT = FALSE

TASK_PRIORITY_256_SUPPORT = TRUE

MAILBOX_SUPPORT = TRUE								### MAILBOX_SUPPORT:
													# Option1:TRUE
													# Option2:FALSE

SPRD_SIPC_HOST = TRUE								### AP2CM4 SPRD_SIPC_HOST:
													# Option1:TRUE
													# Option2:FALSE
SIMULATION_NAND = FALSE		# if flash is not available，use DDR to store NV to keep the system running
                                # TRUE:without Nandflash，use DDR simulate Flash save NV
                                # FALSE: use nand flash

SPI_NAND_FLASH  = TRUE		# Nand flash interface type, If it is SPI NAND,this MACRO will be define

WIFI_BSP_SUPPORT = FALSE

CDROM_DISK_SUPPORT = FALSE

FLYMODE_ECC_SUPPORT = TRUE

AUDIO_DRV_DEBUG_SUPPORT = FALSE

APB_BUSMONITOR = FALSE
STK_EMBMS_DISABLE = TRUE

VOICE_PROCESS_NEW = TRUE				### Use new voice process code:
										# Option1:TRUE
										# Option2:FALSE

VOLTE_SUPPORT = TRUE                                 ### VOLTE_SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

CVS_ENABLE = TRUE                                    ### CVS_ENABLE:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

CVSRCD_ENABLE = TRUE                                 ### CVSRCD_ENABLE
                                                     # Option1:TRUE
                                                     # Option2:FALSE

FM_VBC = TRUE                                        # Option1:TRUE
                                                     # Option2:FALSE

MIPI_SUPPORT = TRUE                                  #gsm need use

DIAG_EX_SUPPORT = TRUE                               ### DIAG_EX_SUPPORT
                                                     # Option1:TRUE
                                                     # Option2:FALSE

#LTE_DL_CAT4_UL_CAT5 = TRUE

MMS_SUPPORT_IN_GPRSOFF = TRUE                        ###MMS can send/recieve when GPRS off
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MP3_EQ_SUPPORT = FALSE                                ### MP3 EQ Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE
###########SECURE_BOOT&SIMLOCK##############
SECURE_BOOT_SUPPORT =TRUE
SECURE_BOOT_ROTPK=TRUE
SECURE_BOOT_EN=TRUE
MOCONF_SIMLOCK = TRUE
SL_RSA2048_C = TRUE
##############################################
SPRD_MACRO_LIST := $(call GET_SPRD_MACRO_LIST)

# *************************************************************************
# Feature Options (For User)
# !!!!!!!! The customer value can be modified in this option part.!!!!!!!!!
# !!!!!!!! If modification is in need,please find support from SPRD CPM or FAE.!!!!!!!!!
# !!!!!!!! 此部分Options 的值客户一般可以修改.!!!!!!!!!
# !!!!!!!! 此部分修改，最好与展讯客户经理(CPM)或技术支持工程师(FAE)沟通寻求支持.!!!!!!!!!
# *************************************************************************
NQ2 = TRUE																					### NQ2 FLAG

NQ2_VERSION = NONE                                  ### option2 and 3 are value version support
                                                    # Option1:BASIC
                                                    # Option2:VALUE
                                                    # Option3:NONE

NQ2_FOTA_SUPPORT = FALSE                             ### FOTA SUPPORT.
                                                     # Option1:TRUE
                                                     # Option2:FALSE

USB_DRIVER_VER = DEFAULT                             ### Suitable for USB PC Driver
                                                     # Option1: DEFAULT	select default usb vid pid
                                                     # Option2: NQ2	select NQ2 usb vid pid

PC_CMD_REBOOT_DOWNLOAD = FALSE                       ### receive command for PC and then entry download mode
                                                     # Option1:TRUE
                                                     # Option2:FALSE

TORCH_SUPPORT = TRUE

RCV_THROUGH_SPK = FALSE		                           ## handset to go through the speak path
                                                     # Option1: TRUE
				                                             # Option2: FALSE

BGMUSIC_STOP_VIDEO_WALLPAPER = TRUE

###NQ2 UI MACRO Start###

MMI_UI_VER = NQ2                                     ### MMI use UI version
                                                     #option1:NONE    select default UI MS_MMI_MAIN
                                                     #option2: NQ2    select UI MS_MMI_NQ2

MMI_COMMON_IDLE_SUPPORT = FALSE                       ### Common Idle Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MMI_MSTYLE_SUPPORT = TRUE                            ### Microsoft Idle Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

PIC_ZOOM_SUPPORT = TRUE                              ### Picture zoom
                                                     # Option1:TRUE
                                                     # Option2:FALSE

PIC_CROP_SUPPORT = TRUE                              ### Picture crop support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_ENGLISH_SUPPORT	= TRUE	                     ### ENGLISH SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_SIMP_CHINESE_SUPPORT	= FALSE	                     ### SIMPLE CHINESE SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_TRAD_CHINESE_SUPPORT = FALSE                      ### TRAD CHINESE SUPPORT:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

TRACE_TYPE = CLASSIC                                      ### TRACE TYPE SUPPORT:
                                                     # Option1:CLASSIC
                                                     # Option2:ID

SMS_AUTO_SIGNATURE_SUPPORT = FALSE                   ### sms auto signature Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

AUTOSMS_SUPPORT = TRUE                             ### AUTOSMS_SUPPORT
                                                     # Option1:TRUE
                                                     # Option2:FALSE

XFILE_SUPPORT = TRUE                                ### XFILE_SUPPORT
                                                     # Option1:TRUE
                                                     # Option2:FALSE
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MID_SOFTKEY_USE_IMG_SUPPORT = FALSE                  ### MID_SOFTKEY_USE_IMG:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

GAME_SUPPORT = FALSE                                 ### game Support:
                                                     # Option1:TRUE
                                                     # Option2:FALSE

OD_GAME_SUPPORT = FALSE                              ### OD游戏总宏
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MMI_4G_SUPPORT = TRUE                               ### 4G SUPPORT
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MMI_VOLTE_SUPPORT = TRUE                            ### VOLTE SUPPORT
                                                     # Option1:TRUE
                                                     # Option2:FALSE

ifeq ($(strip $(MMI_VOLTE_SUPPORT)), TRUE)
    $(if $(filter FALSE,$(strip $(MMI_4G_SUPPORT))),$(error Please open macro MMI_4G_SUPPORT!!!))
endif

MMIDORADO_BOOKMARK_BY_NV = TRUE                      ### BOOKMARK
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MULIT_VARIANT_SUPPORT =  TRUE                        #ms multi-variant supported
                                                     # Option1:TRUE
                                                     # Option2:FALSE

NQ2_SKU1_VF_B40_Disable = FALSE						### Disable band 40

BOCA_BYD_VERSION = TRUE                        # version support, sms/mms UI style
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IKEYBACKUP_SUPPORT = TRUE                        # 1-key backup support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

PRIMO_UNITCONVERSION_SUPPORT = TRUE                  ### unitconversion Support:
                                                     # Please keep the switch MMI_UNITCONVERSION_SUPPORT was enabled
                                                     # Option1:TRUE
                                                     # Option2:FALSE

IM_ENGINE = NONE										 ### Im Engine Support:
                                                     # Option1:CSTAR         #define IM_ENGINE_CSTAR
                                                     # Option2:T9			 #define IM_ENGINE_T9
                                                     # Optino3:NONE          #define IM_ENGINE_NONE
                                                     # Option: IEKIE         #define IM_ENGINE_IEKIE(MUST use spml display engine)

DEVICE_INFO_SUPPORT = TRUE                        # device info support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

DC_FLASH_SUPPORT = FALSE                             ### dc flash support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

EBOOK_SUPPORT = FALSE                                ### EBOOK Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MMI_DAC_SUPPORT = TRUE                               ### Support DAC
                                                     # Option1: TRUE
                                                     # Option2: FALSE

BT_PBAP_SUPPORT = TRUE                               ###
                                                     # Option1:TRUE
                                                     # Option2:FALSE
MMI_BT_PBAP_SUPPORT = TRUE                           ###
                                                     # Option1:TRUE
                                                     # Option2:FALSE

UI_P3D_SUPPORT = FALSE                               ### UI P3D Effect Support
                                                     # Option1:TRUE
                                                     # Option2:FALSE

MMI_3DUI_SUPPORT = FALSE                             ### algorithm collection(sin cos)
                                                     # Option1:TRUE
                                                     # Option2:FALSE

NQ2_OTA_SUPPORT = TRUE                               ###
                                                     # Option1:TRUE
                                                     # Option2:FALSE

DISPLAY_ROAMING_ICON = TRUE                          ### whether display the roaming icon or not
                                                     #Option1:TRUE   
                                                     #Option2:FALSE

###NQ2 UI MACRO END###

