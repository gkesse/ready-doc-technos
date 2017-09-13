#================================================
# Android
#================================================

#------------------------------------------------
# Configurer Java
#------------------------------------------------
# (Windows System) Installer Java
-> Installer Java

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
-> Installer Eclipse

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
 -> Installer Android SDK

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
 -> Installer Android NDK

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
-> Tegra Android Development Pack
-> Package de Développement Android sous Tegra
-> Fournit des outils pour développer des applications Android
-> Contient Android SDK, Android NDK, OpenCV, PhysX, OpenGL
-> Tegra est un processeur Mobile de NVIDIA


