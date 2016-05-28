
(cl:in-package :asdf)

(defsystem "simulation-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ctrl_msg" :depends-on ("_package_ctrl_msg"))
    (:file "_package_ctrl_msg" :depends-on ("_package"))
  ))