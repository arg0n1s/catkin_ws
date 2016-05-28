// Generated by gencpp from file simulation/ctrl_msg.msg
// DO NOT EDIT!


#ifndef SIMULATION_MESSAGE_CTRL_MSG_H
#define SIMULATION_MESSAGE_CTRL_MSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace simulation
{
template <class ContainerAllocator>
struct ctrl_msg_
{
  typedef ctrl_msg_<ContainerAllocator> Type;

  ctrl_msg_()
    : header()
    , steering(0)
    , speed(0)  {
    }
  ctrl_msg_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , steering(0)
    , speed(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int32_t _steering_type;
  _steering_type steering;

   typedef int32_t _speed_type;
  _speed_type speed;




  typedef boost::shared_ptr< ::simulation::ctrl_msg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::simulation::ctrl_msg_<ContainerAllocator> const> ConstPtr;

}; // struct ctrl_msg_

typedef ::simulation::ctrl_msg_<std::allocator<void> > ctrl_msg;

typedef boost::shared_ptr< ::simulation::ctrl_msg > ctrl_msgPtr;
typedef boost::shared_ptr< ::simulation::ctrl_msg const> ctrl_msgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::simulation::ctrl_msg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::simulation::ctrl_msg_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace simulation

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'simulation': ['/home/sebastian/catkin_ws/src/simulation/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::simulation::ctrl_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::simulation::ctrl_msg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simulation::ctrl_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simulation::ctrl_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simulation::ctrl_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simulation::ctrl_msg_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::simulation::ctrl_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "176232237ffcaef4b19437c841c8e62c";
  }

  static const char* value(const ::simulation::ctrl_msg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x176232237ffcaef4ULL;
  static const uint64_t static_value2 = 0xb19437c841c8e62cULL;
};

template<class ContainerAllocator>
struct DataType< ::simulation::ctrl_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "simulation/ctrl_msg";
  }

  static const char* value(const ::simulation::ctrl_msg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::simulation::ctrl_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
int32 steering\n\
int32 speed\n\
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
";
  }

  static const char* value(const ::simulation::ctrl_msg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::simulation::ctrl_msg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.steering);
      stream.next(m.speed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct ctrl_msg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::simulation::ctrl_msg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::simulation::ctrl_msg_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "steering: ";
    Printer<int32_t>::stream(s, indent + "  ", v.steering);
    s << indent << "speed: ";
    Printer<int32_t>::stream(s, indent + "  ", v.speed);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SIMULATION_MESSAGE_CTRL_MSG_H
