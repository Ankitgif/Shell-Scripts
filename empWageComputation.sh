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
dailyEmployeewage()
{
	fullDayhour=8
	dailyEmpWage=$((WAGEPERHOUR*fullDayhour))
	echo "Daily Employee Wage is $dailyEmpWage"
}
partTimeemployeewage()
{
	partTimehour=4
	partTimeEmpWage=$((WAGEPERHOUR*partTimehour))
	echo "Part time employee wage is $partTimeEmpWage"
}
echo "Enter choice to do operation 1.Check Attendance 2.Calculate daily employee wage 3.Calculate Part time employee wage"
read num
choice=$num
case $choice in
1) attendanceCheck
   ;;
2) dailyEmployeewage
   ;;
3) partTimeemployeewage
   ;;
*)
  echo "Please provide valid choice"
esac


