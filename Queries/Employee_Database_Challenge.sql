--Retirement titles of employees between Jan 1, 1952 and Dec 31, 1955
SELECT
	e.emp_no,
	e.first_name,
	e.last_name,
	titles.title,
	titles.from_date,
	titles.to_date	
INTO retirement_titles
FROM employees AS e
INNER JOIN titles
ON (e.emp_no = titles.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (ret_ti.emp_no) ret_ti.emp_no,
ret_ti.first_name,
ret_ti.last_name,
ret_ti.title

INTO unique_titles
FROM retirement_titles as ret_ti
WHERE ret_ti.to_date = ('9999-01-01')
ORDER BY ret_ti.emp_no ASC, ret_ti.to_date DESC;

--Retiring titles by employee
SELECT COUNT(ut.title), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY ut.title
ORDER BY COUNT DESC;

--Employees eligible for mentorship program
SELECT DISTINCT ON (e.emp_no)
	e.emp_no,
	e.birth_date,
	e.first_name,
	e.last_name,
	de.from_date,
	de.to_date,
	titles.title
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
ON(e.emp_no = de.emp_no)
INNER JOIN titles
ON (e.emp_no = titles.emp_no )
WHERE titles.to_date = ('9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;
