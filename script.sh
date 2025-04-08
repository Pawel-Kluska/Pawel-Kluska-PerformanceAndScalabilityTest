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