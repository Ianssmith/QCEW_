BEGIN{FS=OFS=","}
{gsub(/, /,"/")};{gsub(/\$/,"")}
#Wage calculations
$5==2000 && $4 !~ /All Industries|All Private/ && length($3) < 3{n0++;x0+=$8}#print $4}
$5==2001 && $4 !~ /All Industries|All Private/ && length($3) < 3{n1++;x1+=$8}#print $4}
$5==2002 && $4 !~ /All Industries|All Private/ && length($3) < 3{n2++;x2+=$8}#print $4}
$5==2003 && $4 !~ /All Industries|All Private/ && length($3) < 3{n3++;x3+=$8}#print $4}
$5==2004 && $4 !~ /All Industries|All Private/ && length($3) < 3{n4++;x4+=$8}#print $4}
$5==2005 && $4 !~ /All Industries|All Private/ && length($3) < 3{n5++;x5+=$8}#print $4}
$5==2006 && $4 !~ /All Industries|All Private/ && length($3) < 3{n6++;x6+=$8}#print $4}
$5==2007 && $4 !~ /All Industries|All Private/ && length($3) < 3{n7++;x7+=$8}#print $4}
$5==2008 && $4 !~ /All Industries|All Private/ && length($3) < 3{n8++;x8+=$8}#print $4}
$5==2009 && $4 !~ /All Industries|All Private/ && length($3) < 3{n9++;x9+=$8}#print $4}
$5==2010 && $4 !~ /All Industries|All Private/ && length($3) < 3{n10++;x10+=$8}#print $4}
$5==2011 && $4 !~ /All Industries|All Private/ && length($3) < 3{n11++;x11+=$8}#print $4}
$5==2012 && $4 !~ /All Industries|All Private/ && length($3) < 3{n12++;x12+=$8}#print $4}
$5==2013 && $4 !~ /All Industries|All Private/ && length($3) < 3{n13++;x13+=$8}#print $4}
$5==2014 && $4 !~ /All Industries|All Private/ && length($3) < 3{n14++;x14+=$8}#print $4}

$5==2015 && $4 !~ /All Industries|All Private/ && length($3) < 3{n++;x+=$8}#print $4}

#$5==2015 && $4 !~ /All Industries|All Private/ && length($3) < 3{n[$4]++;x[$4, $5]+=$8}	#n++;x+=$8}#print $4}
	# ^^^^ for detailed distro change field $3 to "> 2" and field $4 to /Total/ for only private leave field $3 as is and change field $4 to /Total/
$4 !~ /All Industries|All Private/ && length($3) < 3{sal[NR]=$8}
$4 !~ /All Industries|All Private/ && length($3) < 3{salPrint[$4, $5]=$8}

#Employment calculations
$5==2000 && $4 !~ /All Industries|All Private/ && length($3) < 3{en0++;e0+=$7}#print $4}
$5==2001 && $4 !~ /All Industries|All Private/ && length($3) < 3{en1++;e1+=$7}#print $4}
$5==2002 && $4 !~ /All Industries|All Private/ && length($3) < 3{en2++;e2+=$7}#print $4}
$5==2003 && $4 !~ /All Industries|All Private/ && length($3) < 3{en3++;e3+=$7}#print $4}
$5==2004 && $4 !~ /All Industries|All Private/ && length($3) < 3{en4++;e4+=$7}#print $4}
$5==2005 && $4 !~ /All Industries|All Private/ && length($3) < 3{en5++;e5+=$7}#print $4}
$5==2006 && $4 !~ /All Industries|All Private/ && length($3) < 3{en6++;e6+=$7}#print $4}
$5==2007 && $4 !~ /All Industries|All Private/ && length($3) < 3{en7++;e7+=$7}#print $4}
$5==2008 && $4 !~ /All Industries|All Private/ && length($3) < 3{en8++;e8+=$7}#print $4}
$5==2009 && $4 !~ /All Industries|All Private/ && length($3) < 3{en9++;e9+=$7}#print $4}
$5==2010 && $4 !~ /All Industries|All Private/ && length($3) < 3{en10++;e10+=$7}#print $4}
$5==2011 && $4 !~ /All Industries|All Private/ && length($3) < 3{en11++;e11+=$7}#print $4}
$5==2012 && $4 !~ /All Industries|All Private/ && length($3) < 3{en12++;e12+=$7}#print $4}
$5==2013 && $4 !~ /All Industries|All Private/ && length($3) < 3{en13++;e13+=$7}#print $4}
$5==2014 && $4 !~ /All Industries|All Private/ && length($3) < 3{en14++;e14+=$7}#print $4}

