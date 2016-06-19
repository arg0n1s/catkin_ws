; Auto-generated. Do not edit!


(cl:in-package simulation-msg)


;//! \htmlinclude telemetry_msg.msg.html

(cl:defclass <telemetry_msg> (roslisp-msg-protocol:ros-message)
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
    :initform 0)
   (steering_angle
    :reader steering_angle
    :initarg :steering_angle
    :type cl:float
    :initform 0.0)
   (v_radial
    :reader v_radial
    :initarg :v_radial
    :type cl:float
    :initform 0.0)
   (radial_distance
    :reader radial_distance
    :initarg :radial_distance
    :type cl:float
    :initform 0.0)
   (v_linear
    :reader v_linear
    :initarg :v_linear
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (v_angular
    :reader v_angular
    :initarg :v_angular
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass telemetry_msg (<telemetry_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <telemetry_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'telemetry_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulation-msg:<telemetry_msg> is deprecated: use simulation-msg:telemetry_msg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <telemetry_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulation-msg:header-val is deprecated.  Use simulation-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'steering-val :lambda-list '(m))
(cl:defmethod steering-val ((m <telemetry_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulation-msg:steering-val is deprecated.  Use simulation-msg:steering instead.")
  (steering m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <telemetry_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulation-msg:speed-val is deprecated.  Use simulation-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'steering_angle-val :lambda-list '(m))
(cl:defmethod steering_angle-val ((m <telemetry_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulation-msg:steering_angle-val is deprecated.  Use simulation-msg:steering_angle instead.")
  (steering_angle m))

(cl:ensure-generic-function 'v_radial-val :lambda-list '(m))
(cl:defmethod v_radial-val ((m <telemetry_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulation-msg:v_radial-val is deprecated.  Use simulation-msg:v_radial instead.")
  (v_radial m))

(cl:ensure-generic-function 'radial_distance-val :lambda-list '(m))
(cl:defmethod radial_distance-val ((m <telemetry_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulation-msg:radial_distance-val is deprecated.  Use simulation-msg:radial_distance instead.")
  (radial_distance m))

(cl:ensure-generic-function 'v_linear-val :lambda-list '(m))
(cl:defmethod v_linear-val ((m <telemetry_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulation-msg:v_linear-val is deprecated.  Use simulation-msg:v_linear instead.")
  (v_linear m))

(cl:ensure-generic-function 'v_angular-val :lambda-list '(m))
(cl:defmethod v_angular-val ((m <telemetry_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulation-msg:v_angular-val is deprecated.  Use simulation-msg:v_angular instead.")
  (v_angular m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <telemetry_msg>) ostream)
  "Serializes a message object of type '<telemetry_msg>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steering_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v_radial))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'radial_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'v_linear) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'v_angular) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <telemetry_msg>) istream)
  "Deserializes a message object of type '<telemetry_msg>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_radial) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radial_distance) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'v_linear) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'v_angular) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<telemetry_msg>)))
  "Returns string type for a message object of type '<telemetry_msg>"
  "simulation/telemetry_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'telemetry_msg)))
  "Returns string type for a message object of type 'telemetry_msg"
  "simulation/telemetry_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<telemetry_msg>)))
  "Returns md5sum for a message object of type '<telemetry_msg>"
  "580095b2de22e4508c6c64513ea95ea5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'telemetry_msg)))
  "Returns md5sum for a message object of type 'telemetry_msg"
  "580095b2de22e4508c6c64513ea95ea5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<telemetry_msg>)))
  "Returns full string definition for message of type '<telemetry_msg>"
  (cl:format cl:nil "Header header~%int32 steering~%int32 speed~%float32 steering_angle~%float32 v_radial~%float64 radial_distance~%geometry_msgs/Vector3 v_linear~%geometry_msgs/Vector3 v_angular~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'telemetry_msg)))
  "Returns full string definition for message of type 'telemetry_msg"
  (cl:format cl:nil "Header header~%int32 steering~%int32 speed~%float32 steering_angle~%float32 v_radial~%float64 radial_distance~%geometry_msgs/Vector3 v_linear~%geometry_msgs/Vector3 v_angular~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <telemetry_msg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'v_linear))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'v_angular))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <telemetry_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'telemetry_msg
    (cl:cons ':header (header msg))
    (cl:cons ':steering (steering msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':steering_angle (steering_angle msg))
    (cl:cons ':v_radial (v_radial msg))
    (cl:cons ':radial_distance (radial_distance msg))
    (cl:cons ':v_linear (v_linear msg))
    (cl:cons ':v_angular (v_angular msg))
))
