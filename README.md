# Pewlett-Hackard-Analysis

## Overview of Analysis

Pewlett-Hackard has requested information around the number of employees retiring in the near future.  The purpose of 
this analysis is to determine the number of retiring employees per title and identify employees eligible for the
mentorship program.  Pewlett-Hackard will use this information to determine if there are enough employees for 
the mentorship program to address the "silver tsunami" as current employees reach retirement age.

## Results 

The analysis generated 2 tables.

The first table shows the number of employees by title retiring in the near future.

![Employees Retiring](https://user-images.githubusercontent.com/100876517/167323828-d2d83bfe-5720-4c5d-b428-634d7fb3a749.png)

The second table shows the number of employees eligible for the mentorship program.

![mentorship](https://user-images.githubusercontent.com/100876517/167323830-f71ae844-241c-472a-9b6e-c3cbb269e4a7.png)

* Table 1 reflects there are 72,458 employees retiring in the near future over 7 job titles.
* Table 1 reflects that 70% of the employees retiring are in the Senior Engineer or Senior Staff role.  This is a 
  significant number of resources and a large risk for the company to fill the knowledge gap.
* Table 2 reflects there are 1,549 employees eligible for the mentorship program.  This is 2% of the total
  retiring titles.
* Table 2 reflects 6 job titles eligible for the mentorship program.

## Summary

In summary, there are 72,458 roles that will need to be filled as the "silver tsunami" begins to impact the
organization.  There does not appear to be enough employees ready to step into these roles based on the
mentorship analysis showing only 1,549 eligible for the program.

Two additional queries to provide more insight into the "silver tsunami" are shown below.

The first query is to identify the number of employees retiring in the first year or 1952.

![Additional query](https://user-images.githubusercontent.com/100876517/167326459-dd555df6-b7c4-4759-8bd0-a50b2383c7fd.png)

The result of this query show there are 21,209 employees with the birth date in 1952 or the first year of the "silver 
tsunami" to help the organization prepare by year.

The original mentorship eligibility was based on birthdates in 1965.  The organization may want to consider employees
eligible for mentorship with birthdates in 1964 as well to provide a larger employee population for mentorship.

The query below is the updated query to include 1964 and 1965 in the mentorship eligibility category.

![Expanded mentorship query](https://user-images.githubusercontent.com/100876517/167327651-a1321e0a-43df-4582-9cf5-232a890c8c01.png)

The results of this query are below.  

![Expand Mentorship](https://user-images.githubusercontent.com/100876517/167328236-14087157-d385-4358-b1aa-2480d24abad7.png)

