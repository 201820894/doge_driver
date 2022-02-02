// Generated by gencpp from file morai_msgs/MgeoNode.msg
// DO NOT EDIT!


#ifndef MORAI_MSGS_MESSAGE_MGEONODE_H
#define MORAI_MSGS_MESSAGE_MGEONODE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>

namespace morai_msgs
{
template <class ContainerAllocator>
struct MgeoNode_
{
  typedef MgeoNode_<ContainerAllocator> Type;

  MgeoNode_()
    : node_id()
    , cost(0.0)
    , time_cost(0.0)
    , node_type(0)
    , to_link_id()
    , from_link_id()
    , node()  {
    }
  MgeoNode_(const ContainerAllocator& _alloc)
    : node_id(_alloc)
    , cost(0.0)
    , time_cost(0.0)
    , node_type(0)
    , to_link_id(_alloc)
    , from_link_id(_alloc)
    , node(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _node_id_type;
  _node_id_type node_id;

   typedef float _cost_type;
  _cost_type cost;

   typedef float _time_cost_type;
  _time_cost_type time_cost;

   typedef int32_t _node_type_type;
  _node_type_type node_type;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _to_link_id_type;
  _to_link_id_type to_link_id;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _from_link_id_type;
  _from_link_id_type from_link_id;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _node_type;
  _node_type node;





  typedef boost::shared_ptr< ::morai_msgs::MgeoNode_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::morai_msgs::MgeoNode_<ContainerAllocator> const> ConstPtr;

}; // struct MgeoNode_

typedef ::morai_msgs::MgeoNode_<std::allocator<void> > MgeoNode;

typedef boost::shared_ptr< ::morai_msgs::MgeoNode > MgeoNodePtr;
typedef boost::shared_ptr< ::morai_msgs::MgeoNode const> MgeoNodeConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::morai_msgs::MgeoNode_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::morai_msgs::MgeoNode_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::morai_msgs::MgeoNode_<ContainerAllocator1> & lhs, const ::morai_msgs::MgeoNode_<ContainerAllocator2> & rhs)
{
  return lhs.node_id == rhs.node_id &&
    lhs.cost == rhs.cost &&
    lhs.time_cost == rhs.time_cost &&
    lhs.node_type == rhs.node_type &&
    lhs.to_link_id == rhs.to_link_id &&
    lhs.from_link_id == rhs.from_link_id &&
    lhs.node == rhs.node;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::morai_msgs::MgeoNode_<ContainerAllocator1> & lhs, const ::morai_msgs::MgeoNode_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace morai_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::morai_msgs::MgeoNode_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::morai_msgs::MgeoNode_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::morai_msgs::MgeoNode_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::morai_msgs::MgeoNode_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::morai_msgs::MgeoNode_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::morai_msgs::MgeoNode_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::morai_msgs::MgeoNode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e260c05524b8fac9ccdd7f9ed4a7cd47";
  }

  static const char* value(const ::morai_msgs::MgeoNode_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe260c05524b8fac9ULL;
  static const uint64_t static_value2 = 0xccdd7f9ed4a7cd47ULL;
};

template<class ContainerAllocator>
struct DataType< ::morai_msgs::MgeoNode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "morai_msgs/MgeoNode";
  }

  static const char* value(const ::morai_msgs::MgeoNode_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::morai_msgs::MgeoNode_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string node_id\n"
"float32 cost\n"
"float32 time_cost\n"
"\n"
"int32 node_type #if the node type is -1, unuse this data\n"
"\n"
"string[] to_link_id\n"
"string[] from_link_id\n"
"\n"
"geometry_msgs/Pose node\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::morai_msgs::MgeoNode_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::morai_msgs::MgeoNode_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.node_id);
      stream.next(m.cost);
      stream.next(m.time_cost);
      stream.next(m.node_type);
      stream.next(m.to_link_id);
      stream.next(m.from_link_id);
      stream.next(m.node);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MgeoNode_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::morai_msgs::MgeoNode_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::morai_msgs::MgeoNode_<ContainerAllocator>& v)
  {
    s << indent << "node_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.node_id);
    s << indent << "cost: ";
    Printer<float>::stream(s, indent + "  ", v.cost);
    s << indent << "time_cost: ";
    Printer<float>::stream(s, indent + "  ", v.time_cost);
    s << indent << "node_type: ";
    Printer<int32_t>::stream(s, indent + "  ", v.node_type);
    s << indent << "to_link_id[]" << std::endl;
    for (size_t i = 0; i < v.to_link_id.size(); ++i)
    {
      s << indent << "  to_link_id[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.to_link_id[i]);
    }
    s << indent << "from_link_id[]" << std::endl;
    for (size_t i = 0; i < v.from_link_id.size(); ++i)
    {
      s << indent << "  from_link_id[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.from_link_id[i]);
    }
    s << indent << "node: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.node);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MORAI_MSGS_MESSAGE_MGEONODE_H
