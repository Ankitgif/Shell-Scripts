echo "Welcome to Employee Wage Computation Program"
attendanceCheck()
{
	checkAttendance=$((RANDOM%2))
	if (( $checkAttendance == 1 ))
	then
		echo "Employee is Present."
	else
		echo "Employee is Absent."
	fi
}
WAGEPERHOUR=20
FULLDAYHOUR=8
dailyEmployeewage() 

{
	fullDayhour=8
	dailyEmpWage=$((WAGEPERHOUR*FULLDAYHOUR))
	echo "Daily Employee Wage is $dailyEmpWage"
}
partTimeemployeewage()
{
	partTimehour=4
	partTimeEmpWage=$((WAGEPERHOUR*partTimehour))
	echo "Part time employee wage is $partTimeEmpWage"
}
wagesForaMonth()
{
	dailyEmpWage=$((WAGEPERHOUR*FULLDAYHOUR))
	workingDayperMonth=20
	wageForMonth=$((workingDayperMonth*dailyEmpWage))
	echo "Wages for a month is $wageForMonth"
}

echo "Enter choice to do operation 1.Check Attendance 2.Calculate daily employee wage 3.Calculate Part time employee wage 4.Calculating Wages for a month"
read num
choice=$num
case $choice in
1) attendanceCheck
   ;;
2) dailyEmployeewage
   ;;
3) partTimeemployeewage
   ;;
4) wagesForaMonth 
   ;;
*)
  echo "Please provide valid choice"
esac


