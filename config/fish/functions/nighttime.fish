function nighttime --description "Make it nighttime"
	redshift -O 2200 -g 0.9:0.3:0.3
end

function daytime --description "Make it daytime"
	redshift -O 5500
end

#function sunnytime --description "Bein' outside"
#end
