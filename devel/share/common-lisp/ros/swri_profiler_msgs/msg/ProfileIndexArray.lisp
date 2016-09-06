; Auto-generated. Do not edit!


(cl:in-package swri_profiler_msgs-msg)


;//! \htmlinclude ProfileIndexArray.msg.html

(cl:defclass <ProfileIndexArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data
    :reader data
    :initarg :data
    :type (cl:vector swri_profiler_msgs-msg:ProfileIndex)
   :initform (cl:make-array 0 :element-type 'swri_profiler_msgs-msg:ProfileIndex :initial-element (cl:make-instance 'swri_profiler_msgs-msg:ProfileIndex))))
)

(cl:defclass ProfileIndexArray (<ProfileIndexArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProfileIndexArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProfileIndexArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swri_profiler_msgs-msg:<ProfileIndexArray> is deprecated: use swri_profiler_msgs-msg:ProfileIndexArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ProfileIndexArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swri_profiler_msgs-msg:header-val is deprecated.  Use swri_profiler_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <ProfileIndexArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swri_profiler_msgs-msg:data-val is deprecated.  Use swri_profiler_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProfileIndexArray>) ostream)
  "Serializes a message object of type '<ProfileIndexArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProfileIndexArray>) istream)
  "Deserializes a message object of type '<ProfileIndexArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'swri_profiler_msgs-msg:ProfileIndex))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProfileIndexArray>)))
  "Returns string type for a message object of type '<ProfileIndexArray>"
  "swri_profiler_msgs/ProfileIndexArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProfileIndexArray)))
  "Returns string type for a message object of type 'ProfileIndexArray"
  "swri_profiler_msgs/ProfileIndexArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProfileIndexArray>)))
  "Returns md5sum for a message object of type '<ProfileIndexArray>"
  "2e5edcc7a1e661bf08900a118f6c8d32")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProfileIndexArray)))
  "Returns md5sum for a message object of type 'ProfileIndexArray"
  "2e5edcc7a1e661bf08900a118f6c8d32")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProfileIndexArray>)))
  "Returns full string definition for message of type '<ProfileIndexArray>"
  (cl:format cl:nil "Header header~%ProfileIndex[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: swri_profiler_msgs/ProfileIndex~%uint32 key~%string label~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProfileIndexArray)))
  "Returns full string definition for message of type 'ProfileIndexArray"
  (cl:format cl:nil "Header header~%ProfileIndex[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: swri_profiler_msgs/ProfileIndex~%uint32 key~%string label~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProfileIndexArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProfileIndexArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ProfileIndexArray
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
))
