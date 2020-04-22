
(cl:in-package :asdf)

(defsystem "rov_rosbridge_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "joystick" :depends-on ("_package_joystick"))
    (:file "_package_joystick" :depends-on ("_package"))
    (:file "my_thruster" :depends-on ("_package_my_thruster"))
    (:file "_package_my_thruster" :depends-on ("_package"))
  ))