function calculateworkingHour() {
case $1 in
0)
workingHour=0;
;;
1)
workingHour=8;
;;
2)
workingHour=4;
;;
esac
echo $workingHour;
}

perHoursalary=20;
totalsalary=0;
totalworkingHour=0;
Day=1;
while [[ $day -le 20 && $totalworkingHour -lt 40 ]]
do
wHour=$(calculateworkingHour $((RANDOM%3)))
totalworkingHour=$(($totalworkingHour+$wHour));
if [ $totalworkingHour -gt 40 ]
then
totalworkingHour=$(($totalworkingHour-$wHour));
break;
fi
salary=$(( $perHoursalary*$wHour));
totalsalary=$(($totalsalary+$salary));
((day++));
done
echo "Employee Earned $totalsalary"
