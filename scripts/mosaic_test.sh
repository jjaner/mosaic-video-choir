
curpath="/Users/jjaner/Jordi/àgata/espinguet-stjordi2020/sync"

mkdir "$curpath/mosaic"



#------------------------------------
# Global mosaic 2 x 2 


files=( \
"mosaic/output_9x9_VEUVEU1.mp4" \
"mosaic/output_9x9_VEUVEU2.mp4" \
"mosaic/output_9x9_VEUVEU3.mp4"  \
"mosaic/output_9x9_VEUVEU4.mp4"  \
) 

ffmpeg \
 -i  "$curpath/${files[0]}"   \
 -i  "$curpath/${files[1]}"   \
 -i  "$curpath/${files[2]}"   \
 -i  "$curpath/${files[3]}"   \
  -filter_complex " \
      [0:v] setpts=PTS-STARTPTS, scale=960x540 [a0]; \
      [1:v] setpts=PTS-STARTPTS, scale=960x540 [a1]; \
      [2:v] setpts=PTS-STARTPTS, scale=960x540 [a2]; \
      [3:v] setpts=PTS-STARTPTS, scale=960x540 [a3]; \
      [a0][a1][a2][a3]xstack=inputs=4:layout=0_0|0_h0|w0_0|w0_h0[out] \
      " \
    -map "[out]" \
    -c:v libx264 -f matroska $curpath/mosaic/output_9x9_TOTS.mkv 

exit 1;

#------------------------------------
# individual voices

veu=VEU1
files=( \
"VEU1/V1-M-Abril.mp4" \
"VEU1/V1-P-Martina.mp4" \
"VEU2/V2-G-Judit_RESIZE.mp4"   \
"VEU2/V2-M i Mn- Lia i Ibai.mp4"  \
"VEU2/V2-M-Clàudia.mp4"  \
"VEU2/V2-M-Ivan.mp4"   \
"VEU2/V2-Mn-Júlia.mp4"  \
"VEU2/V2-P-Jofre.mp4"  \
"VEU2/V2-P-Mar.mp4" \
	)


echo ffmpeg \
-i  "$curpath/${files[0]}"   \
-i  "$curpath/${files[1]}"   \
-i  "$curpath/${files[2]}"   \
-i  "$curpath/${files[3]}"   \
-i  "$curpath/${files[4]}"   \
-i  "$curpath/${files[5]}"   \
-i  "$curpath/${files[6]}"   \
-i  "$curpath/${files[7]}"   \
-i  "$curpath/${files[8]}"   \
  -filter_complex " \
      [0:v] setpts=PTS-STARTPTS, scale=640x360 [a0]; \
      [1:v] setpts=PTS-STARTPTS, scale=640x360 [a1]; \
      [2:v] setpts=PTS-STARTPTS, scale=640x360 [a2]; \
      [3:v] setpts=PTS-STARTPTS, scale=640x360 [a3]; \
      [4:v] setpts=PTS-STARTPTS, scale=640x360 [a4]; \
      [5:v] setpts=PTS-STARTPTS, scale=640x360 [a5]; \
      [6:v] setpts=PTS-STARTPTS, scale=640x360 [a6]; \
      [7:v] setpts=PTS-STARTPTS, scale=640x360 [a7]; \
      [8:v] setpts=PTS-STARTPTS, scale=640x360 [a8]; \
      [a0][a1][a2][a3][a4][a5][a6][a7][a8]xstack=inputs=9:layout=0_0|w0_0|w0+w1_0|0_h0|w0_h0|w0+w1_h0|0_h0+h1|w0_h0+h1|w0+w1_h0+h1[out] \
      " \
    -map "[out]" \
    -c:v libx264 -f matroska $curpath/mosaic/output_9x9_${veu}.mkv 

   
echo " VEU 2"

