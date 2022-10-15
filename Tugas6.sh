echo "--Simple Program for Counting Student's IPK--"
echo "---------------------------------------------------"

declare -a ips_num

echo -n "Enter Total IPS: "
read ips

i=0
while [ $i -lt $ips ];
do 
   echo -n "Score Subject( $i ): "
   read ips_num[$i];
   let i=i+1;
done

j=0
while [ $j -le $i ];
do
   let ips_sum=ips_sum+ips_num[$j];
   let j=j+1;
done

let IPK=$ips_sum/$ips

echo
echo "--Student's Final Result--"
echo "----------------------------------------------------"
echo "IPS Student = $ips_sum / $ips"
echo "IPK Student = $IPK"
echo
