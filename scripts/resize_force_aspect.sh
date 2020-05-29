


# RESIZE CONVERT RIGHT ASPECT RATIO

#curpath="/Users/jjaner/Jordi/àgata/espinguet-stjordi2020"
curpath="/Users/jjaner/Jordi/àgata/espinguet-stjordi2020/pendents-juny"
VeusArray=("VEU1" "VEU2" "VEU3" "VEU4")


for veu in ${VeusArray[*]};
	do cd $curpath/encoded/$veu;
	echo "PATH IS:" $PWD;
	mkdir $curpath/resized/$veu;

	for i in *.mp4;		
		do echo ffmpeg -i "$i" -vf "scale=640:360:force_original_aspect_ratio=decrease,pad=640:360:(ow-iw)/2:(oh-ih)/2"  "$curpath/resized/$veu/$i";
		ffmpeg -i "$i" -vf "scale=640:360:force_original_aspect_ratio=decrease,pad=640:360:(ow-iw)/2:(oh-ih)/2"  "$curpath/resized/$veu/$i";
	done
done

