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

OHOS_SOURCE_ROOT := ../../../../../
HDF_FRAMEWORK_SRC_DIR := ../../../../

SEC_LIB_SOURCES = memcpy_s.c memmove_s.c memset_s.c securecutil.c secureinput_a.c secureprintoutput_a.c snprintf_s.c \
                  sprintf_s.c strcat_s.c strcpy_s.c strncat_s.c strncpy_s.c strtok_s.c  vsnprintf_s.c vsprintf_s.c
SEC_FUNCTION_OBJECTS := $(patsubst %.c,%.o,$(SEC_LIB_SOURCES))
SEC_FUNCTION_OBJECTS := $(addprefix $(OHOS_SOURCE_ROOT)/third_party/bounds_checking_function/src/,${SEC_FUNCTION_OBJECTS})

obj-y += \
        $(HDF_FRAMEWORK_SRC_DIR)/framework/utils/src/hdf_cstring.o \
        $(HDF_FRAMEWORK_SRC_DIR)/framework/utils/src/hdf_slist.o \
        $(HDF_FRAMEWORK_SRC_DIR)/framework/utils/src/hdf_sref.o \
        $(HDF_FRAMEWORK_SRC_DIR)/framework/utils/src/hdf_map.o \
        $(HDF_FRAMEWORK_SRC_DIR)/framework/ability/sbuf/src/hdf_sbuf.o \
        $(HDF_FRAMEWORK_SRC_DIR)/framework/ability/sbuf/src/hdf_sbuf_impl_raw.o \
        $(HDF_FRAMEWORK_SRC_DIR)/framework/core/host/src/devhost_service.o \
        $(HDF_FRAMEWORK_SRC_DIR)/framework/core/host/src/devmgr_service_clnt.o \
        $(HDF_FRAMEWORK_SRC_DIR)/framework/core/host/src/devsvc_manager_clnt.o \
        $(HDF_FRAMEWORK_SRC_DIR)/framework/core/host/src/hdf_device.o \
        $(HDF_FRAMEWORK_SRC_DIR)/framework/core/host/src/hdf_device_node.o \
        $(HDF_FRAMEWORK_SRC_DIR)/framework/core/host/src/hdf_device_token.o \
        $(HDF_FRAMEWORK_SRC_DIR)/framework/core/host/src/hdf_driver_loader.o \
        $(HDF_FRAMEWORK_SRC_DIR)/framework/core/host/src/hdf_observer_record.o \
        $(HDF_FRAMEWORK_SRC_DIR)/framework/core/host/src/hdf_service_subscriber.o \
        $(HDF_FRAMEWORK_SRC_DIR)/framework/core/host/src/hdf_device_object.o \
        $(HDF_FRAMEWORK_SRC_DIR)/framework/core/host/src/hdf_service_observer.o \
        $(HDF_FRAMEWORK_SRC_DIR)/framework/core/host/src/power_state_token.o \
        $(HDF_FRAMEWORK_SRC_DIR)/framework/core/manager/src/devhost_service_clnt.o \
        $(HDF_FRAMEWORK_SRC_DIR)/framework/core/manager/src/device_token_clnt.o \
        $(HDF_FRAMEWORK_SRC_DIR)/framework/core/manager/src/devmgr_service.o \
        $(HDF_FRAMEWORK_SRC_DIR)/framework/core/manager/src/devsvc_manager.o \
        $(HDF_FRAMEWORK_SRC_DIR)/framework/core/manager/src/hdf_driver_installer.o \
        $(HDF_FRAMEWORK_SRC_DIR)/framework/core/manager/src/hdf_host_info.o \
        $(HDF_FRAMEWORK_SRC_DIR)/framework/core/manager/src/power_state_token_clnt.o \
        $(HDF_FRAMEWORK_SRC_DIR)/framework/core/shared/src/hdf_service_record.o \
        $(HDF_FRAMEWORK_SRC_DIR)/framework/core/shared/src/hdf_device_info.o \
        $(HDF_FRAMEWORK_SRC_DIR)/framework/core/shared/src/hdf_object_manager.o \
        $(HDF_FRAMEWORK_SRC_DIR)/framework/core/shared/src/hdf_io_service.o \
        $(HDF_FRAMEWORK_SRC_DIR)/framework/core/common/src/devlite_object_config.o \
        $(HDF_FRAMEWORK_SRC_DIR)/framework/core/common/src/hdf_attribute.o \
        $(HDF_FRAMEWORK_SRC_DIR)/framework/core/common/src/load_driver_entry.o \
        $(HDF_FRAMEWORK_SRC_DIR)/framework/core/common/src/devmgr_service_start.o \
        $(HDF_FRAMEWORK_SRC_DIR)/framework/core/common/src/hdf_device_node_ext.o \
        $(HDF_FRAMEWORK_SRC_DIR)/framework/core/adapter/vnode/src/hdf_vnode_adapter.o \
        ./src/devmgr_load.o \
        $(SEC_FUNCTION_OBJECTS)

ccflags-y += \
        -Idrivers/hdf/framework/include \
        -Idrivers/hdf/framework/include/osal \
        -Idrivers/hdf/framework/include/utils \
        -Idrivers/hdf/framework/include \
        -Idrivers/hdf/framework/utils/include \
        -Idrivers/hdf/framework/include/core \
        -Idrivers/hdf/framework/ability/sbuf/include \
        -Idrivers/hdf/framework/core/host/include \
        -Idrivers/hdf/framework/core/manager/include \
        -Idrivers/hdf/framework/core/shared/include \
        -Idrivers/hdf/framework/core/common/include/host \
        -Idrivers/hdf/framework/core/common/include/manager \
        -Idrivers/hdf/framework/core/adapter/vnode/include \
        -Idrivers/hdf/framework/ability/config/hcs_parser/include \
        -Idrivers/hdf/framework/include/config \
        -Idrivers/hdf/framework/ability/config/hcs_parser/include \
        -Idrivers/hdf/khdf/osal/include \
        -Iinclude/uapi/linux \
        -Ibounds_checking_function/include
