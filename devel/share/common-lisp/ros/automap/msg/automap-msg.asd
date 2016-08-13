
(cl:in-package :asdf)

(defsystem "automap-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "automap_ctrl_msg" :depends-on ("_package_automap_ctrl_msg"))
    (:file "_package_automap_ctrl_msg" :depends-on ("_package"))
  ))