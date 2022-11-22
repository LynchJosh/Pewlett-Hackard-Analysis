--Employee_Database_challenge

--PART 1 

SELECT emp_no, first_name, last_name
FROM employees;

SELECT title, from_date, to_date
FROM titles;

SELECT em.emp_no, em.first_name, em.last_name, em.birth_date,ti.title, ti.from_date, ti.to_date
INTO temp_table
FROM employees as em 
JOIN titles as ti on 
em.emp_no = ti.emp_no;

SELECT emp_no, first_name, last_name, title, from_date, to_date
INTO retirement_titles
FROM temp_table
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
Order BY emp_no; 

Drop TABLE temp_table;
SELECT * FROM retirement_titles 

--remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles as rt
ORDER BY emp_no ASC, to_date DESC;
SELECT * FROM unique_titles;

SELECT COUNT (ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles as ut
Group by title
order by count (title) DESC;
SELECT * FROM retiring_titles



--Employee_Database_challenge

--PART 2


SELECT DISTINCT ON(e.emp_no) e.emp_no, 
e.first_name, 
e.last_name, 
e.birth_date,
de.from_date,
de.to_date,
t.title
INTO mentorship_eligibilty
FROM employees as e
Left outer Join dept_emp as de
ON (e.emp_no = de.emp_no)
Left outer Join titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;


SELECT * FROM mentorship_eligibilty; 


DROP Table mentorship_eligibilty; 


