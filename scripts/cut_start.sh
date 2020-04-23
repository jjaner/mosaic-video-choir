


# RESIZE CONVERT RIGHT ASPECT RATIO

curpath="/Users/jjaner/Jordi/àgata/espinguet-stjordi2020"
VeusArray=("VEU1" "VEU2" "VEU3" "VEU4")

duration=123 # seconds 2m:03s

files=("VEU2/V2-M-Ivan.mp4" "VEU3/Àgata_Ratapinyada_Veu3.mp4" "VEU3/VID_20200419_170226.mp4" "VEU4/V4_Aina_20200419_203909.mp4" "VEU4/V4-M-Jana.mp4")
cut=(10 10 10 10 5)

for i in {1..4};
	do mkdir  "$curpath/cut2"; 
		mkdir  "$curpath/cut2/VEU$i"
done

for i in {1..5};
	do  
#	  ffmpeg -i "$curpath/resized/${files[$i]}" -ss ${cut[$i]} "$curpath/cut/${files[$i]}";
	  ffmpeg -i "$curpath/resized/${files[$i]}" -t 5 "$curpath/cut2/${files[$i]}";
	echo "PATH IS:" $PWD;
done

