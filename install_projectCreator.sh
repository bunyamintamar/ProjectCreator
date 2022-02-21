#!/bin/bash

echo  '--------------------------------------------------------------------'
echo  'WELLCOME TO INSTALLER FOR PROJECT CREATOR'
echo  '--------------------------------------------------------------------'
echo
echo  'createTest and createCppProject will be installed'

sudo  apt --fix-broken install
sudo  apt-get update -y
sudo  apt-get install build-essential -y
sudo  apt-get remove cmake -y
sudo  apt-get install cmake -y
echo  '--------------------------------------------------------------------'
echo  'CMAKE reinstalled'
echo  '--------------------------------------------------------------------'
echo

sudo  mkdir /opt/playSuccess
sudo  cp success.wav /opt/playSuccess/
sudo  echo '
#!/bin/bash
aplay /opt/playSuccess/success.wav
' > /opt/playSuccess/playSuccess.sh
sudo  chmod +x /opt/playSuccess/playSuccess.sh
echo  '--------------------------------------------------------------------'
echo  'success.wav installed'
echo  '--------------------------------------------------------------------'
echo

sudo  mkdir /opt/playError
sudo  cp error.wav /opt/playError/
sudo  echo '
#!/bin/bash
aplay /opt/playError/error.wav
' > /opt/playError/playError.sh
sudo  chmod +x /opt/playError/playError.sh
echo  '--------------------------------------------------------------------'
echo  'error.wav installed'
echo  '--------------------------------------------------------------------'
echo

chmod +x createCppProject
chmod +x createTest

sudo  cp createCppProject /usr/bin/
sudo  cp createTest       /usr/bin/
echo  '--------------------------------------------------------------------'
echo  'createCppProject and createTest is copied to /usr/bin'
echo  '--------------------------------------------------------------------'
echo

sudo  echo '
#!/bin/bash
sudo rm -r ${@}
' > /tmp/delete_intaller_for_ProjectCreator
sudo  chmod +x /tmp/delete_intaller_for_ProjectCreator

echo  '--------------------------------------------------------------------'
echo  '|  written by BUNYAMIN TAMAR                                       |'
echo  '|  Mail     : bunyamintamar@yandex.com                             |'
echo  '|  GitHub   : https://github.com/bunyamintamar/ProjectCreator.git  |'
echo  '|  Linkedin : https://www.linkedin.com/in/bunyamintamar            |'
echo  '--------------------------------------------------------------------'
echo  'good luck!'
echo

sudo /tmp/delete_intaller_for_ProjectCreator `pwd` & exit