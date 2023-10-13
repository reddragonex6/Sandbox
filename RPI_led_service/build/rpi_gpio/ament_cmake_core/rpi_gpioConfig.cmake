# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_rpi_gpio_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED rpi_gpio_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(rpi_gpio_FOUND FALSE)
  elseif(NOT rpi_gpio_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(rpi_gpio_FOUND FALSE)
  endif()
  return()
endif()
set(_rpi_gpio_CONFIG_INCLUDED TRUE)

# output package information
if(NOT rpi_gpio_FIND_QUIETLY)
  message(STATUS "Found rpi_gpio: 0.0.0 (${rpi_gpio_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'rpi_gpio' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT rpi_gpio_DEPRECATED_QUIET)
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(rpi_gpio_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${rpi_gpio_DIR}/${_extra}")
endforeach()
