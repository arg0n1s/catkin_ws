// Generated by gencpp from file simulation/telemetry_msg.msg
// DO NOT EDIT!


#ifndef SIMULATION_MESSAGE_TELEMETRY_MSG_H
#define SIMULATION_MESSAGE_TELEMETRY_MSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Vector3.h>
#include <geometry_msgs/Vector3.h>

namespace simulation
{
template <class ContainerAllocator>
struct telemetry_msg_
{
  typedef telemetry_msg_<ContainerAllocator> Type;

  telemetry_msg_()
    : header()
    , steering(0)
    , speed(0)
    , steering_angle(0.0)
    , v_radial(0.0)
    , radial_distance(0.0)
    , v_linear()
    , v_angular()  {
    }
  telemetry_msg_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , steering(0)
    , speed(0)
    , steering_angle(0.0)
    , v_radial(0.0)
    , radial_distance(0.0)
    , v_linear(_alloc)
    , v_angular(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int32_t _steering_type;
  _steering_type steering;

   typedef int32_t _speed_type;
  _speed_type speed;

   typedef float _steering_angle_type;
  _steering_angle_type steering_angle;

   typedef float _v_radial_type;
  _v_radial_type v_radial;

   typedef double _radial_distance_type;
  _radial_distance_type radial_distance;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _v_linear_type;
  _v_linear_type v_linear;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _v_angular_type;
  _v_angular_type v_angular;




  typedef boost::shared_ptr< ::simulation::telemetry_msg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::simulation::telemetry_msg_<ContainerAllocator> const> ConstPtr;

}; // struct telemetry_msg_

typedef ::simulation::telemetry_msg_<std::allocator<void> > telemetry_msg;

typedef boost::shared_ptr< ::simulation::telemetry_msg > telemetry_msgPtr;
typedef boost::shared_ptr< ::simulation::telemetry_msg const> telemetry_msgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::simulation::telemetry_msg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::simulation::telemetry_msg_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace simulation

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'simulation': ['/home/sebastian/catkin_ws/src/simulation/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::simulation::telemetry_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::simulation::telemetry_msg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simulation::telemetry_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simulation::telemetry_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simulation::telemetry_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simulation::telemetry_msg_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::simulation::telemetry_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "580095b2de22e4508c6c64513ea95ea5";
  }

  static const char* value(const ::simulation::telemetry_msg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x580095b2de22e450ULL;
  static const uint64_t static_value2 = 0x8c6c64513ea95ea5ULL;
};

template<class ContainerAllocator>
struct DataType< ::simulation::telemetry_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "simulation/telemetry_msg";
  }

  static const char* value(const ::simulation::telemetry_msg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::simulation::telemetry_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
int32 steering\n\
int32 speed\n\
float32 steering_angle\n\
float32 v_radial\n\
float64 radial_distance\n\
geometry_msgs/Vector3 v_linear\n\
geometry_msgs/Vector3 v_angular\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::simulation::telemetry_msg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::simulation::telemetry_msg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.steering);
      stream.next(m.speed);
      stream.next(m.steering_angle);
      stream.next(m.v_radial);
      stream.next(m.radial_distance);
      stream.next(m.v_linear);
      stream.next(m.v_angular);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct telemetry_msg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::simulation::telemetry_msg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::simulation::telemetry_msg_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "steering: ";
    Printer<int32_t>::stream(s, indent + "  ", v.steering);
    s << indent << "speed: ";
    Printer<int32_t>::stream(s, indent + "  ", v.speed);
    s << indent << "steering_angle: ";
    Printer<float>::stream(s, indent + "  ", v.steering_angle);
    s << indent << "v_radial: ";
    Printer<float>::stream(s, indent + "  ", v.v_radial);
    s << indent << "radial_distance: ";
    Printer<double>::stream(s, indent + "  ", v.radial_distance);
    s << indent << "v_linear: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.v_linear);
    s << indent << "v_angular: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.v_angular);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SIMULATION_MESSAGE_TELEMETRY_MSG_H
