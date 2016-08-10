var dataset;

d3.csv("total_wage.csv", function(error,data){
	if(error){
		console.log(error);
	}else{
		console.log(data);
	dataset=data;
	
	d3.select("body").selectAll("p")
		.data(dataset)
		.enter()
		.append("p")
		.text(function(d) {return d.Percent_wage;});
	}	
});

