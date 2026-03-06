@echo off
set JAVA_HOME=C:\Users\SIRJA\Desktop\SmartCV\jdk-17.0.12
set PATH=%JAVA_HOME%\bin;%PATH%
set ANDROID_HOME=C:\Users\SIRJA\Desktop\SmartCV\android-sdk

echo y > yes.txt
type yes.txt | %ANDROID_HOME%\cmdline-tools\latest\bin\sdkmanager.bat "platforms;android-34" "build-tools;34.0.0" "platform-tools"
del yes.txt
