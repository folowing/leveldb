# - Find crc32c
# Find the crc32c library and includes
#
#  CRC32C_INCLUDE_DIRS - where to find snappy.h, etc.
#  CRC32C_LIBRARIES   - List of libraries when using snappy.
#  CRC32C_FOUND       - True if snappy found.

FIND_PATH(CRC32C_INCLUDE_DIRS crc32c/crc32c.h PATHS
  /usr/include
  /opt/local/include
  /usr/local/include
  /tmp/usr/local/include
)

FIND_LIBRARY(CRC32C_LIBRARIES NAMES crc32c PATHS
  /usr/local/lib
  /opt/local/lib
  /usr/lib
  /tmp/usr/local/lib
)

# handle the QUIETLY and REQUIRED arguments and set CRC32C_FOUND to TRUE if
# all listed variables are TRUE
include(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(crc32c
                                  REQUIRED_VARS CRC32C_LIBRARIES CRC32C_INCLUDE_DIRS
                                  VERSION_VAR CRC32C_VERSION_STRING)
MARK_AS_ADVANCED(CRC32C_INCLUDE_DIRS)

