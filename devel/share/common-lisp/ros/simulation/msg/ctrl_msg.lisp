; Auto-generated. Do not edit!


(cl:in-package simulation-msg)


;//! \htmlinclude ctrl_msg.msg.html

(cl:defclass <ctrl_msg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (steering
    :reader steering
    :initarg :steering
    :type cl:integer
    :initform 0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:integer
    :initform 0))
)

(cl:defclass ctrl_msg (<ctrl_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ctrl_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ctrl_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulation-msg:<ctrl_msg> is deprecated: use simulation-msg:ctrl_msg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ctrl_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulation-msg:header-val is deprecated.  Use simulation-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'steering-val :lambda-list '(m))
(cl:defmethod steering-val ((m <ctrl_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulation-msg:steering-val is deprecated.  Use simulation-msg:steering instead.")
  (steering m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <ctrl_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulation-msg:speed-val is deprecated.  Use simulation-msg:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ctrl_msg>) ostream)
  "Serializes a message object of type '<ctrl_msg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'steering)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ctrl_msg>) istream)
  "Deserializes a message object of type '<ctrl_msg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'steering) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ctrl_msg>)))
  "Returns string type for a message object of type '<ctrl_msg>"
  "simulation/ctrl_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ctrl_msg)))
  "Returns string type for a message object of type 'ctrl_msg"
  "simulation/ctrl_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ctrl_msg>)))
  "Returns md5sum for a message object of type '<ctrl_msg>"
  "176232237ffcaef4b19437c841c8e62c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ctrl_msg)))
  "Returns md5sum for a message object of type 'ctrl_msg"
  "176232237ffcaef4b19437c841c8e62c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ctrl_msg>)))
  "Returns full string definition for message of type '<ctrl_msg>"
  (cl:format cl:nil "Header header~%int32 steering~%int32 speed~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ctrl_msg)))
  "Returns full string definition for message of type 'ctrl_msg"
  (cl:format cl:nil "Header header~%int32 steering~%int32 speed~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ctrl_msg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ctrl_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'ctrl_msg
    (cl:cons ':header (header msg))
    (cl:cons ':steering (steering msg))
    (cl:cons ':speed (speed msg))
))
