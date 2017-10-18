---
title: Mettre à jour une Taranis
---
La [Taranis X9D Plus](https://www.frsky-rc.com/product/taranis-x9d-plus-2/) utilise beaucoup de logiciel.
Cet article résume comment installer le logiciel compagnon [OpenTX](http://www.open-tx.org/)
et mettre à jour OpenTX lui-même ainsi que les différents firmwares.

Installer et configurer le compagnon OpenTX
-------------------------------------------

- télécharger l'installeur adapté à votre système *et* le contenu de la carte SD depuis le [site de OpenTX](http://www.open-tx.org/2017/05/30/opentx-2.2.0#download-links);
- installer et lancer le compagnon OpenTX
- ajuster les "settings" :

<div class="text-center">
<img class="img-fluid" src="opentx-companion-settings-1.png">
<img class="img-fluid" src="opentx-companion-settings-2.png">
<img class="img-fluid" src="opentx-companion-settings-3.png">
</div>

Mettre à jour OpenTX sur la radio
---------------------------------

- télécharger le dernier firmware : menu "File -> Download -> Download firmware"
- démarrer la Taranis en mode "boot loader" (en maintenant les deux trims horizontaux vers le milieu)
- la brancher à l'ordinateur via un câble mini-USB
- "Read models and settings from radio"
- "File -> Save as..."
- "Backup radio to file"
- "Write Firmware to Radio"

<div class="text-center">
<img class="img-fluid" src="opentx-flash-firmware.png">
</div>

- Faire une sauvegarde du contenu du disque "TARANIS SD"
- Effacer la totalité du disque "TARANIS SD" (et vider la corbeille, car certains systèmes stockent la corbeille sur la carte SD)
- "Synchonize SD"

<div class="text-center">
<img class="img-fluid" src="opentx-synchronize-sd.png">
</div>

- Quitter le compagnon
- Détacher les disques "TARANIS" et "TARANIS SD"

Mettre à jour le firmware du module XJT interne
-----------------------------------------------

- Télécharger le dernier [Firmware-XJT](https://www.frsky-rc.com/taranis-x9d-plus-2/) dans le dossier "FIRMWARE" du disque "TARANIS SD"
- Démarrer la Taranis normalement
- Appuyer longuement sur "MENU" puis brièvement sur "PAGE" pour arriver sur "SD CARD"

<div class="text-center">
<img class="img-fluid" src="taranis-sd-card.bmp">
</div>

- Entrer dans le dossier "FIRMWARE", naviguer jusqu'au fichier à utiliser

<div class="text-center">
<img class="img-fluid" src="taranis-sd-card-firmware.bmp">
</div>

- Appuyer longuement sur "ENT", puis sélectioner "Flash internal module"

<div class="text-center">
<img class="img-fluid" src="taranis-firmware-flash.bmp">
</div>

Mettre à jour le firmware des récepteurs
----------------------------------------

- Télécharger les dernier firmwares: [XSR](https://www.frsky-rc.com/xsr/), [X4R](https://www.frsky-rc.com/x4r/), [X4RSB](https://www.frsky-rc.com/x4rsb/), [X6R](https://www.frsky-rc.com/x6r/), [X8R](https://www.frsky-rc.com/x8r/)

XSR: https://www.youtube.com/watch?v=H6Uk8uuLHXw
XM: https://www.youtube.com/watch?v=eYVk2lWPJxU
X8R, X6R, X4R(-SB): http://www.dronetrest.com/t/how-to-upgrade-your-frsky-receiver-firmware-x8r-x4r-x4r-sb/1667
