// Generated by gencpp from file rov_canbus_pkg/my_thruster.msg
// DO NOT EDIT!


#ifndef ROV_CANBUS_PKG_MESSAGE_MY_THRUSTER_H
#define ROV_CANBUS_PKG_MESSAGE_MY_THRUSTER_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rov_canbus_pkg
{
template <class ContainerAllocator>
struct my_thruster_
{
  typedef my_thruster_<ContainerAllocator> Type;

  my_thruster_()
    : bldc(0.0)
    , green_1(0.0)
    , green_2(0.0)
    , yellow_1(0.0)
    , yellow_2(0.0)
    , yellow_3(0.0)  {
    }
  my_thruster_(const ContainerAllocator& _alloc)
    : bldc(0.0)
    , green_1(0.0)
    , green_2(0.0)
    , yellow_1(0.0)
    , yellow_2(0.0)
    , yellow_3(0.0)  {
  (void)_alloc;
    }



   typedef float _bldc_type;
  _bldc_type bldc;

   typedef float _green_1_type;
  _green_1_type green_1;

   typedef float _green_2_type;
  _green_2_type green_2;

   typedef float _yellow_1_type;
  _yellow_1_type yellow_1;

   typedef float _yellow_2_type;
  _yellow_2_type yellow_2;

   typedef float _yellow_3_type;
  _yellow_3_type yellow_3;





  typedef boost::shared_ptr< ::rov_canbus_pkg::my_thruster_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rov_canbus_pkg::my_thruster_<ContainerAllocator> const> ConstPtr;

}; // struct my_thruster_

typedef ::rov_canbus_pkg::my_thruster_<std::allocator<void> > my_thruster;

typedef boost::shared_ptr< ::rov_canbus_pkg::my_thruster > my_thrusterPtr;
typedef boost::shared_ptr< ::rov_canbus_pkg::my_thruster const> my_thrusterConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rov_canbus_pkg::my_thruster_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rov_canbus_pkg::my_thruster_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rov_canbus_pkg

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'rov_canbus_pkg': ['/home/ubuntu/ros_catkin_ws_rov/src/rov_canbus_pkg/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rov_canbus_pkg::my_thruster_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rov_canbus_pkg::my_thruster_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rov_canbus_pkg::my_thruster_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rov_canbus_pkg::my_thruster_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rov_canbus_pkg::my_thruster_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rov_canbus_pkg::my_thruster_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rov_canbus_pkg::my_thruster_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d76c367caf77424d8ee54f064371f169";
  }

  static const char* value(const ::rov_canbus_pkg::my_thruster_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd76c367caf77424dULL;
  static const uint64_t static_value2 = 0x8ee54f064371f169ULL;
};

template<class ContainerAllocator>
struct DataType< ::rov_canbus_pkg::my_thruster_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rov_canbus_pkg/my_thruster";
  }

  static const char* value(const ::rov_canbus_pkg::my_thruster_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rov_canbus_pkg::my_thruster_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 bldc\n\
float32 green_1\n\
float32 green_2\n\
float32 yellow_1\n\
float32 yellow_2\n\
float32 yellow_3\n\
";
  }

  static const char* value(const ::rov_canbus_pkg::my_thruster_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rov_canbus_pkg::my_thruster_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.bldc);
      stream.next(m.green_1);
      stream.next(m.green_2);
      stream.next(m.yellow_1);
      stream.next(m.yellow_2);
      stream.next(m.yellow_3);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct my_thruster_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rov_canbus_pkg::my_thruster_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rov_canbus_pkg::my_thruster_<ContainerAllocator>& v)
  {
    s << indent << "bldc: ";
    Printer<float>::stream(s, indent + "  ", v.bldc);
    s << indent << "green_1: ";
    Printer<float>::stream(s, indent + "  ", v.green_1);
    s << indent << "green_2: ";
    Printer<float>::stream(s, indent + "  ", v.green_2);
    s << indent << "yellow_1: ";
    Printer<float>::stream(s, indent + "  ", v.yellow_1);
    s << indent << "yellow_2: ";
    Printer<float>::stream(s, indent + "  ", v.yellow_2);
    s << indent << "yellow_3: ";
    Printer<float>::stream(s, indent + "  ", v.yellow_3);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROV_CANBUS_PKG_MESSAGE_MY_THRUSTER_H
