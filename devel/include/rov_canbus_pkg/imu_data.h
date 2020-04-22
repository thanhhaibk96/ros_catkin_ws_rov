// Generated by gencpp from file rov_canbus_pkg/imu_data.msg
// DO NOT EDIT!


#ifndef ROV_CANBUS_PKG_MESSAGE_IMU_DATA_H
#define ROV_CANBUS_PKG_MESSAGE_IMU_DATA_H


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
struct imu_data_
{
  typedef imu_data_<ContainerAllocator> Type;

  imu_data_()
    : roll(0.0)
    , pitch(0.0)
    , yaw(0.0)  {
    }
  imu_data_(const ContainerAllocator& _alloc)
    : roll(0.0)
    , pitch(0.0)
    , yaw(0.0)  {
  (void)_alloc;
    }



   typedef float _roll_type;
  _roll_type roll;

   typedef float _pitch_type;
  _pitch_type pitch;

   typedef float _yaw_type;
  _yaw_type yaw;





  typedef boost::shared_ptr< ::rov_canbus_pkg::imu_data_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rov_canbus_pkg::imu_data_<ContainerAllocator> const> ConstPtr;

}; // struct imu_data_

typedef ::rov_canbus_pkg::imu_data_<std::allocator<void> > imu_data;

typedef boost::shared_ptr< ::rov_canbus_pkg::imu_data > imu_dataPtr;
typedef boost::shared_ptr< ::rov_canbus_pkg::imu_data const> imu_dataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rov_canbus_pkg::imu_data_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rov_canbus_pkg::imu_data_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::rov_canbus_pkg::imu_data_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rov_canbus_pkg::imu_data_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rov_canbus_pkg::imu_data_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rov_canbus_pkg::imu_data_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rov_canbus_pkg::imu_data_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rov_canbus_pkg::imu_data_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rov_canbus_pkg::imu_data_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c66f4de7f99199dd8e863fffbef112ad";
  }

  static const char* value(const ::rov_canbus_pkg::imu_data_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc66f4de7f99199ddULL;
  static const uint64_t static_value2 = 0x8e863fffbef112adULL;
};

template<class ContainerAllocator>
struct DataType< ::rov_canbus_pkg::imu_data_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rov_canbus_pkg/imu_data";
  }

  static const char* value(const ::rov_canbus_pkg::imu_data_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rov_canbus_pkg::imu_data_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 roll\n\
float32 pitch\n\
float32 yaw\n\
";
  }

  static const char* value(const ::rov_canbus_pkg::imu_data_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rov_canbus_pkg::imu_data_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.roll);
      stream.next(m.pitch);
      stream.next(m.yaw);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct imu_data_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rov_canbus_pkg::imu_data_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rov_canbus_pkg::imu_data_<ContainerAllocator>& v)
  {
    s << indent << "roll: ";
    Printer<float>::stream(s, indent + "  ", v.roll);
    s << indent << "pitch: ";
    Printer<float>::stream(s, indent + "  ", v.pitch);
    s << indent << "yaw: ";
    Printer<float>::stream(s, indent + "  ", v.yaw);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROV_CANBUS_PKG_MESSAGE_IMU_DATA_H
