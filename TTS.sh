#!/bin/bash
#start date in seconds since 1970
ti=$(date +%s)
echo $(date)

echo "------ STARTING TORTOISE-TTS ------"

echo "-- SETTING UP PYTHON 'TTS' ENVIRONMENT --"

python3 -m venv TTS
source TTS/bin/activate

echo "-- SETUP COMPLETE --"

echo "  INTRODUCE TEXT TO CREATE:"
#read user prompt input
read p

echo "  NAME OUTPUT FILE:"
read -e -i "./wavs/test.wav" of

echo "  SET VOICES FOLDER:"
read -e -i "./tortoise/voices" fl

echo "  SHOWING VOICES FOLDER:"
ls $fl

echo "  SELECT VOICE:"
read -e -i "ultron-en" vo

echo "  SEED:"
read -e -i 7 sd

echo "  RUNNING TEXT TO SPEECH GENERATION BY NEONBJB FOR '"$p"' IN "$of" FILE WITH "$vo" VOICE USING SEED "$sd

#launch TTS
python3 scripts/tortoise_tts.py "$p" --seed $sd -v "$vo" -V "$fl" -p "fast" -o "$of"

#end date in seconds since 1970
tf=$(date +%s)

echo $(date)

time=$(($tf-$ti))

if [ $time -lt 60 ]; then
	echo $time" seconds"
else
	echo $(($time/60))" minutes "$(($time%60))" seconds"
fi

echo "------ FINISHED TURTOISE-TTS ------"
echo "-- PRESS [ENTER] TO QUIT --"

read q
