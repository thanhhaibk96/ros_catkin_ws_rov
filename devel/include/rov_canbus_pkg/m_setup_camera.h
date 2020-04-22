// Generated by gencpp from file rov_canbus_pkg/m_setup_camera.msg
// DO NOT EDIT!


#ifndef ROV_CANBUS_PKG_MESSAGE_M_SETUP_CAMERA_H
#define ROV_CANBUS_PKG_MESSAGE_M_SETUP_CAMERA_H


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
struct m_setup_camera_
{
  typedef m_setup_camera_<ContainerAllocator> Type;

  m_setup_camera_()
    : camera_zoom(0)
    , camera_focus(0)
    , camera_bright(0)  {
    }
  m_setup_camera_(const ContainerAllocator& _alloc)
    : camera_zoom(0)
    , camera_focus(0)
    , camera_bright(0)  {
  (void)_alloc;
    }



   typedef uint8_t _camera_zoom_type;
  _camera_zoom_type camera_zoom;

   typedef uint8_t _camera_focus_type;
  _camera_focus_type camera_focus;

   typedef uint8_t _camera_bright_type;
  _camera_bright_type camera_bright;





  typedef boost::shared_ptr< ::rov_canbus_pkg::m_setup_camera_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rov_canbus_pkg::m_setup_camera_<ContainerAllocator> const> ConstPtr;

}; // struct m_setup_camera_

typedef ::rov_canbus_pkg::m_setup_camera_<std::allocator<void> > m_setup_camera;

typedef boost::shared_ptr< ::rov_canbus_pkg::m_setup_camera > m_setup_cameraPtr;
typedef boost::shared_ptr< ::rov_canbus_pkg::m_setup_camera const> m_setup_cameraConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rov_canbus_pkg::m_setup_camera_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rov_canbus_pkg::m_setup_camera_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::rov_canbus_pkg::m_setup_camera_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rov_canbus_pkg::m_setup_camera_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rov_canbus_pkg::m_setup_camera_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rov_canbus_pkg::m_setup_camera_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rov_canbus_pkg::m_setup_camera_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rov_canbus_pkg::m_setup_camera_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rov_canbus_pkg::m_setup_camera_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6554d73da328aadf658777e841366a86";
  }

  static const char* value(const ::rov_canbus_pkg::m_setup_camera_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6554d73da328aadfULL;
  static const uint64_t static_value2 = 0x658777e841366a86ULL;
};

template<class ContainerAllocator>
struct DataType< ::rov_canbus_pkg::m_setup_camera_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rov_canbus_pkg/m_setup_camera";
  }

  static const char* value(const ::rov_canbus_pkg::m_setup_camera_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rov_canbus_pkg::m_setup_camera_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 camera_zoom\n\
uint8 camera_focus\n\
uint8 camera_bright\n\
";
  }

  static const char* value(const ::rov_canbus_pkg::m_setup_camera_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rov_canbus_pkg::m_setup_camera_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.camera_zoom);
      stream.next(m.camera_focus);
      stream.next(m.camera_bright);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct m_setup_camera_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rov_canbus_pkg::m_setup_camera_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rov_canbus_pkg::m_setup_camera_<ContainerAllocator>& v)
  {
    s << indent << "camera_zoom: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.camera_zoom);
    s << indent << "camera_focus: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.camera_focus);
    s << indent << "camera_bright: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.camera_bright);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROV_CANBUS_PKG_MESSAGE_M_SETUP_CAMERA_H
