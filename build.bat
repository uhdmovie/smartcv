@echo off
set JAVA_HOME=C:\Users\SIRJA\Desktop\SmartCV\jdk-17.0.12
set PATH=%JAVA_HOME%\bin;%PATH%
set ANDROID_HOME=C:\Users\SIRJA\Desktop\SmartCV\android-sdk
set PATH=%ANDROID_HOME%\cmdline-tools\latest\bin;%ANDROID_HOME%\platform-tools;%PATH%
cd /d C:\Users\SIRJA\Desktop\SmartCV\android
gradlew.bat assembleDebug
