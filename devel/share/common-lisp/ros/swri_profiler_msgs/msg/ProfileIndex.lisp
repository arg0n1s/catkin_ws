; Auto-generated. Do not edit!


(cl:in-package swri_profiler_msgs-msg)


;//! \htmlinclude ProfileIndex.msg.html

(cl:defclass <ProfileIndex> (roslisp-msg-protocol:ros-message)
  ((key
    :reader key
    :initarg :key
    :type cl:integer
    :initform 0)
   (label
    :reader label
    :initarg :label
    :type cl:string
    :initform ""))
)

(cl:defclass ProfileIndex (<ProfileIndex>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ProfileIndex>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ProfileIndex)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swri_profiler_msgs-msg:<ProfileIndex> is deprecated: use swri_profiler_msgs-msg:ProfileIndex instead.")))

(cl:ensure-generic-function 'key-val :lambda-list '(m))
(cl:defmethod key-val ((m <ProfileIndex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swri_profiler_msgs-msg:key-val is deprecated.  Use swri_profiler_msgs-msg:key instead.")
  (key m))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <ProfileIndex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swri_profiler_msgs-msg:label-val is deprecated.  Use swri_profiler_msgs-msg:label instead.")
  (label m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ProfileIndex>) ostream)
  "Serializes a message object of type '<ProfileIndex>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'key)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'key)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'key)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'key)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'label))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'label))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ProfileIndex>) istream)
  "Deserializes a message object of type '<ProfileIndex>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'key)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'key)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'key)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'key)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'label) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'label) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ProfileIndex>)))
  "Returns string type for a message object of type '<ProfileIndex>"
  "swri_profiler_msgs/ProfileIndex")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ProfileIndex)))
  "Returns string type for a message object of type 'ProfileIndex"
  "swri_profiler_msgs/ProfileIndex")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ProfileIndex>)))
  "Returns md5sum for a message object of type '<ProfileIndex>"
  "c30eff6f5a4da1cc6130f42d6fb3061a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ProfileIndex)))
  "Returns md5sum for a message object of type 'ProfileIndex"
  "c30eff6f5a4da1cc6130f42d6fb3061a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ProfileIndex>)))
  "Returns full string definition for message of type '<ProfileIndex>"
  (cl:format cl:nil "uint32 key~%string label~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ProfileIndex)))
  "Returns full string definition for message of type 'ProfileIndex"
  (cl:format cl:nil "uint32 key~%string label~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ProfileIndex>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'label))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ProfileIndex>))
  "Converts a ROS message object to a list"
  (cl:list 'ProfileIndex
    (cl:cons ':key (key msg))
    (cl:cons ':label (label msg))
))
