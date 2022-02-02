# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from morai_msgs/EventInfo.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import morai_msgs.msg
import std_msgs.msg

class EventInfo(genpy.Message):
  _md5sum = "d523476371650d202c182ced9d2101ca"
  _type = "morai_msgs/EventInfo"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int8 option
int32 ctrl_mode
int32 gear
Lamps lamps
bool set_pause

================================================================================
MSG: morai_msgs/Lamps
Header header

uint8 turnSignal
uint8 emergencySignal

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
"""
  __slots__ = ['option','ctrl_mode','gear','lamps','set_pause']
  _slot_types = ['int8','int32','int32','morai_msgs/Lamps','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       option,ctrl_mode,gear,lamps,set_pause

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(EventInfo, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.option is None:
        self.option = 0
      if self.ctrl_mode is None:
        self.ctrl_mode = 0
      if self.gear is None:
        self.gear = 0
      if self.lamps is None:
        self.lamps = morai_msgs.msg.Lamps()
      if self.set_pause is None:
        self.set_pause = False
    else:
      self.option = 0
      self.ctrl_mode = 0
      self.gear = 0
      self.lamps = morai_msgs.msg.Lamps()
      self.set_pause = False

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
      buff.write(_get_struct_b2i3I().pack(_x.option, _x.ctrl_mode, _x.gear, _x.lamps.header.seq, _x.lamps.header.stamp.secs, _x.lamps.header.stamp.nsecs))
      _x = self.lamps.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3B().pack(_x.lamps.turnSignal, _x.lamps.emergencySignal, _x.set_pause))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.lamps is None:
        self.lamps = morai_msgs.msg.Lamps()
      end = 0
      _x = self
      start = end
      end += 21
      (_x.option, _x.ctrl_mode, _x.gear, _x.lamps.header.seq, _x.lamps.header.stamp.secs, _x.lamps.header.stamp.nsecs,) = _get_struct_b2i3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.lamps.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.lamps.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 3
      (_x.lamps.turnSignal, _x.lamps.emergencySignal, _x.set_pause,) = _get_struct_3B().unpack(str[start:end])
      self.set_pause = bool(self.set_pause)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_b2i3I().pack(_x.option, _x.ctrl_mode, _x.gear, _x.lamps.header.seq, _x.lamps.header.stamp.secs, _x.lamps.header.stamp.nsecs))
      _x = self.lamps.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3B().pack(_x.lamps.turnSignal, _x.lamps.emergencySignal, _x.set_pause))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.lamps is None:
        self.lamps = morai_msgs.msg.Lamps()
      end = 0
      _x = self
      start = end
      end += 21
      (_x.option, _x.ctrl_mode, _x.gear, _x.lamps.header.seq, _x.lamps.header.stamp.secs, _x.lamps.header.stamp.nsecs,) = _get_struct_b2i3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.lamps.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.lamps.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 3
      (_x.lamps.turnSignal, _x.lamps.emergencySignal, _x.set_pause,) = _get_struct_3B().unpack(str[start:end])
      self.set_pause = bool(self.set_pause)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3B = None
def _get_struct_3B():
    global _struct_3B
    if _struct_3B is None:
        _struct_3B = struct.Struct("<3B")
    return _struct_3B
_struct_b2i3I = None
def _get_struct_b2i3I():
    global _struct_b2i3I
    if _struct_b2i3I is None:
        _struct_b2i3I = struct.Struct("<b2i3I")
    return _struct_b2i3I
