#=================================================
# Keil µVision
#=================================================

# Créer un nouveau projet
Project
New µVision Project
Name -> MY_PROJECT
Save
CPU -> Atmel -> AT89C52
No
Ok

# Créer un nouveau fichier source
File
New
File
Save As
Name -> MY_FILE.c
Save

# Créer un nouveau fichier entête
File
New
File
Save As
Name -> MY_FILE.h
Save

# Ajouter un fichier source au projet
Target1
Source Group1 -> Right Click
Add File To Source Source Group1
MY_FILE.c
Add
Ok

# Ajouter un répertoire de fichier entête au projet
Target1 -> Right Click
Options for Target Target1
C51
Include Paths -> MY_INCLUDE_PATH
Ok

# Modifier la cible
Target1 -> Right Click
Device
Atmel -> AT89C52
Ok

# Créer un fichier executable hex
Target1 -> Right Click
Options for Target Target1
Output
Check -> Create Hex File
Ok

# Compiler un projet
Target1 -> Right Click
Rebuild All Target Files

