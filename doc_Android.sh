#================================================
# Android
#================================================

#------------------------------------------------
# Configurer Android NDK
#------------------------------------------------
# Installer Java
-> Installer Java

# Configurer la variable d environnement JAVA_HOME
JAVA_HOME -> JAVA_ROOT_DIR

# Vérifier l installation de Java
javac -version

# Installer Cygwin
-> Installer make
-> Installer gawk

# Installer Eclipse
-> Installer Eclipse

# Installer Android ADT
Help -> Install New Software -> Add
Name -> ADT
Location -> https://dl-ssl.google.com/android/eclipse/ -> Ok
Check -> Developer Tools -> Next -> Next
Check -> I accept the terms of the licence agreements -> Finish

# Installer Android SDK
 -> Installer Android SDK

# Configurer Android SDK
Window -> Preferences -> Android
SDK Location -> C:\NVPACK\android-sdk-windows -> Ok

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
# Android NDK
#------------------------------------------------
-> Native Development Kit
-> Kit de Développement Natif
-> Permet de développer en C/C++ sous Android














