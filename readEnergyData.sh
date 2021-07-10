file=energyData.txt
 > "$file"
echo "structure-Id energy"
for d in */ ; do
    #echo "$d"
    	# check if pwscf.out file is correct (21-06-27-vj)
	if grep -q '!' $d/pwscf.out
	then
    	if grep -q 'JOB DONE.' $d/pwscf.out
	then	
    		#vol=$(awk '/unit-cell volume/' $d/pwscf.out | tail -2 | head -1|sed 's/^[^(]*(//'| sed 's/A.*//'|sed 's/[^0-9]*//')
		#21-06-30-vj:changed
		FERy=`grep '!' $d/pwscf.out | tail -1 | cut -c 35-50`
		FEeV=`echo "scale=15; $FERy*13.605698066" | bc -l`
		echo "${d%*/} $FEeV"
    		echo "${d%*/} $FEeV" >> "$file"
    	#else
    		#echo "${d%*/} check... "
	fi
	else
		echo "${d%*/} check... "
	fi
done
