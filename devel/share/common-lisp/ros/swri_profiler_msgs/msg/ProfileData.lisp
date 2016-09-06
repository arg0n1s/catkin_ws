; Auto-generated. Do not edit!


(cl:in-package swri_profiler_msgs-msg)


;//! \htmlinclude ProfileData.msg.html

(cl:defclass <ProfileData> (roslisp-msg-protocol:ros-message)
  ((key
    :reader key
    :initarg :key
    :type cl:integer
    :initform 0)
   (abs_call_count
    :reader abs_call_count
    :initarg :abs_call_count
    :type cl:integer
    :initform 0)
   (abs_total_duration
    :reader abs_total_duration
    :initarg :abs_total_duration
    :type cl:real
    :initform 0)
   (rel_total_duration
    :reader rel_total_duration
    :initarg :rel_total_duration
    :type cl:real
    :initform 0)
   (rel_max_duration
    :reader rel_max_duration
    :initarg :rel_max_duration
    :type cl:real
    :initform 0))
)

(cl:defclass ProfileData (<ProfileData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProfileData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProfileData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swri_profiler_msgs-msg:<ProfileData> is deprecated: use swri_profiler_msgs-msg:ProfileData instead.")))

(cl:ensure-generic-function 'key-val :lambda-list '(m))
(cl:defmethod key-val ((m <ProfileData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swri_profiler_msgs-msg:key-val is deprecated.  Use swri_profiler_msgs-msg:key instead.")
  (key m))

(cl:ensure-generic-function 'abs_call_count-val :lambda-list '(m))
(cl:defmethod abs_call_count-val ((m <ProfileData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swri_profiler_msgs-msg:abs_call_count-val is deprecated.  Use swri_profiler_msgs-msg:abs_call_count instead.")
  (abs_call_count m))

(cl:ensure-generic-function 'abs_total_duration-val :lambda-list '(m))
(cl:defmethod abs_total_duration-val ((m <ProfileData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swri_profiler_msgs-msg:abs_total_duration-val is deprecated.  Use swri_profiler_msgs-msg:abs_total_duration instead.")
  (abs_total_duration m))

(cl:ensure-generic-function 'rel_total_duration-val :lambda-list '(m))
(cl:defmethod rel_total_duration-val ((m <ProfileData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swri_profiler_msgs-msg:rel_total_duration-val is deprecated.  Use swri_profiler_msgs-msg:rel_total_duration instead.")
  (rel_total_duration m))

(cl:ensure-generic-function 'rel_max_duration-val :lambda-list '(m))
(cl:defmethod rel_max_duration-val ((m <ProfileData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swri_profiler_msgs-msg:rel_max_duration-val is deprecated.  Use swri_profiler_msgs-msg:rel_max_duration instead.")
  (rel_max_duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProfileData>) ostream)
  "Serializes a message object of type '<ProfileData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'key)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'key)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'key)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'key)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'abs_call_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'abs_call_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'abs_call_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'abs_call_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'abs_call_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'abs_call_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'abs_call_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'abs_call_count)) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'abs_total_duration)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'abs_total_duration) (cl:floor (cl:slot-value msg 'abs_total_duration)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'rel_total_duration)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'rel_total_duration) (cl:floor (cl:slot-value msg 'rel_total_duration)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'rel_max_duration)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'rel_max_duration) (cl:floor (cl:slot-value msg 'rel_max_duration)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProfileData>) istream)
  "Deserializes a message object of type '<ProfileData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'key)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'key)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'key)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'key)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'abs_call_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'abs_call_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'abs_call_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'abs_call_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'abs_call_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'abs_call_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'abs_call_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'abs_call_count)) (cl:read-byte istream))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'abs_total_duration) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rel_total_duration) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rel_max_duration) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProfileData>)))
  "Returns string type for a message object of type '<ProfileData>"
  "swri_profiler_msgs/ProfileData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProfileData)))
  "Returns string type for a message object of type 'ProfileData"
  "swri_profiler_msgs/ProfileData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProfileData>)))
  "Returns md5sum for a message object of type '<ProfileData>"
  "ac3df4df3591ee6f49805a9d35e9d86c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProfileData)))
  "Returns md5sum for a message object of type 'ProfileData"
  "ac3df4df3591ee6f49805a9d35e9d86c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProfileData>)))
  "Returns full string definition for message of type '<ProfileData>"
  (cl:format cl:nil "uint32 key~%# The corresponding key for this block reported in the profiler's index.~%~%uint64 abs_call_count~%# The number of times this block has been started since the profiler~%# started.~%~%duration abs_total_duration~%# The total amount of time spent in this block since the profiler~%# started, including any current calls.~%~%duration rel_total_duration~%# The amount of time spent in this block since the previous report.~%~%duration rel_max_duration~%# The maximum amount of time spent in this call since the last report.~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProfileData)))
  "Returns full string definition for message of type 'ProfileData"
  (cl:format cl:nil "uint32 key~%# The corresponding key for this block reported in the profiler's index.~%~%uint64 abs_call_count~%# The number of times this block has been started since the profiler~%# started.~%~%duration abs_total_duration~%# The total amount of time spent in this block since the profiler~%# started, including any current calls.~%~%duration rel_total_duration~%# The amount of time spent in this block since the previous report.~%~%duration rel_max_duration~%# The maximum amount of time spent in this call since the last report.~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProfileData>))
  (cl:+ 0
     4
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProfileData>))
  "Converts a ROS message object to a list"
  (cl:list 'ProfileData
    (cl:cons ':key (key msg))
    (cl:cons ':abs_call_count (abs_call_count msg))
    (cl:cons ':abs_total_duration (abs_total_duration msg))
    (cl:cons ':rel_total_duration (rel_total_duration msg))
    (cl:cons ':rel_max_duration (rel_max_duration msg))
))
