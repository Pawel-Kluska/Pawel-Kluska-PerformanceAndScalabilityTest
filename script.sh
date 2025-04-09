git clone https://github.com/Pawel-Kluska/Pawel-Kluska-PerformanceAndScalabilityTest.git
cd Pawel-Kluska-PerformanceAndScalabilityTest/Microservice1
sudo apt-get install openjdk-17-jdk
sudo ./gradlew bootRun --args='--spring.profiles.active=cloud'


git clone https://github.com/Pawel-Kluska/Pawel-Kluska-PerformanceAndScalabilityTest.git
cd Pawel-Kluska-PerformanceAndScalabilityTest/Microservice2
sudo apt-get install openjdk-17-jdk
sudo ./gradlew bootRun --args='--spring.profiles.active=cloud'

git clone https://github.com/Pawel-Kluska/Pawel-Kluska-PerformanceAndScalabilityTest.git
cd Pawel-Kluska-PerformanceAndScalabilityTest/Microservice3
sudo apt-get install openjdk-17-jdk
sudo ./gradlew bootRun --args='--spring.profiles.active=cloud'



ssh -i "aws_key_apir_magisterka.pem" ubuntu@ec2-34-201-66-242.compute-1.amazonaws.com
ssh -i "aws_key_apir_magisterka.pem" ubuntu@34.207.161.129





Microservice1
35.171.178.202
50.19.141.101
52.4.157.127
54.144.114.222
54.152.113.76
3.95.159.244
44.211.165.168
3.92.134.76
34.207.161.129

Microservice2
54.146.190.80
54.197.11.161
52.207.254.232
44.211.38.92
54.208.165.162
34.203.40.253
34.238.232.133
54.164.198.223
18.208.134.56

Microservice3
54.234.29.183
54.166.99.239
54.173.224.77
52.207.92.121
54.209.125.4
54.175.162.84
54.146.134.192
3.91.208.107
35.173.125.102