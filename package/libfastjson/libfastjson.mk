################################################################################
#
# libfastjson
#
################################################################################

LIBFASTJSON_VERSION_NUM = 0.99.8
LIBFASTJSON_VERSION = v$(LIBFASTJSON_VERSION_NUM)
LIBFASTJSON_SITE = $(call github,rsyslog,libfastjson,$(LIBFASTJSON_VERSION))
LIBFASTJSON_INSTALL_STAGING = YES
LIBFASTJSON_CONF_ENV = ac_cv_prog_cc_c99='-std=gnu99'
# From git
LIBFASTJSON_AUTORECONF = YES
LIBFASTJSON_LICENSE = MIT
LIBFASTJSON_LICENSE_FILES = COPYING
LIBFASTJSON_CPE_ID_VENDOR = adiscon

LIBFASTJSON_CPE_ID_VERSION = $(LIBFASTJSON_VERSION_NUM)
LIBFASTJSON_CPE_ID_VENDOR = rsyslog

$(eval $(autotools-package))
