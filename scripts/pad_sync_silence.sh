


# RESIZE CONVERT RIGHT ASPECT RATIO

curpath="/Users/jjaner/Jordi/àgata/espinguet-stjordi2020"
VeusArray=("VEU1" "VEU2" "VEU3" "VEU4")

duration=123 # seconds 2m:03s


for veu in ${VeusArray[*]};
	do 		
	mkdir $curpath/sync/$veu;
done


# VEU 1 
veu=VEU1
files=("V1-M-Abril.mp4" \
	"V1-P-Martina.mp4" \
	)
pad_duration=(1.329 1.144)

cd $curpath/resized/$veu
for i in {0..1};		
	do 
	echo ffmpeg -i "${files[i]}" -vf tpad=start_duration=${pad_duration[i]}  "$curpath/sync/$veu/${files[i]}";
done

#exit 1

# VEU 2
veu=VEU2
files=("V2-G-Judit_RESIZE.mp4"   \
"V2-M i Mn- Lia i Ibai.mp4"  \
"V2-M-Clàudia.mp4"  \
"V2-M-Ivan.mp4"   \
"V2-Mn-Júlia.mp4"  \
"V2-P-Jofre.mp4"  \
"V2-P-Mar.mp4" \
"V2-Cuyas.mp4" \
)

pad_duration=(1.723 15.672 31.65 9.278 0.741 2.992 40.129 11.371) 
 		
cd $curpath/resized/$veu
for i in {0..7};		
	do 
	echo ffmpeg -i "${files[i]}" -vf tpad=start_duration=${pad_duration[i]}  "$curpath/sync/$veu/${files[i]}"
done




# VEU 3 
veu=VEU3

files=("Àgata_Ratapinyada_Veu3.mp4"  \
"V3-G-Helena.mp4"  \
"V3-PiMn-AraniLara.mp4"  \
"VID_20200419_170226.mp4"  \
"Vídeodemravents.mp4" \
)

pad_duration=(8.272 1.697 18.085 9.649  1.632)
 		
cd $curpath/resized/$veu
for i in {0..4};		
	do 
	 ffmpeg -i "${files[i]}" -vf tpad=start_duration=${pad_duration[i]}  "$curpath/sync/$veu/${files[i]}"
done


# VEU 4 
veu=VEU4

files=( \
"V4_Aina_20200419_203909.mp4" \
"V4-M-Jana.mp4" \
) 

pad_duration=(8.151 4.740)

cd $curpath/resized/$veu

for i in {0..1};		
	do 
	 ffmpeg -i "${files[i]}" -vf tpad=start_duration=${pad_duration[i]}  "$curpath/sync/$veu/${files[i]}"
done

