git clone https://github.com/Pawel-Kluska/Pawel-Kluska-PerformanceAndScalabilityTest.git
cd Pawel-Kluska-PerformanceAndScalabilityTest/Microservice1
sudo apt-get install openjdk-17-jdk
./gradlew bootRun -Dspring.profiles.active=cloud