# VEU 2
veu=VEU2
files=(
"VEU2/V2-G-Judit_RESIZE.mp4"   \
"VEU2/V2-M i Mn- Lia i Ibai.mp4"  \
"VEU2/V2-M-Clàudia.mp4"  \
"VEU2/V2-M-Ivan.mp4"   \
"VEU2/V2-Mn-Júlia.mp4"  \
"VEU2/V2-P-Jofre.mp4"  \
"VEU2/V2-P-Mar.mp4" \
"VEU2/V2-Cuyas.mp4" \
"VEU3/V3-G-Helena.mp4"  \
)


ffmpeg \
-i  "$curpath/${files[0]}"   \
-i  "$curpath/${files[1]}"   \
-i  "$curpath/${files[2]}"   \
-i  "$curpath/${files[3]}"   \
-i  "$curpath/${files[4]}"   \
-i  "$curpath/${files[5]}"   \
-i  "$curpath/${files[6]}"   \
-i  "$curpath/${files[7]}"   \
-i  "$curpath/${files[8]}"   \
  -filter_complex " \
      [0:v] setpts=PTS-STARTPTS, scale=640x360 [a0]; \
      [1:v] setpts=PTS-STARTPTS, scale=640x360 [a1]; \
      [2:v] setpts=PTS-STARTPTS, scale=640x360 [a2]; \
      [3:v] setpts=PTS-STARTPTS, scale=640x360 [a3]; \
      [4:v] setpts=PTS-STARTPTS, scale=640x360 [a4]; \
      [5:v] setpts=PTS-STARTPTS, scale=640x360 [a5]; \
      [6:v] setpts=PTS-STARTPTS, scale=640x360 [a6]; \
      [7:v] setpts=PTS-STARTPTS, scale=640x360 [a7]; \
      [8:v] setpts=PTS-STARTPTS, scale=640x360 [a8]; \
      [a0][a1][a2][a3][a4][a5][a6][a7][a8]xstack=inputs=9:layout=0_0|w0_0|w0+w1_0|0_h0|w0_h0|w0+w1_h0|0_h0+h1|w0_h0+h1|w0+w1_h0+h1[out] \
      " \
    -map "[out]" \
    -c:v libx264 -f matroska $curpath/mosaic/output_9x9_VEU${veu}.mkv 



# VEU 3 
veu=VEU3

files=("VEU3/Àgata_Ratapinyada_Veu3.mp4"  \
"VEU3/V3-G-Helena.mp4"  \
"VEU3/V3-PiMn-AraniLara.mp4"  \
"VEU3/VID_20200419_170226.mp4"  \
"VEU3/Vídeodemravents.mp4" \
"VEU4/V4_Aina_20200419_203909.mp4" \
"VEU4/V4-M-Jana.mp4" \
"VEU2/V2-P-Mar.mp4" \
"VEU2/V2-Cuyas.mp4" \
)


ffmpeg \
-i  "$curpath/${files[0]}"   \
-i  "$curpath/${files[1]}"   \
-i  "$curpath/${files[2]}"   \
-i  "$curpath/${files[3]}"   \
-i  "$curpath/${files[4]}"   \
-i  "$curpath/${files[5]}"   \
-i  "$curpath/${files[6]}"   \
-i  "$curpath/${files[7]}"   \
-i  "$curpath/${files[8]}"   \
  -filter_complex " \
      [0:v] setpts=PTS-STARTPTS, scale=640x360 [a0]; \
      [1:v] setpts=PTS-STARTPTS, scale=640x360 [a1]; \
      [2:v] setpts=PTS-STARTPTS, scale=640x360 [a2]; \
      [3:v] setpts=PTS-STARTPTS, scale=640x360 [a3]; \
      [4:v] setpts=PTS-STARTPTS, scale=640x360 [a4]; \
      [5:v] setpts=PTS-STARTPTS, scale=640x360 [a5]; \
      [6:v] setpts=PTS-STARTPTS, scale=640x360 [a6]; \
      [7:v] setpts=PTS-STARTPTS, scale=640x360 [a7]; \
      [8:v] setpts=PTS-STARTPTS, scale=640x360 [a8]; \
      [a0][a1][a2][a3][a4][a5][a6][a7][a8]xstack=inputs=9:layout=0_0|w0_0|w0+w1_0|0_h0|w0_h0|w0+w1_h0|0_h0+h1|w0_h0+h1|w0+w1_h0+h1[out] \
      " \
    -map "[out]" \
    -c:v libx264 -f matroska $curpath/mosaic/output_9x9_VEU${veu}.mkv 



