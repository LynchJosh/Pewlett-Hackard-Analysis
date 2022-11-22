# Pewlett-Hackard-Analysis

##Overview of the analysis: 
The purpose of this analysis was to take multi-able data sets from 6 CSV files to combine them to create easier reports to read. After all the data was put into queries I was tasked with finding the number of employees born between 1952 and 1965 that would be retiring soon. Using Group By and Count commands multi able data points were created which would provide useful information like how many rolls would need to be filled as the employees begin to retire.  




##Results:
(Retirement Titles) This was the first query made that filtered through all the names of the company to find all the staff eligible for retirement.
(Unique Titles) After generating the retirement titles query a lot of names had duplicates as employees had different positions throughout their careers so Unique Titles took out the duplicates to show the current position they hold.
 (Retiring Titles) When the multi-able names were removed the Group By function was used to count the total number of staff in each job category.
(Mentorship Eligibility) This query generated a list of employees who fit the criteria of membership with most of the job positions of these staff being senior roles at the company. 

![data-Module-7-Challenge-Image-3](https://user-images.githubusercontent.com/112728628/203200176-71a58092-e4f0-440b-91ab-eaf8e3837fc1.png)




##Summary:
-How many roles will need to be filled as the "silver tsunami" begins to make an impact?
Based on the Retiring_titles query there are over 90,000 roles that will need to be filled.
-Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
There are less than 2000 qualified retirement-ready employees.




