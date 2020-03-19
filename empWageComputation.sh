echo "Welcome to Employee Wage Computation Program"
checkAttendance=$((RANDOM%2))
if (( $checkAttendance == 1 ))
then
	echo "Employee is Present."
else
	echo "Employee is Absent."
fi
