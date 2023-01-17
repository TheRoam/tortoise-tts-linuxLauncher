1. clone repository

git clone https://github.com/neonbjb/tortoise-tts.git

2. create python environment so it deosn't interfere with other python software

cd tortoise-tts
python3 -m venv TTS
source TTS/bin/activate

3. install required modules (following collab notes)
https://colab.research.google.com/drive/1wVVqUPqwiDBUVeWWOUNglpGhU3hg_cbR?usp=sharing#scrollTo=Gen09NM4hONQ

pip3 install -U scipy
pip3 install transformers==4.19.0
pip3 install -r requirements.txt

4. run setup script

python3 setup.py install

5. run text to speech initially and install missing dependencies depending on your base python installation

python3 scripts/tortoise_tts.py "Hello The Roaming Workshop" -v "daniel" -p "fast" -o "test1.wav"

6. install missing modules, in my case:

pip3 install torch
pip3 install torchaudio
pip3 install llvmlite
pip3 install numpy==1.23

7. 
