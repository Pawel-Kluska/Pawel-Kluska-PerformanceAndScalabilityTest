
git clone https://github.com/Pawel-Kluska/Pawel-Kluska-PerformanceAndScalabilityTest.git
sudo apt-get install openjdk-17-jdk -y
cd Pawel-Kluska-PerformanceAndScalabilityTest/Microservice1
sudo ./gradlew bootRun --args='--spring.profiles.active=cloud'


git clone https://github.com/Pawel-Kluska/Pawel-Kluska-PerformanceAndScalabilityTest.git
sudo apt-get install openjdk-17-jdk -y
cd Pawel-Kluska-PerformanceAndScalabilityTest/Microservice2
sudo ./gradlew bootRun --args='--spring.profiles.active=cloud'


git clone https://github.com/Pawel-Kluska/Pawel-Kluska-PerformanceAndScalabilityTest.git
sudo apt-get install openjdk-17-jdk -y
cd Pawel-Kluska-PerformanceAndScalabilityTest/Microservice3
sudo ./gradlew bootRun --args='--spring.profiles.active=cloud'

git pull origin main
sudo ./gradlew bootRun --args='--spring.profiles.active=cloud'



ssh -i "aws_key_apir_magisterka.pem" ubuntu@3.82.51.92

nginx
http://3.82.51.92


Microservice1
98.81.58.221
54.172.161.18
3.83.237.134
18.232.180.165
18.234.88.126
54.91.94.84
3.90.18.8
44.223.65.31
54.234.100.228

ssh -i "aws_key_apir_magisterka.pem" ubuntu@98.81.58.221
ssh -i "aws_key_apir_magisterka.pem" ubuntu@54.172.161.18
ssh -i "aws_key_apir_magisterka.pem" ubuntu@3.83.237.134
ssh -i "aws_key_apir_magisterka.pem" ubuntu@18.232.180.165
ssh -i "aws_key_apir_magisterka.pem" ubuntu@18.234.88.126
ssh -i "aws_key_apir_magisterka.pem" ubuntu@54.91.94.84
ssh -i "aws_key_apir_magisterka.pem" ubuntu@3.90.18.8
ssh -i "aws_key_apir_magisterka.pem" ubuntu@44.223.65.31
ssh -i "aws_key_apir_magisterka.pem" ubuntu@54.234.100.228


Microservice2
54.83.69.166
54.175.127.43
54.211.34.57
3.80.64.25
3.208.31.128
54.197.28.153
18.215.158.172
3.91.98.145
13.218.222.113

ssh -i "aws_key_apir_magisterka.pem" ubuntu@54.83.69.166
ssh -i "aws_key_apir_magisterka.pem" ubuntu@54.175.127.43
ssh -i "aws_key_apir_magisterka.pem" ubuntu@54.211.34.57
ssh -i "aws_key_apir_magisterka.pem" ubuntu@3.80.64.25
ssh -i "aws_key_apir_magisterka.pem" ubuntu@3.208.31.128
ssh -i "aws_key_apir_magisterka.pem" ubuntu@54.197.28.153
ssh -i "aws_key_apir_magisterka.pem" ubuntu@18.215.158.172
ssh -i "aws_key_apir_magisterka.pem" ubuntu@3.91.98.145
ssh -i "aws_key_apir_magisterka.pem" ubuntu@13.218.222.113

http://54.163.59.104,http://3.82.35.121,http://54.211.34.57,http://3.80.64.25,http://3.208.31.128,http://54.197.28.153,http://18.215.158.172,http://3.91.98.145,http://13.218.222.113

Microservice3
3.95.37.182
54.173.26.17
18.212.240.179
3.81.235.87
52.207.230.227
3.85.37.44
54.144.95.31
18.209.49.224
184.72.168.255

ssh -i "aws_key_apir_magisterka.pem" ubuntu@3.95.37.182
ssh -i "aws_key_apir_magisterka.pem" ubuntu@54.173.26.17
ssh -i "aws_key_apir_magisterka.pem" ubuntu@18.212.240.179
ssh -i "aws_key_apir_magisterka.pem" ubuntu@3.81.235.87
ssh -i "aws_key_apir_magisterka.pem" ubuntu@52.207.230.227
ssh -i "aws_key_apir_magisterka.pem" ubuntu@3.85.37.44
ssh -i "aws_key_apir_magisterka.pem" ubuntu@54.144.95.31
ssh -i "aws_key_apir_magisterka.pem" ubuntu@18.209.49.224
ssh -i "aws_key_apir_magisterka.pem" ubuntu@184.72.168.255

http://3.95.37.182,http://54.173.26.17,http://18.212.240.179,http://3.81.235.87,http://52.207.230.227,http://3.85.37.44,http://54.144.95.31,http://18.209.49.224,http://184.72.168.255


Monolith
54.92.218.126
50.19.32.143
54.242.107.145
50.17.93.129
98.81.228.47
18.208.211.133
98.84.151.114
54.84.36.42
184.73.34.227

ssh -i "aws_key_apir_magisterka.pem" ubuntu@54.92.218.126
ssh -i "aws_key_apir_magisterka.pem" ubuntu@50.19.32.143
ssh -i "aws_key_apir_magisterka.pem" ubuntu@54.242.107.145
ssh -i "aws_key_apir_magisterka.pem" ubuntu@50.17.93.129
ssh -i "aws_key_apir_magisterka.pem" ubuntu@98.81.228.47
ssh -i "aws_key_apir_magisterka.pem" ubuntu@18.208.211.133
ssh -i "aws_key_apir_magisterka.pem" ubuntu@98.84.151.114
ssh -i "aws_key_apir_magisterka.pem" ubuntu@54.84.36.42
ssh -i "aws_key_apir_magisterka.pem" ubuntu@184.73.34.227


ssh -i "aws_key_apir_magisterka.pem" ubuntu@54.236.22.71


git clone https://github.com/Pawel-Kluska/Pawel-Kluska-PerformanceAndScalabilityTest.git
sudo apt-get install openjdk-17-jdk -y
cd Pawel-Kluska-PerformanceAndScalabilityTest/Monolith
sudo ./gradlew bootRun --args='--spring.profiles.active=cloud'