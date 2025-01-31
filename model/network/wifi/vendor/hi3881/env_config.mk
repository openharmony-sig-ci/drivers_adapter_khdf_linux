#
# Copyright (c) 2020-2021 Huawei Device Co., Ltd.
#
# This software is licensed under the terms of the GNU General Public
# License version 2, as published by the Free Software Foundation, and
# may be copied, distributed, and modified under those terms.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
#

#####################################WiFi config######################################
CFG_ANTI_INTERF = y
CFG_CCA_OPT = y
CFG_DBAC = y
CFG_EDCA_OPT = y
CFG_EDCA_OPT_AP = y
CFG_SCHEDULE = y
CFG_TRAFFIC_CTL = n
CFG_TPC = y
CFG_RF_1102CALI = y
CFG_RF_110X_CALI_DPD = n
CFG_NEW_IQ = y
CFG_ALG_CFG = n
CFG_HCC_TASK = y
########################flash cut begin########################
######## CFG_XXX_ROM can't be set to n ########
CFG_P2P = y
CFG_P2P_ROM = y
CFG_WAPI = n
CFG_WAPI_ROM = y
CFG_WOW = y
CFG_WOW_ROM = y
CFG_REKEY_OFFLOAD = n
CFG_REKEY_OFFLOAD_ROM = y
CFG_PROMIS = y
CFG_PROMIS_ROM = y
CFG_MFG_TEST = y
CFG_CE_MODE = y
CFG_FCC_MODE = n
CFG_MFG_FW = n
########################flash cut end##########################
CFG_BTCOEX_ROM = y
CFG_ANY = n
CFG_STA_PM = y
CFG_MESH = n
CFG_TCP_OPT = n
CFG_TX_CLASSIFY_LAN_TO_WLAN = n
CFG_UAPSD = y
CFG_ARP_OFFLOAD = y
CFG_DHCP_OFFLOAD = y
CFG_LITEOS = n
CFG_SIGMA = y
CFG_HIPRIV = y

######################################################################################
HI1131_WIFI_CFLAGS +=-D_PRE_OS_VERSION_LINUX=1
HI1131_WIFI_CFLAGS +=-D_PRE_OS_VERSION_LITEOS=2
ifeq ($(CFG_LITEOS), y)
HI1131_WIFI_CFLAGS +=-D_PRE_OS_VERSION=_PRE_OS_VERSION_LITEOS
else
HI1131_WIFI_CFLAGS +=-D_PRE_OS_VERSION=_PRE_OS_VERSION_LINUX
endif
HI1131_WIFI_CFLAGS +=-D_PRE_HDF_LINUX

HI1131_WIFI_CFLAGS +=-D_PRE_FRW_FEATURE_PROCESS_ENTITY_THREAD=0
HI1131_WIFI_CFLAGS +=-D_PRE_FRW_FEATURE_PROCESS_ENTITY_TASKLET=1
HI1131_WIFI_CFLAGS +=-D_PRE_FRW_FEATURE_PROCESS_ENTITY_TYPE=_PRE_FRW_FEATURE_PROCESS_ENTITY_THREAD

#######################################HI1131#########################################
HI1131_WIFI_CFLAGS +=-D_PRE_MULTI_CORE_MODE_SMP=1
HI1131_WIFI_CFLAGS +=-D_PRE_MULTI_CORE_MODE_OFFLOAD_HMAC=2
HI1131_WIFI_CFLAGS +=-D_PRE_MULTI_CORE_MODE_OFFLOAD_DMAC=3
ifeq ($(LOSCFG_COMPILER_HI3861_FLASH), y)
HI1131_WIFI_CFLAGS +=-D_PRE_MULTI_CORE_MODE=_PRE_MULTI_CORE_MODE_SMP
else
HI1131_WIFI_CFLAGS +=-D_PRE_MULTI_CORE_MODE=_PRE_MULTI_CORE_MODE_OFFLOAD_DMAC
endif

