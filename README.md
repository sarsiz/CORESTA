# CORESTA
Complete Record Of Student Attendance and u can also take attendance and review the attendance of an individual student or the  whole class. Also a warning email will be sent to those students whose attendance will be less than the criteria set by the  teacher. Also there are many more features.

The aim is to make the system in the college completely paperless. As this software  will take all the responsibilty of the teachers making their work easier in handling and viewing the records of the students  Some are not available right now but with time the rest of the features will be added.

# How to run in Tomcat
First sis Clone or Download.
I used tomcat 7 to run this project. Copy the folder Coresta Final in the webapps folder of the Apache Software Foundation/Tomcat7.0/webapps.

Then open the browser, type  "localhost:port_no"   port_no can be any number which you have set among the available ports
By Default port number is 8080. So go to link   (localhost:8080) 

Open Manager App, then Click on the Coresta Final.

####The project won't run if you haven't specified the path correctly for jdk or servlet-api.


###DATABASE creation in mysql.  BACKEND

Database Name : MSIT

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
  
#####Front end
  I used a tool Web Builder for designing the pages and then I modified the pages manually (by coding myself) according to my needs. Linking Front-end and the Back-end was very tough initially as I have never done that before. And now I do it quite easily.
 
 
 enter student details page background color is black after signin as teacher because of a small code mistake(can be easily rectified). Else everything is working. 

###My first project
This is my first project and It was really very intresting to work on it. I will keep improving this project. Few features I have not yet added(ADD ons : Automatically sending email to the defaulters, sms notification, Improved UI, Student Sign in and more functionalities.)
 
 Any comments or suggestions are welcome :D
