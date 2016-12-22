---
title: Préparer les plans Flite Test pour impression
---

Les [plans fournis par Flite Test](http://flitetest.com/free-build-plans/) sont dans des formats de papier américains.
Voici comment je retravaille ces plans pour les imprimer en A3.
Vous trouverez [les plans que j'ai retravaillés](/les-avions-d-internet/) ici.

Si vous retravaillez d'autres plans de cette manière, n'hésitez pas à me les envoyer, je les mettrai avec les miens (en faisant mention de votre nom, évidemment).

J'utilise [Inkscape](https://inkscape.org/fr/), qui est un [logiciel libre](https://fr.wikipedia.org/wiki/Logiciel_libre) de [dessin vectoriel](https://fr.wikipedia.org/wiki/Image_vectorielle) qui fonctionne sous Windows, macOS et Linux.
Comme le [format de fichier SVG](https://fr.wikipedia.org/wiki/Scalable_Vector_Graphics) utilisé par Inkscape ne peut pas contenir plusieurs pages, j'utilise l'extension [Pages](https://sourceforge.net/projects/inkscape-pages/).

*[SVG]: Scalable Vector Graphics

Voici les étapes que je suis&nbsp;:

Télécharger le plan "Full"
: En bas de l'article "Build" de l'avion concerné (avant les commentaires), Flite Test fournit plusieurs versions du plan.
Voir par exemple le [Sea Duck](flitetest.com/articles/ft-sea-duck-build) et chercher "FT SEA DUCK PLANS".
"Tiled" signifie que le plan est coupé en feuilles standard à recoller.
Je n'utilise pas ces plans pour deux raisons&nbsp;: le format du papier est américain, et même les petites pièces sont souvent à cheval sur deux pages.
Le plan "Full" est sur de grandes feuilles.
Toutes les pièces sont en un morceau.
"All in one" contient les deux.
Je télécharge donc le "Full".

Créer et sauver un fichier vide dans Inkscape
: Je crée un nouveau fichier (menu "File" -> "New"),
je change son format en A3 paysage (menu "File" -> "Document properties..."),
puis je l'enregistre (menu "File" -> "Save as...").

Importer le PDF dans Inkscape
: Le plan téléchargé est au format PDF.
Il faut donc l'importer dans Inkscape.
J'importe chaque page du plan (menu "File" -> "Import...", puis choisir la page dans la boite de dialogue) une par une et je déplace les objets importés pour éviter qu'ils se chevauchent.

Supprimer certains marquages
: Je dégroupe (menu "Object" -> "Ungroup") les objets importés jusqu'à pouvoir sélectionner les traits individuellement.
Je supprime habituellement les logos, la légende, etc.
Mais je conserve l'échelle en centimètres pour valider la taille après impression.

Supprimer d'autres marquages
: Je supprime également les hachures des biseaux et les points des endroits où il faut enlever la couche supérieure de papier.
(Ces objets augmentent considérablement la taille du fichier et ne me sont pas indispensables.)
Pour cela, je note leur couleur, par exemple "ff23aeff" (menu "Object" -> "Fill and Stroke..." -> onglet "Fill" -> champ "RGBA"), puis je cherche tous les objets de cette couleur en enlevant la composante A, donc "ff23ae" (menu "Edit" -> "Find/Replace...", champ "Find", bouton "Find").

Regrouper et dédupliquer les pièces
: Je regroupe ensuite chaque pièce (sélectionner la pièce, puis menu "Object" -> "Group").
Je supprime aussi les doublons&nbsp;: certaines pièces sont présentes plusieurs fois sur les plans.
Comme c'est écrit dessus, il n'y a pas besoin de les imprimer plusieurs fois.

Réarranger les pièces
: Je trouve un agencement raisonnable pour que les pièces plus petites que le format A3 soient sur une seule (future) page tout en utilisant aussi peu de papier que possible.
Je décide aussi comment positionner les plus grandes pièces pour que recoller le plan soit facile.
Je les duplique autant que nécessaire pour en avoir une version par page où elles doivent apparaitre.
Je duplique également l'échelle pour en avoir une sur chaque page.
Je fais ensuite un groupe (menu "Object" -> "Group") pour chaque (future) page.

Créer plusieurs pages
: Je transforme le document en multi-pages (menu "Extensions" -> "Pages" -> "Create multi page document...").
J'ajoute le nombre de pages qu'il va me falloir (menu "Extensions" -> "Pages" -> "Insert...") et je déplace chaque groupe créé précédemment vers sa page de destination (menu "Extensions" -> "Pages" -> "Move selected objects...").
J'ajuste ensuite la position des objets sur chaque page pour qu'ils sont bien dans la zone imprimée.

Exporter en PDF
: Menu "Pages" -> "Export to PDF...".

Imprimer
: Dans Acrobat Reader, je fais bien attention à imprimer *sans aucune mise à l'échelle*, sur du papier A3.
