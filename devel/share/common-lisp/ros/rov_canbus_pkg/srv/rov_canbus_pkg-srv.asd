
(cl:in-package :asdf)

(defsystem "rov_canbus_pkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "pid_control" :depends-on ("_package_pid_control"))
    (:file "_package_pid_control" :depends-on ("_package"))
  ))