
(cl:in-package :asdf)

(defsystem "morai_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "CollisionData" :depends-on ("_package_CollisionData"))
    (:file "_package_CollisionData" :depends-on ("_package"))
    (:file "CtrlCmd" :depends-on ("_package_CtrlCmd"))
    (:file "_package_CtrlCmd" :depends-on ("_package"))
    (:file "ERP42Info" :depends-on ("_package_ERP42Info"))
    (:file "_package_ERP42Info" :depends-on ("_package"))
    (:file "EgoVehiclePosition" :depends-on ("_package_EgoVehiclePosition"))
    (:file "_package_EgoVehiclePosition" :depends-on ("_package"))
    (:file "EgoVehicleStatus" :depends-on ("_package_EgoVehicleStatus"))
    (:file "_package_EgoVehicleStatus" :depends-on ("_package"))
    (:file "EgoVehicleVelocity" :depends-on ("_package_EgoVehicleVelocity"))
    (:file "_package_EgoVehicleVelocity" :depends-on ("_package"))
    (:file "EventInfo" :depends-on ("_package_EventInfo"))
    (:file "_package_EventInfo" :depends-on ("_package"))
    (:file "FactoryAddress" :depends-on ("_package_FactoryAddress"))
    (:file "_package_FactoryAddress" :depends-on ("_package"))
    (:file "GPSMessage" :depends-on ("_package_GPSMessage"))
    (:file "_package_GPSMessage" :depends-on ("_package"))
    (:file "GenericVehicleControl" :depends-on ("_package_GenericVehicleControl"))
    (:file "_package_GenericVehicleControl" :depends-on ("_package"))
    (:file "GetTrafficLightStatus" :depends-on ("_package_GetTrafficLightStatus"))
    (:file "_package_GetTrafficLightStatus" :depends-on ("_package"))
    (:file "GhostMessage" :depends-on ("_package_GhostMessage"))
    (:file "_package_GhostMessage" :depends-on ("_package"))
    (:file "GuideData" :depends-on ("_package_GuideData"))
    (:file "_package_GuideData" :depends-on ("_package"))
    (:file "IntersectionControl" :depends-on ("_package_IntersectionControl"))
    (:file "_package_IntersectionControl" :depends-on ("_package"))
    (:file "IntersectionStatus" :depends-on ("_package_IntersectionStatus"))
    (:file "_package_IntersectionStatus" :depends-on ("_package"))
    (:file "IntscnTL" :depends-on ("_package_IntscnTL"))
    (:file "_package_IntscnTL" :depends-on ("_package"))
    (:file "Lamps" :depends-on ("_package_Lamps"))
    (:file "_package_Lamps" :depends-on ("_package"))
    (:file "Mgeo" :depends-on ("_package_Mgeo"))
    (:file "_package_Mgeo" :depends-on ("_package"))
    (:file "MgeoLink" :depends-on ("_package_MgeoLink"))
    (:file "_package_MgeoLink" :depends-on ("_package"))
    (:file "MgeoLinkList" :depends-on ("_package_MgeoLinkList"))
    (:file "_package_MgeoLinkList" :depends-on ("_package"))
    (:file "MgeoNode" :depends-on ("_package_MgeoNode"))
    (:file "_package_MgeoNode" :depends-on ("_package"))
    (:file "MgeoNodeList" :depends-on ("_package_MgeoNodeList"))
    (:file "_package_MgeoNodeList" :depends-on ("_package"))
    (:file "MoraiSimProcHandle" :depends-on ("_package_MoraiSimProcHandle"))
    (:file "_package_MoraiSimProcHandle" :depends-on ("_package"))
    (:file "MoraiSimProcStatus" :depends-on ("_package_MoraiSimProcStatus"))
    (:file "_package_MoraiSimProcStatus" :depends-on ("_package"))
    (:file "MoraiSrvResponse" :depends-on ("_package_MoraiSrvResponse"))
    (:file "_package_MoraiSrvResponse" :depends-on ("_package"))
    (:file "MoraiTLIndex" :depends-on ("_package_MoraiTLIndex"))
    (:file "_package_MoraiTLIndex" :depends-on ("_package"))
    (:file "MoraiTLInfo" :depends-on ("_package_MoraiTLInfo"))
    (:file "_package_MoraiTLInfo" :depends-on ("_package"))
    (:file "MoraiTimestamp" :depends-on ("_package_MoraiTimestamp"))
    (:file "_package_MoraiTimestamp" :depends-on ("_package"))
    (:file "MultiEgoSetting" :depends-on ("_package_MultiEgoSetting"))
    (:file "_package_MultiEgoSetting" :depends-on ("_package"))
    (:file "ObjectInfo" :depends-on ("_package_ObjectInfo"))
    (:file "_package_ObjectInfo" :depends-on ("_package"))
    (:file "ObjectStatus" :depends-on ("_package_ObjectStatus"))
    (:file "_package_ObjectStatus" :depends-on ("_package"))
    (:file "ObjectStatusList" :depends-on ("_package_ObjectStatusList"))
    (:file "_package_ObjectStatusList" :depends-on ("_package"))
    (:file "RadarTrack" :depends-on ("_package_RadarTrack"))
    (:file "_package_RadarTrack" :depends-on ("_package"))
    (:file "RadarTracks" :depends-on ("_package_RadarTracks"))
    (:file "_package_RadarTracks" :depends-on ("_package"))
    (:file "ReplayInfo" :depends-on ("_package_ReplayInfo"))
    (:file "_package_ReplayInfo" :depends-on ("_package"))
    (:file "SVehicleStatus" :depends-on ("_package_SVehicleStatus"))
    (:file "_package_SVehicleStatus" :depends-on ("_package"))
    (:file "SaveSensorData" :depends-on ("_package_SaveSensorData"))
    (:file "_package_SaveSensorData" :depends-on ("_package"))
    (:file "ScenarioLoad" :depends-on ("_package_ScenarioLoad"))
    (:file "_package_ScenarioLoad" :depends-on ("_package"))
    (:file "SensorPosControl" :depends-on ("_package_SensorPosControl"))
    (:file "_package_SensorPosControl" :depends-on ("_package"))
    (:file "SetTrafficLight" :depends-on ("_package_SetTrafficLight"))
    (:file "_package_SetTrafficLight" :depends-on ("_package"))
    (:file "TrafficLight" :depends-on ("_package_TrafficLight"))
    (:file "_package_TrafficLight" :depends-on ("_package"))
    (:file "VehicleCommand" :depends-on ("_package_VehicleCommand"))
    (:file "_package_VehicleCommand" :depends-on ("_package"))
    (:file "VehicleSpec" :depends-on ("_package_VehicleSpec"))
    (:file "_package_VehicleSpec" :depends-on ("_package"))
    (:file "VehicleSpecIndex" :depends-on ("_package_VehicleSpecIndex"))
    (:file "_package_VehicleSpecIndex" :depends-on ("_package"))
    (:file "VehicleStatus" :depends-on ("_package_VehicleStatus"))
    (:file "_package_VehicleStatus" :depends-on ("_package"))
    (:file "VelPlot" :depends-on ("_package_VelPlot"))
    (:file "_package_VelPlot" :depends-on ("_package"))
  ))