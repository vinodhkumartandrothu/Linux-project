#!/ibin/bash
echo enter the value of n
read n
for((i=1;i<=n;i++))
do
for((j=0;j<i;j++))
do
echo -n \*
done
echo
done
