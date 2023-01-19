**1.clone repository**

git clone https://github.com/neonbjb/tortoise-tts.git

**2.create python environment so it deosn't interfere with other python software**

  cd tortoise-tts
  python3 -m venv TTS
  source TTS/bin/activate

**3.install required modules (following collab notes)**
https://colab.research.google.com/drive/1wVVqUPqwiDBUVeWWOUNglpGhU3hg_cbR?usp=sharing#scrollTo=Gen09NM4hONQ

  pip3 install -U scipy
  pip3 install transformers==4.19.0
  pip3 install -r requirements.txt

**4.run setup script**

  python3 setup.py install

**5.run text to speech initially and install missing dependencies depending on your base python installation**

  python3 scripts/tortoise_tts.py "This is The Roaming Workshop" -v "daniel" -p "fast" -o "test1.wav"

**6.install missing modules, in my case:**

  pip3 install torch
  pip3 install torchaudio
  pip3 install llvmlite
  pip3 install numpy==1.23

**7.using you own voices**
- record 3 clean samples of about 10 seconds (no ambient sounds or music)
- use 16bit floating point WAV format with 22500 sample rate (Audacity)
- create a new folder in /tortoise/voices
- when using the scripts, refer to the voices folder with the -V argument and refer to the new voice using the folder name in the argument -v
