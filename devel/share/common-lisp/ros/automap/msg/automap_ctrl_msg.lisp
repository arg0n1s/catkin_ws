; Auto-generated. Do not edit!


(cl:in-package automap-msg)


;//! \htmlinclude automap_ctrl_msg.msg.html

(cl:defclass <automap_ctrl_msg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (control_On
    :reader control_On
    :initarg :control_On
    :type cl:boolean
    :initform cl:nil)
   (detection_On
    :reader detection_On
    :initarg :detection_On
    :type cl:boolean
    :initform cl:nil)
   (NBV_On
    :reader NBV_On
    :initarg :NBV_On
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass automap_ctrl_msg (<automap_ctrl_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <automap_ctrl_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'automap_ctrl_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name automap-msg:<automap_ctrl_msg> is deprecated: use automap-msg:automap_ctrl_msg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <automap_ctrl_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader automap-msg:header-val is deprecated.  Use automap-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'control_On-val :lambda-list '(m))
(cl:defmethod control_On-val ((m <automap_ctrl_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader automap-msg:control_On-val is deprecated.  Use automap-msg:control_On instead.")
  (control_On m))

(cl:ensure-generic-function 'detection_On-val :lambda-list '(m))
(cl:defmethod detection_On-val ((m <automap_ctrl_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader automap-msg:detection_On-val is deprecated.  Use automap-msg:detection_On instead.")
  (detection_On m))

(cl:ensure-generic-function 'NBV_On-val :lambda-list '(m))
(cl:defmethod NBV_On-val ((m <automap_ctrl_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader automap-msg:NBV_On-val is deprecated.  Use automap-msg:NBV_On instead.")
  (NBV_On m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <automap_ctrl_msg>) ostream)
  "Serializes a message object of type '<automap_ctrl_msg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'control_On) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'detection_On) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'NBV_On) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <automap_ctrl_msg>) istream)
  "Deserializes a message object of type '<automap_ctrl_msg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'control_On) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'detection_On) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'NBV_On) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<automap_ctrl_msg>)))
  "Returns string type for a message object of type '<automap_ctrl_msg>"
  "automap/automap_ctrl_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'automap_ctrl_msg)))
  "Returns string type for a message object of type 'automap_ctrl_msg"
  "automap/automap_ctrl_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<automap_ctrl_msg>)))
  "Returns md5sum for a message object of type '<automap_ctrl_msg>"
  "d81dbd131e3b6b8fc12fb25418d8b7d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'automap_ctrl_msg)))
  "Returns md5sum for a message object of type 'automap_ctrl_msg"
  "d81dbd131e3b6b8fc12fb25418d8b7d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<automap_ctrl_msg>)))
  "Returns full string definition for message of type '<automap_ctrl_msg>"
  (cl:format cl:nil "Header header~%bool control_On~%bool detection_On~%bool NBV_On~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'automap_ctrl_msg)))
  "Returns full string definition for message of type 'automap_ctrl_msg"
  (cl:format cl:nil "Header header~%bool control_On~%bool detection_On~%bool NBV_On~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <automap_ctrl_msg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <automap_ctrl_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'automap_ctrl_msg
    (cl:cons ':header (header msg))
    (cl:cons ':control_On (control_On msg))
    (cl:cons ':detection_On (detection_On msg))
    (cl:cons ':NBV_On (NBV_On msg))
))