veu=VEU4

files=( \
"VEU4/V4_Aina_20200419_203909.mp4" \
"VEU4/V4-M-Jana.mp4" \
"VEU3/Àgata_Ratapinyada_Veu3.mp4"  \
"VEU3/V3-G-Helena.mp4"  \
"VEU3/V3-PiMn-AraniLara.mp4"  \
"VEU3/VID_20200419_170226.mp4"  \
"VEU3/Vídeodemravents.mp4" \
"VEU4/V4_Aina_20200419_203909.mp4" \
"VEU4/V4-M-Jana.mp4" \
) 

ffmpeg \
-i  "$curpath/${files[0]}"   \
-i  "$curpath/${files[1]}"   \
-i  "$curpath/${files[2]}"   \
-i  "$curpath/${files[3]}"   \
-i  "$curpath/${files[4]}"   \
-i  "$curpath/${files[5]}"   \
-i  "$curpath/${files[6]}"   \
-i  "$curpath/${files[7]}"   \
-i  "$curpath/${files[8]}"   \
  -filter_complex " \
      [0:v] setpts=PTS-STARTPTS, scale=640x360 [a0]; \
      [1:v] setpts=PTS-STARTPTS, scale=640x360 [a1]; \
      [2:v] setpts=PTS-STARTPTS, scale=640x360 [a2]; \
      [3:v] setpts=PTS-STARTPTS, scale=640x360 [a3]; \
      [4:v] setpts=PTS-STARTPTS, scale=640x360 [a4]; \
      [5:v] setpts=PTS-STARTPTS, scale=640x360 [a5]; \
      [6:v] setpts=PTS-STARTPTS, scale=640x360 [a6]; \
      [7:v] setpts=PTS-STARTPTS, scale=640x360 [a7]; \
      [8:v] setpts=PTS-STARTPTS, scale=640x360 [a8]; \
      [a0][a1][a2][a3][a4][a5][a6][a7][a8]xstack=inputs=9:layout=0_0|w0_0|w0+w1_0|0_h0|w0_h0|w0+w1_h0|0_h0+h1|w0_h0+h1|w0+w1_h0+h1[out] \
      " \
    -map "[out]" \
    -c:v libx264 -f matroska $curpath/mosaic/output_9x9_VEU${veu}.mkv 


exit 1;

ffmpeg \
-i  /Users/jjaner/Jordi/àgata/espinguet-stjordi2020/cut2/VEU3/Àgata_Ratapinyada_Veu3_out_end.mp4   \
 -i  /Users/jjaner/Jordi/àgata/espinguet-stjordi2020/cut2/VEU3/VID_20200419_170226.mp4  \
 -i  /Users/jjaner/Jordi/àgata/espinguet-stjordi2020/cut2/VEU4/V4_Aina_20200419_203909.mp4  \
 -i  /Users/jjaner/Jordi/àgata/espinguet-stjordi2020/cut2/VEU4/V4-M-Jana.mp4   \
-filter_complex "  \
	nullsrc=size=640x480 [base];  \
	[0:v] setpts=PTS-STARTPTS, scale=320x240 [upperleft];  \
	[1:v] setpts=PTS-STARTPTS, scale=320x240 [upperright];  \
	[2:v] setpts=PTS-STARTPTS, scale=320x240 [lowerleft];  \
	[3:v] setpts=PTS-STARTPTS, scale=320x240 [lowerright];  \
	[base][upperleft] overlay=shortest=1 [tmp1];  \
	[tmp1][upperright] overlay=shortest=1:x=320 [tmp2];  \
	[tmp2][lowerleft] overlay=shortest=1:y=240 [tmp3];  \
	[tmp3][lowerright] overlay=shortest=1:x=320:y=240 \ 
"  \
-c:v libx264 /Users/jjaner/Jordi/àgata/espinguet-stjordi2020/cut2/output.mkv  
