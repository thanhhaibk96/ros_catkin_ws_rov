# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rov_canbus_pkg/my_thruster.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class my_thruster(genpy.Message):
  _md5sum = "d76c367caf77424d8ee54f064371f169"
  _type = "rov_canbus_pkg/my_thruster"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float32 bldc
float32 green_1
float32 green_2
float32 yellow_1
float32 yellow_2
float32 yellow_3"""
  __slots__ = ['bldc','green_1','green_2','yellow_1','yellow_2','yellow_3']
  _slot_types = ['float32','float32','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       bldc,green_1,green_2,yellow_1,yellow_2,yellow_3

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(my_thruster, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.bldc is None:
        self.bldc = 0.
      if self.green_1 is None:
        self.green_1 = 0.
      if self.green_2 is None:
        self.green_2 = 0.
      if self.yellow_1 is None:
        self.yellow_1 = 0.
      if self.yellow_2 is None:
        self.yellow_2 = 0.
      if self.yellow_3 is None:
        self.yellow_3 = 0.
    else:
      self.bldc = 0.
      self.green_1 = 0.
      self.green_2 = 0.
      self.yellow_1 = 0.
      self.yellow_2 = 0.
      self.yellow_3 = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_6f().pack(_x.bldc, _x.green_1, _x.green_2, _x.yellow_1, _x.yellow_2, _x.yellow_3))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 24
      (_x.bldc, _x.green_1, _x.green_2, _x.yellow_1, _x.yellow_2, _x.yellow_3,) = _get_struct_6f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_6f().pack(_x.bldc, _x.green_1, _x.green_2, _x.yellow_1, _x.yellow_2, _x.yellow_3))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 24
      (_x.bldc, _x.green_1, _x.green_2, _x.yellow_1, _x.yellow_2, _x.yellow_3,) = _get_struct_6f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_6f = None
def _get_struct_6f():
    global _struct_6f
    if _struct_6f is None:
        _struct_6f = struct.Struct("<6f")
    return _struct_6f