HI1131_WIFI_CFLAGS +=-D_PRE_BIG_CPU_ENDIAN=0
HI1131_WIFI_CFLAGS +=-D_PRE_LITTLE_CPU_ENDIAN=1
HI1131_WIFI_CFLAGS +=-D_PRE_CPU_ENDIAN=_PRE_LITTLE_CPU_ENDIAN
HI1131_WIFI_CFLAGS +=-D_HI_BOARD_FPGA=1
HI1131_WIFI_CFLAGS +=-D_HI_BOARD_ASIC=2
ifeq ($(LOSCFG_COMPILER_HI3861_ASIC), y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_CHIP_VERSION=_HI_BOARD_ASIC
else
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_CHIP_VERSION=_HI_BOARD_FPGA
endif

ifeq ($(QUICK_START),y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_QUICK_START
endif
ifeq ($(NO_32K),y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_NO_32K
endif

ifeq ($(BOARD_FUNC), DG)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FPGA_DIGITAL
endif

################################################################################
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_PMF
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_AUTORATE
ifeq ($(CFG_SCHEDULE), y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_SCHEDULE
endif
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_PERFORM_TPC
ifeq ($(CFG_TPC), y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_TPC
endif
ifeq ($(CFG_DBAC), y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_DBAC
endif
HI1131_WIFI_CFLAGS +=-D_PRE_DBAC_DYNAMIC_POLICY
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_AGGR_OPTIMIZE
ifeq ($(CFG_CCA_OPT), y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_CCA_OPT
endif
ifeq ($(CFG_EDCA_OPT), y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_EDCA_OPT
endif
ifeq ($(CFG_EDCA_OPT_AP), y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_EDCA_OPT_AP
endif
ifeq ($(CFG_ANTI_INTERF), y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_ANTI_INTERF
endif
ifeq ($(CFG_TRAFFIC_CTL), y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_TRAFFIC_CTL
endif
ifeq ($(CFG_ALG_CFG),y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_ALG_CFG
endif
ifeq ($(CFG_ALG_INTRF_MODE),y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_INTRF_MODE
endif
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_ALG_CFG_ROM
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_FLOWCTRL
ifeq ($(CFG_TX_CLASSIFY_LAN_TO_WLAN), y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_TX_CLASSIFY_LAN_TO_WLAN
endif
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_CLASSIFY
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_ALWAYS_TX
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_WPA
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_WPA2
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_AMPDU
ifeq ($(CFG_ARP_OFFLOAD), y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_ARP_OFFLOAD
endif
ifeq ($(CFG_DHCP_OFFLOAD), y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_DHCP_OFFLOAD
endif
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_DHCP_OFFLOAD_ROM
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_PKT_MEM_OPT
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_PM_FEATURE_FORCESLP_RESUME
HI1131_WIFI_CFLAGS +=-D__BITS_PER_OAL_LONG=32
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_11D
ifeq ($(CFG_NEW_IQ), y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_NEW_IQ
endif
ifeq ($(CFG_P2P), y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_P2P
endif
ifeq ($(CFG_P2P_ROM), y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_P2P_ROM
endif
ifeq ($(CFG_ANY), y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_ANY
endif
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_ANY_ROM
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_CSI
ifeq ($(CFG_STA_PM), y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_STA_PM
endif
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_STA_UAPSD
ifeq ($(CFG_MESH), y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_MESH
endif
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_MESH_ROM
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_BW_HIEX
ifeq ($(CFG_BTCOEX), y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_BTCOEX
endif
ifeq ($(CFG_BTCOEX_ROM), y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_BTCOEX_ROM
endif
ifeq ($(CFG_RF_110X_CALI_DPD), y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_RF_110X_CALI_DPD
endif
ifeq ($(CFG_RF_1102CALI), y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_RF_1102CALI
endif
ifeq ($(CFG_UAPSD), y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_UAPSD
endif
ifeq ($(CFG_WAPI), y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_WAPI
endif
ifeq ($(CFG_WAPI_ROM), y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_WAPI_ROM
endif
ifeq ($(CFG_TCP_OPT), y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_TCP_OPT
endif

HI1131_WIFI_CFLAGS +=-D_PRE_XTAL_FREQUENCY_COMPESATION_ENABLE

################################SDIO MMC CONFIG#############################
HI1131_WIFI_CFLAGS +=-DCONFIG_MMC
HI1131_WIFI_CFLAGS +=-DCONFIG_PRINTK
HI1131_WIFI_CFLAGS +=-D_PRE_FEATURE_NO_GPIO
ifeq ($(CFG_REKEY_OFFLOAD), y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_REKEY_OFFLOAD
endif
ifeq ($(CFG_REKEY_OFFLOAD_ROM), y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_REKEY_OFFLOAD_ROM
endif
ifeq ($(CFG_WOW), y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_WOW
endif
ifeq ($(CFG_WOW_ROM), y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_WOW_ROM
endif
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_HILINK
ifeq ($(CFG_PROMIS), y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_PROMIS
endif
ifeq ($(CFG_PROMIS_ROM), y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_PROMIS_ROM
endif
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_SMARTCONFIG_APP
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_TEMP_PROTECT
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_SINGLE_DEVICE

ifeq ($(CFG_SIGMA), y)
#sigma tool support
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_SIGMA
endif

ifeq ($(CFG_MFG_TEST), y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_MFG_TEST
endif

ifeq ($(CFG_MFG_FW), y)
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_MFG_FW
endif

ifeq ($(CFG_CE_MODE), y)
HI1131_WIFI_CFLAGS +=-D_PRE_CE_INITIAL_PARAMS_MODE
endif

ifeq ($(CFG_FCC_MODE), y)
HI1131_WIFI_CFLAGS +=-D_PRE_FCC_INITIAL_PARAMS_MODE
endif

ifeq ($(CFG_HIPRIV), y)
#sdv test support
HI1131_WIFI_CFLAGS +=-D_PRE_WLAN_FEATURE_HIPRIV
ifeq ($(CFG_LITEOS), n)
HI1131_WIFI_CFLAGS +=-D_PRE_CONFIG_CONN_HISI_SYSFS_SUPPORT
else
HI1131_WIFI_CFLAGS +=-DAT_DEBUG_CMD_SUPPORT
endif
endif

################################WAIT MODIFIED SDIO##############################
HI1131_WIFI_CFLAGS +=-D_PRE_FEATURE_SDIO=1
HI1131_WIFI_CFLAGS +=-D_PRE_FEATURE_USB=2
HI1131_WIFI_CFLAGS +=-D_PRE_FEATURE_CHANNEL_TYPE=_PRE_FEATURE_SDIO
HI1131_WIFI_CFLAGS +=-DCONFIG_HI110X_SDIO_STD_CARD_SUPPORT

################################HCC_TASK##############################
ifeq ($(CFG_HCC_TASK), y)
HI1131_WIFI_CFLAGS +=-D_PRE_FEATURE_HCC_TASK
endif

################################WIFI_DRIVER_DIR##############################
HI1131_WIFI_CFLAGS += -I$(INC_TOP_PATH)/$(WIFI_DRIVER_DIR)/wal
HI1131_WIFI_CFLAGS += -I$(INC_TOP_PATH)/$(WIFI_DRIVER_DIR)/oam
HI1131_WIFI_CFLAGS += -I$(INC_TOP_PATH)/$(WIFI_DRIVER_DIR)/mac/hmac

HI1131_WIFI_CFLAGS += -I$(INC_TOP_PATH)/$(WIFI_DRIVER_DIR)/mac/common
HI1131_WIFI_CFLAGS += -I$(INC_TOP_PATH)/$(WIFI_DRIVER_DIR)/hcc
HI1131_WIFI_CFLAGS += -I$(INC_TOP_PATH)/$(WIFI_DRIVER_DIR)/frw
HI1131_WIFI_CFLAGS += -I$(INC_TOP_PATH)/$(WIFI_DRIVER_DIR)/oal
HI1131_WIFI_CFLAGS += -I$(INC_TOP_PATH)/$(WIFI_DRIVER_DIR)/include

################################device##############################
HI1131_WIFI_CFLAGS += -I$(INC_TOP_PATH)/$(WIFI_DRIVER_DIR)/hdfadapt

ifeq ($(LOSCFG_PLATFORM_HI3516EV300), y)
HI1131_WIFI_CFLAGS +=-DHISI_WIFI_PLATFORM_HI3516EV300
endif