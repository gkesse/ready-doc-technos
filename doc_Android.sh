#================================================
# Android Windows
#================================================

#------------------------------------------------
# Configurer Java
#------------------------------------------------
# (Windows System) Installer Java
http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html

# (Windows System) Configurer la variable d environnement JAVA_HOME
JAVA_HOME -> JAVA_ROOT_DIR

# (Windows Terminal) Vérifier l installation de Java
javac -version

#------------------------------------------------
# Configurer Cygwin
#------------------------------------------------
# (Windows System) Installer Cygwin
-> Installer Cygwin

# (Cygwin GUI) Configurer Cygwin
-> Installer make
-> Installer gawk

#------------------------------------------------
# Configurer Eclipse
#------------------------------------------------
# (Windows System) Installer Eclipse
https://www.eclipse.org/downloads/packages

# (Windows Terminal) Démarrer Eclipse
set PATH=C:\Program Files (x86)\Java\jdk1.8.0_77\bin
set PATH=C:\Eclipse\Kepler_32bit\eclipse;%PATH%
eclipse

# (Eclipse GUI) Configurer la perspective
Window -> Open Perspective-> Other -> Java -> Ok

#------------------------------------------------
# Configurer Android ADT
#------------------------------------------------
# (Eclipse GUI) Installer Android ADT
Help -> Install New Software -> Add
Name -> ADT
Location -> https://dl-ssl.google.com/android/eclipse/ -> Ok
Check -> Developer Tools -> Next -> Next
Check -> I accept the terms of the licence agreements -> Finish

#------------------------------------------------
# Configurer Android SDK
#------------------------------------------------
# (Windows System) Installer Android SDK
https://dl.google.com/android/repository/sdk-tools-windows-3859397.zip

# (Eclipse GUI) Configurer Android SDK
Window -> Preferences -> Android
SDK Location -> C:\NVPACK\android-sdk-windows -> Ok

# (Android SDK Manager) Configurer Android SDK
Tools -> Android SDK Tools
Tools -> Android SDK Platform-Tools
Android 4.4.2 (API 19) -> SDK Platform
Android 4.4.2 (API 19) -> ARM EAB v7a System Image
Android 4.4.2 (API 19) -> Intel x86 Atom System Image
Android 4.4.2 (API 19) -> Google APIs ARM EAB v7a System Image
Android 4.4.2 (API 19) -> Google APIs Intel x86 Atom System Image
Extras -> Google Play Services
Check -> Accept Licence -> Install

#------------------------------------------------
# Configurer Android NDK
#------------------------------------------------
# (Windows System) Installer Android NDK
https://dl.google.com/android/repository/android-ndk-r15c-windows-x86.zip

# (Eclipse GUI) Configurer Android NDK
Window -> Preferences -> Android -> NDK
NDK Location -> C:\NVPACK\android-ndk-r10d -> Ok

#------------------------------------------------
# Tester un projet Android
#------------------------------------------------
# (Windows Terminal) Tester un projet Android
set PATH=C:\Program Files (x86)\Java\jdk1.8.0_77\bin
set PATH=C:\NVPACK\android-ndk-r10d;%PATH%
set NDK_PROJECT_PATH=C:\NVPACK\android-ndk-r10d\samples\hello-jni
ndk-build

#================================================
# Android Linux
#================================================

#------------------------------------------------
# Configurer GLibC
#------------------------------------------------
# (Linux Terminal) Vérifier GLibC
ldd --version

#------------------------------------------------
# Configurer l'exécution des applications 32-bit/64-bit
#------------------------------------------------
# (UNIX Terminal) Installer ia32-libs
sudo apt-get install ia32-libs

#------------------------------------------------
# Configurer Java
#------------------------------------------------
# (Linux Terminal) Installer Java
sudo apt-get install openjdk-8-jdk

# (Linux Terminal) Vérifier Java
javac -version

#------------------------------------------------
# Configurer Android SDK
#------------------------------------------------
# (Linux Terminal) Installer Android SDK
cd ~/dev/AndroidSDK
wget https://dl.google.com/android/repository/sdk-tools-linux-3859397.zip
unzip sdk-tools-linux-3859397.zip

#------------------------------------------------
# Configurer Android NDK
#------------------------------------------------
# (Linux Terminal) Installer Android NDK
cd ~/dev/AndroidNDK
wget https://dl.google.com/android/repository/android-ndk-r15c-linux-x86_64.zip
unzip android-ndk-r15c-linux-x86_64.zip

#================================================
# Android Eclipse
#================================================

#------------------------------------------------
# Créer un projet Android
#------------------------------------------------
# (Eclipse GUI) Créer un projet Android
File -> New -> Project
Android -> Android Application Project -> Next
Application Name -> GApp
Project Name -> GProject
Package Name -> com.pkg.app
Minimum Required SDK -> API 8: Android 2.2 (Froyo)
Target SDK -> API 17: Android 4.2 (Jelly Bean)
Compile With -> API 17: Android 4.2 (Jelly Bean)
Theme -> Holo Light with Dark Action Bar -> Next
Check -> Create Custom Launch Icon
Check -> Create Activity
Check -> Create Project in Workspace -> Next
Foreground -> Image
Foreground Image File -> laucher_icon
Foreground Scaling -> Center
Foreground Shape -> Circle
Background Color -> Blue -> Next
Check -> Create Activity
Check -> Blank Activity -> Next
Activity Name -> MainActivity 
Activity Name -> activity_main -> Finish



#================================================
# Android Definition
#================================================

#------------------------------------------------
# Android NDK
#------------------------------------------------
-> Native Development Kit
-> Kit de Développement Natif
-> Permet de développer en C/C++ sous Android

#------------------------------------------------
# Android ADT
#------------------------------------------------
-> Android Development Tools
-> Outils de Développement Android
-> Permet de développer sous Android

#------------------------------------------------
# Android SDK
#------------------------------------------------
-> Software Development Kit
-> Kit de Développement d Application Android
-> Permet de développer des applications Android

#------------------------------------------------
# TADP
#------------------------------------------------
-> Tegra est un processeur Mobile de NVIDIA
-> Permet d accélerer les cartes graphiques

#------------------------------------------------
# TADP
#------------------------------------------------
-> Tegra Android Development Pack
-> Package de Développement Android
-> Permet de fournir outils pour développer des applications Android
-> Contient Android SDK, Android NDK, OpenCV, PhysX, OpenGL

#------------------------------------------------
# GNU
#------------------------------------------------
-> GNUs Not UNIX
-> GNU N est pas UNIX
-> Permet de fournir un ensemble de logiciels libres sous UNIX

#------------------------------------------------
# GLibC
#------------------------------------------------
-> GNU C Library
-> Bibliothèque Standard C du projet GNU
-> Permet de fournir l ensemble des fichiers entête de la bibliothèque standard C

