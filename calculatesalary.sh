perHourSalary=20;
workingHour=0;
totalSalary=0;
for ((day=1; day<=20; day++))
do
ispresent=$((RANDOM%3));
case $ispresent in
0)
echo "Employee is Absent";
workingHour=0;
;;
1)
echo "Employee is Present";
workingHour=8;
;;
2)
echo "Employee working at part time";
workingHour=4;
;;
esac
salary=$(($workingHour*$perHourSalary));
totalSalary=$(($totalSalary+$salary));
done
echo "Employee earned $totalSalary";

