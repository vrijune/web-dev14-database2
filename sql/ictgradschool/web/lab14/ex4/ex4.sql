-- Your SQL for question 4
# What are the names of the students who attend COMP219?
SELECT s.fname, s.lname
FROM unidb_students AS s,
     unidb_attend AS a
WHERE s.id = a.id
  AND a.dept = 'comp'
  AND a.num = '219';

# What are the names of the student reps that are not from NZ?
SELECT s.fname, s.lname
FROM unidb_students AS s
WHERE NOT s.country = 'NZ';


# Where are the offices for the lecturers of 219?
SELECT l.office
FROM unidb_lecturers AS l,
     unidb_teach AS t
Where l.staff_no = t.staff_no
  AND t.num = '219';


# What are the names of the students taught by Te Taka?
SELECT distinct s.fname, s.lname, l.staff_no
FROM unidb_lecturers AS l,
     unidb_teach AS t,
     unidb_students AS s,
     unidb_attend As a
WHERE l.staff_no = t.staff_no
  and t.num = a.num
  and a.id = s.id
  and l.fname = 'Te Taka';


# List the students and their mentors
SELECT s.fname, s.lname, a.fname, a.lname
FROM unidb_students As s,
     unidb_students AS a
WHERE s.mentor = a.id;


# Name the lecturers whose office is in G-Block as well as naming the students that are not from NZ
SELECT fname, lname
from unidb_lecturers
where office like 'G%'

UNION

SELECT  fname, lname
from unidb_students
where NOT country = 'NZ';






# List the course coordinator and student rep for COMP219
select l.fname,l.lname, s.fname,s.lname,t.dept, t.num
FROM unidb_courses As c,
     unidb_lecturers AS l,
#      unidb_attend as a,
     unidb_teach as t,
     unidb_students as s
WHERE c.coord_no = t.staff_no
and t.staff_no =  l.staff_no
and c.rep_id = s.id
and c.dept = 'comp' AND
      c.num ='219'















