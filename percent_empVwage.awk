BEGIN{FS=OFS=","}
{gsub(/, /,"/")};{gsub(/\$/,"")}
#Wage calculations
$5==2015 && $4 !~ /All Industries|All Private/ && length($3) < 3{n++;x+=$8}#print $4}
	# ^^^^ for detailed distro change field $3 to "> 2" and field $4 to /Total/ for only private leave field $3 as is and change field $4 to /Total/
$5==2015 && $4 !~ /All Industries|All Private/ && length($3) < 3{sal[NR]=$8}
$5==2015 && $4 !~ /All Industries|All Private/ && length($3) < 3{salPrint[$4, $5]=$8}

#Employment calculations
$5==2015 && $4 !~ /All Industries|All Private/ && length($3) < 3{en++;etotal+=$7}
$5==2015 && $4 !~ /All Industries|All Private/ && length($3) < 3{averageEmp[NR]=$7}
$5==2015 && $4 !~ /All Industries|All Private/ && length($3) < 3{emp[$4, $5]=$7}
END{
#calculating decile cells for wage

for(f=0;f<10;f++){
	salDecils[f] = 0
}


for(t in salDecils){
	salDecils[t] = x/10*div
	div++
	#print salDecils[t]
}



#calculating decile cells for employment
for(f=0;f<10;f++){
	empDecils[f] = 0
	emphisto[f] = 0
}


for(t in empDecils){
	empDecils[t] = etotal/10*div
	div++
	#print empDecils[t]
}



#print wage results
#{totalAvg = x/n;printf "The average mean salary over all feilds for 2015 was %d", x/n}	
#{print "\n"}
{for(k in salPrint){
	split(k,splitter,SUBSEP)
		printf("Year, %d, Field,  %s, Percent of total wages, %d\n", splitter[2], splitter[1], 100*salPrint[k]/x)
	}
}
{print "\n"}

#print employment results
{for(z in emp){
	split(z,splitter,SUBSEP)
		printf("Year, %d, Field,  %s, Percent of total employment, %d\n", splitter[2], splitter[1], 100*emp[z]/etotal)
	}
}



}
function rep(n,s,	t){
	while(n-- >0)
		t = t s
	return t
	}


