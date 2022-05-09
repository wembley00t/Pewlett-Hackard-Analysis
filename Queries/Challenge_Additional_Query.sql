SELECT
	e.emp_no,
	e.first_name,
	e.last_name,
INTO first_year
FROM employees AS e
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1952-12-31')
ORDER BY e.emp_no;


SELECT DISTINCT ON (e.emp_no)
	e.emp_no,
	e.birth_date,
	e.first_name,
	e.last_name,
	de.from_date,
	de.to_date,
	titles.title
INTO mentorship_expanded
FROM employees AS e
INNER JOIN dept_emp AS de
ON(e.emp_no = de.emp_no)
INNER JOIN titles
ON (e.emp_no = titles.emp_no )
WHERE titles.to_date = ('9999-01-01')
AND (e.birth_date BETWEEN '1964-01-01' AND '1965-12-31')
ORDER BY e.emp_no;