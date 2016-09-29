# CORESTA
Complete Record Of Student Attendance and u can also take attendance and review the attendance of an individual student or the  whole class. Also a warning email will be sent to those students whose attendance will be less than the criteria set by the  teacher. Also there are many more features.

The aim is to make the system in the college completely paperless. As this software  will take all the responsibilty of the teachers making their work easier in handling and viewing the records of the students  Some are not available right now but with time the rest of the features will be added.

# How to run in Tomcat
First is Clone or Download.
I used tomcat 7 to run this project. Copy the folder Coresta Final in the webapps folder of the Apache Software Foundation/Tomcat7.0/webapps.

Database MySQL
6 tables created.
  1.admin
  2.attendance
  3.semester
  4.student
  5.subject
  6.teacher_data
  
  Columns for : 
  1.admin -> [a_username, a_password, a_email]
  
  2.attendance -> [sem_id, s_enrollment_number, s_name, teacher_name, subject_name, lecture_number, date(Y-M-D), status]
  
  3.semester -> [sem_id, department, subject_id, sunject_name, section, shift, semester]
  
  4.student -> [s_enrollment_number, sem_id, s_name, s_username, s_password, s_email, s_phone_number, date(Y-M-D), s_dept, s_section, s_shift, s_semester]
  
  5.subject -> [subject_id, subject_name]
  
  6.teacher_data -> [t_no, t_name, t_username, t_password, t_email, t_department, t_shift]  t_no is basically the teacher id(Unique)
  
 
 enter student details page background color is black because of a small code mistake. Else everything is working. 
 
 This is my first project and It was really very intresting to work on it. I will keep improving this project. Few features I have not yet added(ADD ons : Automatically sending email to the defaulters, sms notification, Improved UI, Student Sign in and more functionalities.)
 Any comments or suggestions are welcome :D
