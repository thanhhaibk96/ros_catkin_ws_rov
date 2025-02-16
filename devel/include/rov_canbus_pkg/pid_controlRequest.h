// Generated by gencpp from file rov_canbus_pkg/pid_controlRequest.msg
// DO NOT EDIT!


#ifndef ROV_CANBUS_PKG_MESSAGE_PID_CONTROLREQUEST_H
#define ROV_CANBUS_PKG_MESSAGE_PID_CONTROLREQUEST_H


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
struct pid_controlRequest_
{
  typedef pid_controlRequest_<ContainerAllocator> Type;

  pid_controlRequest_()
    : imu_yaw_sp(0.0)
    , imu_yaw_cur(0.0)  {
    }
  pid_controlRequest_(const ContainerAllocator& _alloc)
    : imu_yaw_sp(0.0)
    , imu_yaw_cur(0.0)  {
  (void)_alloc;
    }



   typedef float _imu_yaw_sp_type;
  _imu_yaw_sp_type imu_yaw_sp;

   typedef float _imu_yaw_cur_type;
  _imu_yaw_cur_type imu_yaw_cur;





  typedef boost::shared_ptr< ::rov_canbus_pkg::pid_controlRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rov_canbus_pkg::pid_controlRequest_<ContainerAllocator> const> ConstPtr;

}; // struct pid_controlRequest_

typedef ::rov_canbus_pkg::pid_controlRequest_<std::allocator<void> > pid_controlRequest;

typedef boost::shared_ptr< ::rov_canbus_pkg::pid_controlRequest > pid_controlRequestPtr;
typedef boost::shared_ptr< ::rov_canbus_pkg::pid_controlRequest const> pid_controlRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rov_canbus_pkg::pid_controlRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rov_canbus_pkg::pid_controlRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::rov_canbus_pkg::pid_controlRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rov_canbus_pkg::pid_controlRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rov_canbus_pkg::pid_controlRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rov_canbus_pkg::pid_controlRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rov_canbus_pkg::pid_controlRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rov_canbus_pkg::pid_controlRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rov_canbus_pkg::pid_controlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d3a2d326bf6ef9d1e9d82c7dae80c3df";
  }

  static const char* value(const ::rov_canbus_pkg::pid_controlRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd3a2d326bf6ef9d1ULL;
  static const uint64_t static_value2 = 0xe9d82c7dae80c3dfULL;
};

template<class ContainerAllocator>
struct DataType< ::rov_canbus_pkg::pid_controlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rov_canbus_pkg/pid_controlRequest";
  }

  static const char* value(const ::rov_canbus_pkg::pid_controlRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rov_canbus_pkg::pid_controlRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 imu_yaw_sp\n\
float32 imu_yaw_cur\n\
";
  }

  static const char* value(const ::rov_canbus_pkg::pid_controlRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rov_canbus_pkg::pid_controlRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.imu_yaw_sp);
      stream.next(m.imu_yaw_cur);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct pid_controlRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rov_canbus_pkg::pid_controlRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rov_canbus_pkg::pid_controlRequest_<ContainerAllocator>& v)
  {
    s << indent << "imu_yaw_sp: ";
    Printer<float>::stream(s, indent + "  ", v.imu_yaw_sp);
    s << indent << "imu_yaw_cur: ";
    Printer<float>::stream(s, indent + "  ", v.imu_yaw_cur);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROV_CANBUS_PKG_MESSAGE_PID_CONTROLREQUEST_H
