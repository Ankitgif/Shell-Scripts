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
	echo "Daily Employee Wage is $dailyEmpWage."
}
partTimeemployeewage()
{
	partTimehour=4
	partTimeEmpWage=$((WAGEPERHOUR*partTimehour))
	echo "Part time employee wage is $partTimeEmpWage."
}
wagesForaMonth()
{
	dailyEmpWage=$((WAGEPERHOUR*FULLDAYHOUR))
	workingDayperMonth=20
	wageForMonth=$((workingDayperMonth*dailyEmpWage))
	echo "Wages for a month is $wageForMonth."
}
wageTillworkingdays()
{
	wagesFormonth=0
	dailyEmpWage=$((WAGEPERHOUR*FULLDAYHOUR))
	for (( day=1;day<=20;day++ ))
	do
		wagesFormonth=$(($dailyEmpWage*$day))
	done
	echo "Wages till total working days is reached for a month is $wagesFormonth."
}
getWorkhour()
{
	workHour=$(($1/$2))
	echo "Working hour for an employee is $workHour hour a day."
}
dailyandtotalWage()
{
	for (( day=1;day<=$1;day++ ))
	do
		dailyEmpWage=$((WAGEPERHOUR*FULLDAYHOUR))
		echo "Day $day wage is $dailyEmpWage."
	done
	totalWage=$((dailyEmpWage*$1))
	echo "Total wage of an employee for a month is $totalWage."
}
dayandDailywage()
{
	declare -A arr
	day=1
	dailyWage=$((WAGEPERHOUR*FULLDAYHOUR))
	echo "Day | Daily wage"
	arr[$day]=$dailyWage
	for (( day=1;day<=$1;day++ ))
	do
		for key in "${!arr[@]}"
		do
			echo "$day : ${arr[$key]}"
		done
	done
	totalWage=$((dailyWage*$1))
	echo "Total wage is $totalWage."
}

echo "Enter choice to do operation."
echo "1.Check Attendance." 
echo "2.Calculate daily employee wage."
echo "3.Calculate Part time employee wage."
echo "4.Calculating Wages for a month."
echo "5.Calculate wages till total working days for a month."
echo "6.Get work hour."
echo "7.Storing daily and total wage."
echo "8.Storing day and daily wage along with total wage."
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
5) wageTillworkingdays
   ;;
6) dailyEmpwage=160
   getWorkhour $dailyEmpwage $WAGEPERHOUR
   ;;
7) workingdayPermonth=20
   dailyandtotalWage $workingdayPermonth
   ;;
8) workingdayPermonth=20
   dayandDailywage $workingdayPermonth
   ;;
*)
  echo "Please provide valid choice."
esac


