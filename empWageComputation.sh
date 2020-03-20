echo "Welcome to Employee Wage Computation Program"
checkAttendance=$((RANDOM%2))
if (( $checkAttendance == 1 ))
then
	echo "Employee is Present."
else
	echo "Employee is Absent."
fi
wagePerhour=20
fullDayhour=8
dailyEmpWage=$((wagePerhour*fullDayhour))
echo "Daily Employee Wage is $dailyEmpWage"
