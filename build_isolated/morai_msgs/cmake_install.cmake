# Install script for directory: /home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/yuwongyun/catkin_ws/install_isolated")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/yuwongyun/catkin_ws/install_isolated/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/yuwongyun/catkin_ws/install_isolated" TYPE PROGRAM FILES "/home/yuwongyun/catkin_ws/build_isolated/morai_msgs/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/yuwongyun/catkin_ws/install_isolated/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/yuwongyun/catkin_ws/install_isolated" TYPE PROGRAM FILES "/home/yuwongyun/catkin_ws/build_isolated/morai_msgs/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/yuwongyun/catkin_ws/install_isolated/setup.bash;/home/yuwongyun/catkin_ws/install_isolated/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/yuwongyun/catkin_ws/install_isolated" TYPE FILE FILES
    "/home/yuwongyun/catkin_ws/build_isolated/morai_msgs/catkin_generated/installspace/setup.bash"
    "/home/yuwongyun/catkin_ws/build_isolated/morai_msgs/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/yuwongyun/catkin_ws/install_isolated/setup.sh;/home/yuwongyun/catkin_ws/install_isolated/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/yuwongyun/catkin_ws/install_isolated" TYPE FILE FILES
    "/home/yuwongyun/catkin_ws/build_isolated/morai_msgs/catkin_generated/installspace/setup.sh"
    "/home/yuwongyun/catkin_ws/build_isolated/morai_msgs/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/yuwongyun/catkin_ws/install_isolated/setup.zsh;/home/yuwongyun/catkin_ws/install_isolated/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/yuwongyun/catkin_ws/install_isolated" TYPE FILE FILES
    "/home/yuwongyun/catkin_ws/build_isolated/morai_msgs/catkin_generated/installspace/setup.zsh"
    "/home/yuwongyun/catkin_ws/build_isolated/morai_msgs/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/yuwongyun/catkin_ws/install_isolated/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/yuwongyun/catkin_ws/install_isolated" TYPE FILE FILES "/home/yuwongyun/catkin_ws/build_isolated/morai_msgs/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/morai_msgs/msg" TYPE FILE FILES
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/CtrlCmd.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/EgoVehiclePosition.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/EgoVehicleStatus.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/EgoVehicleVelocity.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/FactoryAddress.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/GPSMessage.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/GuideData.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/ObjectInfo.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/ScenarioLoad.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/SVehicleStatus.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/TrafficLight.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/VehicleCommand.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/VelPlot.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/ERP42Info.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/GetTrafficLightStatus.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/SetTrafficLight.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/IntersectionControl.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/IntersectionStatus.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/CollisionData.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/MultiEgoSetting.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/IntscnTL.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/SensorPosControl.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/GenericVehicleControl.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/SaveSensorData.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/MoraiTimestamp.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/GhostMessage.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/Lamps.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/MoraiTLInfo.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/MoraiSimProcHandle.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/MoraiSimProcStatus.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/MoraiSrvResponse.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/MoraiTLIndex.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/RadarTrack.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/RadarTracks.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/Mgeo.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/MgeoLink.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/MgeoLinkList.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/MgeoNode.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/MgeoNodeList.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/EventInfo.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/ReplayInfo.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/ObjectStatus.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/ObjectStatusList.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/VehicleSpecIndex.msg"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/msg/VehicleSpec.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/morai_msgs/srv" TYPE FILE FILES
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/srv/MoraiScenarioLoadSrv.srv"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/srv/MoraiSimProcSrv.srv"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/srv/MoraiTLInfoSrv.srv"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/srv/MoraiVehicleSpecSrv.srv"
    "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/srv/MoraiEventCmdSrv.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/morai_msgs/cmake" TYPE FILE FILES "/home/yuwongyun/catkin_ws/build_isolated/morai_msgs/catkin_generated/installspace/morai_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/yuwongyun/catkin_ws/devel_isolated/morai_msgs/include/morai_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/yuwongyun/catkin_ws/devel_isolated/morai_msgs/share/roseus/ros/morai_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/yuwongyun/catkin_ws/devel_isolated/morai_msgs/share/common-lisp/ros/morai_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/yuwongyun/catkin_ws/devel_isolated/morai_msgs/share/gennodejs/ros/morai_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/yuwongyun/catkin_ws/devel_isolated/morai_msgs/lib/python2.7/dist-packages/morai_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/yuwongyun/catkin_ws/devel_isolated/morai_msgs/lib/python2.7/dist-packages/morai_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/yuwongyun/catkin_ws/build_isolated/morai_msgs/catkin_generated/installspace/morai_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/morai_msgs/cmake" TYPE FILE FILES "/home/yuwongyun/catkin_ws/build_isolated/morai_msgs/catkin_generated/installspace/morai_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/morai_msgs/cmake" TYPE FILE FILES
    "/home/yuwongyun/catkin_ws/build_isolated/morai_msgs/catkin_generated/installspace/morai_msgsConfig.cmake"
    "/home/yuwongyun/catkin_ws/build_isolated/morai_msgs/catkin_generated/installspace/morai_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/morai_msgs" TYPE FILE FILES "/home/yuwongyun/catkin_ws/src/wecar_msgs/morai_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/yuwongyun/catkin_ws/build_isolated/morai_msgs/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/yuwongyun/catkin_ws/build_isolated/morai_msgs/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
