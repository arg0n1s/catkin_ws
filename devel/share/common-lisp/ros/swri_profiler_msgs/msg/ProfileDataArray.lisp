; Auto-generated. Do not edit!


(cl:in-package swri_profiler_msgs-msg)


;//! \htmlinclude ProfileDataArray.msg.html

(cl:defclass <ProfileDataArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (rostime_stamp
    :reader rostime_stamp
    :initarg :rostime_stamp
    :type cl:real
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector swri_profiler_msgs-msg:ProfileData)
   :initform (cl:make-array 0 :element-type 'swri_profiler_msgs-msg:ProfileData :initial-element (cl:make-instance 'swri_profiler_msgs-msg:ProfileData))))
)

(cl:defclass ProfileDataArray (<ProfileDataArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProfileDataArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProfileDataArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swri_profiler_msgs-msg:<ProfileDataArray> is deprecated: use swri_profiler_msgs-msg:ProfileDataArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ProfileDataArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swri_profiler_msgs-msg:header-val is deprecated.  Use swri_profiler_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'rostime_stamp-val :lambda-list '(m))
(cl:defmethod rostime_stamp-val ((m <ProfileDataArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swri_profiler_msgs-msg:rostime_stamp-val is deprecated.  Use swri_profiler_msgs-msg:rostime_stamp instead.")
  (rostime_stamp m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <ProfileDataArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swri_profiler_msgs-msg:data-val is deprecated.  Use swri_profiler_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProfileDataArray>) ostream)
  "Serializes a message object of type '<ProfileDataArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'rostime_stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'rostime_stamp) (cl:floor (cl:slot-value msg 'rostime_stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProfileDataArray>) istream)
  "Deserializes a message object of type '<ProfileDataArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rostime_stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'swri_profiler_msgs-msg:ProfileData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProfileDataArray>)))
  "Returns string type for a message object of type '<ProfileDataArray>"
  "swri_profiler_msgs/ProfileDataArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProfileDataArray)))
  "Returns string type for a message object of type 'ProfileDataArray"
  "swri_profiler_msgs/ProfileDataArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProfileDataArray>)))
  "Returns md5sum for a message object of type '<ProfileDataArray>"
  "0f57632c452d563519410097bdf9c1f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProfileDataArray)))
  "Returns md5sum for a message object of type 'ProfileDataArray"
  "0f57632c452d563519410097bdf9c1f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProfileDataArray>)))
  "Returns full string definition for message of type '<ProfileDataArray>"
  (cl:format cl:nil "Header header~%# The header contains the node's name in the frame id and the wall~%# time in the stamp.~%~%time rostime_stamp~%# rostime_stamp contains the current ros::Time::now() to make it easier to~%# compare data between different runs driven by the same recorded bag~%# data.~%~%ProfileData[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: swri_profiler_msgs/ProfileData~%uint32 key~%# The corresponding key for this block reported in the profiler's index.~%~%uint64 abs_call_count~%# The number of times this block has been started since the profiler~%# started.~%~%duration abs_total_duration~%# The total amount of time spent in this block since the profiler~%# started, including any current calls.~%~%duration rel_total_duration~%# The amount of time spent in this block since the previous report.~%~%duration rel_max_duration~%# The maximum amount of time spent in this call since the last report.~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProfileDataArray)))
  "Returns full string definition for message of type 'ProfileDataArray"
  (cl:format cl:nil "Header header~%# The header contains the node's name in the frame id and the wall~%# time in the stamp.~%~%time rostime_stamp~%# rostime_stamp contains the current ros::Time::now() to make it easier to~%# compare data between different runs driven by the same recorded bag~%# data.~%~%ProfileData[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: swri_profiler_msgs/ProfileData~%uint32 key~%# The corresponding key for this block reported in the profiler's index.~%~%uint64 abs_call_count~%# The number of times this block has been started since the profiler~%# started.~%~%duration abs_total_duration~%# The total amount of time spent in this block since the profiler~%# started, including any current calls.~%~%duration rel_total_duration~%# The amount of time spent in this block since the previous report.~%~%duration rel_max_duration~%# The maximum amount of time spent in this call since the last report.~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProfileDataArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProfileDataArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ProfileDataArray
    (cl:cons ':header (header msg))
    (cl:cons ':rostime_stamp (rostime_stamp msg))
    (cl:cons ':data (data msg))
))