$5==2015 && $4 !~ /All Industries|All Private/ && length($3) < 3{en++;etotal+=$7}

$4 !~ /All Industries|All Private/ && length($3) < 3{averageEmp[NR]=$7}
$4 !~ /All Industries|All Private/ && length($3) < 3{emp[$4, $5]=$7}
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

}

#print wage results
#{totalAvg = x/n;printf "The average mean salary over all feilds for 2015 was %d", x/n}	
#{print "\n"}
END{
#{print "Wage"}
#{print "\n\n"}
#{print "Year, Field, Percent_of_total_wage"}
#percenter(salPrint, x0, 2000, "wage")#;{print x0}
#percenter(salPrint, x1, 2001, "wage")#;{print x1}
#percenter(salPrint, x2, 2002, "wage")#;{print x2}
#percenter(salPrint, x3, 2003, "wage")#;{print x3}
#percenter(salPrint, x4, 2004, "wage")#;{print x4}
#percenter(salPrint, x5, 2005, "wage")#;{print x5}
#percenter(salPrint, x6, 2006, "wage")#;{print x6}
#percenter(salPrint, x7, 2007, "wage")#;{print x7}
#percenter(salPrint, x8, 2008, "wage")#;{print x8}
#percenter(salPrint, x9, 2009, "wage")#;{print x9}
#percenter(salPrint, x10, 2010, "wage")#;{print x10}
#percenter(salPrint, x11, 2011, "wage")#;{print x11}
#percenter(salPrint, x12, 2012, "wage")#;{print x12}
#percenter(salPrint, x13, 2013, "wage")#;{print x13}
#percenter(salPrint, x14, 2014, "wage")#;{print x14}
#percenter(salPrint, x, 2015, "wage")#;{print x}
#{print "\n"}

#{print "Employment"}
#{print "\n\n"}
{print "Year, Field, Percent_of_total_employment"}
percenter(emp, e0, 2000)#;{print e0}
percenter(emp, e1, 2001)#;{print e1}
percenter(emp, e2, 2002)#;{print e2}
percenter(emp, e3, 2003)#;{print e3}
percenter(emp, e4, 2004)#;{print e4}
percenter(emp, e5, 2005)#;{print e5}
percenter(emp, e6, 2006)#;{print e6}
percenter(emp, e7, 2007)#;{print e7}
percenter(emp, e8, 2008)#;{print e8}
percenter(emp, e9, 2009)#;{print e9}
percenter(emp, e10, 2010)#;{print e10}
percenter(emp, e11, 2011)#;{print e11}
percenter(emp, e12, 2012)#;{print e12}
percenter(emp, e13, 2013)#;{print e13}
percenter(emp, e14, 2014)#;{print e14}
percenter(emp, etotal, 2015)#;{print etotal}

#{for(k in salPrint){
#	split(k,splitter,SUBSEP)
#		printf("Year, %d, Field,  %s, Percent of total wages, %d\n", splitter[2], splitter[1], 100*salPrint[k]/x)
#	}
#}
#{print "\n"}
#
##print employment results
#{for(z in emp){
#	split(z,splitter,SUBSEP)
#		printf("Year, %d, Field,  %s, Percent of total employment, %d\n", splitter[2], splitter[1], 100*emp[z]/etotal)
#	}
#}
#
#
#
}
function rep(n,s,	t){
	while(n-- >0)
		t = t s
	return t
	}

function percenter(arr, total, year, category){
	for(h in arr){
		split(h,tempsplitter,SUBSEP)
			if(tempsplitter[2]==year)
			if(category=="wage")
				printf("%d, %s, %.2f\n", tempsplitter[2], tempsplitter[1], 100*arr[h]/total)
			else 
				printf("%d, %s, %.2f\n", tempsplitter[2], tempsplitter[1], 100*arr[h]/total)
			
	}
#{print "\n"}
}
