-- Your SQL for question 3
# Display the departments offering courses
SELECT dept from unidb_courses;


# Display the semesters being attended
SELECT semester FROM unidb_attend;


# Display the courses that are attended
SELECT num from unidb_attend
              group by dept;


# List the student names and country, ordered by first name
select fname,lname,country
from unidb_students
ORDER BY fname;

# List the student names and mentors, ordered by mentors
select fname,lname,mentor
from unidb_students
order by mentor;


# List the lecturers, ordered by office
select staff_no
from unidb_lecturers
order by office;

# List the staff whose staff number is greater than 500
select staff_no,fname,lname
from unidb_lecturers
WHERE staff_no>500;


# List the students whose id is greater than 1668 and less than 1824
select id
from unidb_students
where id>1668 and id<1824;


# List the students from NZ, Australia and US
select id, fname, lname, country, mentor
from unidb_students
where country='NZ' OR country='AU' OR country='US';

# List the lecturers in G Block
select staff_no,fname,lname
from unidb_lecturers
where office like 'G%';

# List the courses not from the Computer Science Department
select descrip
from unidb_courses
where dept = 'comp';

# List the students from France or Mexico
select id,fname,lname,country,mentor
from unidb_students
where country = 'FR' OR country = 'MX';