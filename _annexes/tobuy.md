---
title: Tobuy
hidden: true
tobuy:
  items: []
  categories:
    - name: Outils
      items:
        - épingles à tête triangulaire
        - microscope/endoscope USB
        -  "[Stylo de coupe (chauffant)](http://www.banggood.com/20CM-DC-5_9V-Electric-Craft-Pen-Styrofoam-Cutter-Hot-Wire-Cutting-Tool-With-Adapter-p-1086536.html)"
        - gros pistolet à colle (en ayant vérifié la taille et la puissance du mien)
        - balance 0-100g
        - roulette au bout d'un manche (outil d'installation de moustiquaire) ("screen splining tool") (pour faire des nervures dans la mousse)
    - name: Equipement RC
      items:
        - "[Sac à LiPo](www.guixmodel.fr/modelisme/accessoires/accus/lipo-1s/lipobag-detail)"
        - chargeur LiPo de qualité à alim 12V
        - alim 12V
      categories:
        - name: Radio
          items:
            - Taranis Plus
            - récepteurs FrSky X8R et X4R
            - récepteurs compatible ACCST
            - bouton rotatif 6 positions
            - "manches Aurora 9 (pour [remplacer les manches d'origine](https://www.youtube.com/watch?v=pSMZNkiLENQ))"
            - "[Moufle](https://hobbyking.com/en_us/turnigy-transmitter-muff-black.html)"
          categories:
            - name: Cannibaliser un modules DSMX
              items:
                - "DX4e, DX5e, DX6i (DSMX) [à cannibaliser](http://www.flitetest.com/articles/spektrofy-your-taranis)"
                - "[Boitier pour module JR](http://www.thingiverse.com/thing:293608)"
        - name: FPV
          items:
            - "convertisseur audio-video USB (Pour faire du [FPV sur Android]( https://www.youtube.com/watch?v=GCYtWUJlTrg))"
            - "[convertisseur audio-video HDMI](https://www.amazon.fr/dp/B01I1HWP9W)"
    - name: Consommables (@todo Separate building materials (foams, tapes, glues, plastic cards, wood, etc.) in an annexe)
      items:
        - "[élastiques 12 cm * 6 mm](http://www.guixmodel.fr/modelisme/accessoires/divers/elastique-6x120mm-detail) (trop cher pour grosses quantités)"
        - prop savers de toutes tailles (chez Guix ou PB)
        - gaz sec inerte
        - "[plombs de pèche (olive)](https://www.ma-peche.fr/84-plomb-de-peche)"
        - "[assortiment de matériaux](http://www.pb-modelisme.com/Matprem/listeMatPrem.php) (tubes en carbone, corde à piano, contre-plaqué, etc.)"
        - "[bâtonnets en bois](https://www.amazon.fr/dp/B00BWA6IRG)"
        - joint rond autocollant (antidérapant entre aile et fuselage)
        - cyanoacrylate fluide, moyenne, épaisse (Hobby King)
        - http://www.leroymerlin.fr/v3/p/produits/colle-aerosol-neoprene-spray-77-3m-500g-e35232
      categories:
        - name: "(Carton-)Mousses"
          items:
            - "[Adams Readi-board](https://www.dollartree.com/Readi-Board-Foam-Boards/p16450/index.pro)"
            - "[HobbyKing foam board](https://hobbyking.com/en_us/catalogsearch/result/?q=Aero-modelling+Foam+Board)"
            - "[Kapaline](http://www.cartonmousse.net/artikelgroep/2/kapaline.html)"
            - "[Carton Plume Canson](http://fr.canson.com/arts-graphiques/canson-carton-plume)"
            - "[Carton mousse Canson](http://fr.canson.com/arts-graphiques/canson-carton-mousse-polystyrene)"
            - "[Carton mousse Clairefontaine](http://clairefontaine-rhodia-2016.e-catalogues.info/#380/z)"
            - "[Flite Test foam board](https://www.graupner.com/Flite-Test-Foam-Board-waterproof-foam-board-by-Adams-50-pieces/FT4000B/)"
            - Depron
        - name: Bande collante
          items:
            - "3 types de bande collante, par ordre croissant d'épaisseur et d'élasticité: - packing tape - vinyl tape - duct tape"
            - "la [bande d'embalage utilisée par Experimental Airlines](http://www.tapeplanet.com/Colored-Carton-Tape-s/149.htm)"
            - "[HobbyKing wing tape](https://hobbyking.com/en_us/catalogsearch/result/?q=wing+tape)"
            - duck tape de toutes les couleurs
            - https://klebetape.de/de/logistik-und-versand/617-packband-klebeband-pack-film-farbig-50mm-x-66m-leise-abrollbar.html
            - http://www.colouredpackagingtape.com/sale-8465691-self-adhesive-colored-carton-sealing-tape-2-inch-width-for-food-beverage.html
            - https://www.amazon.co.uk/Rolls-BLUE-COLOURED-Packaging-meters/dp/B004SYAFZ4
            - http://www.rajapack.co.uk/packaging-tape-strapping/packaging-tape/48mm-coloured-polypropylene-packaging-tape_PDT478580.html;pgid=3lF0WPgr1nxSR07xOlkr6VuG0000xxUPphUf;sid=k0YJpUNRb5sMpRShmzktbL5bliNNOd_hdoeqtwx5qYHn0Fk8OYDlgJl-MFRGjUY019o=
            - http://www.raja.fr/adhesifs-cerclage-collage/adhesifs-emballage/rubans-adhesifs-emballage-pvc/ruban-adhesif-pvc-couleur-rajatape-50mm_PDT02219.html
            - https://www.tapes-direct.co.uk/index.php?main_page=index&cPath=148_191
            - http://www.cenpac.fr/adhesif-colle-lien/ruban-adhesif-pvc/ruban-adhesif-pvc-couleur/p13115
    - name: Divers
      items:
        - ballon-flèche Nerf
---
Achats à faire.

## Pour des modèles

{% for model in site.fleat %}
{% unless model.tobuy %}
Attention&nbsp;: la description de {{ model.name }} n'a pas de section "achats".
{% endunless %}
{% endfor %}

<div class="row">
{% assign models = site.fleat | where_exp: "model", "model.tobuy[0]" %}
{% for model in models %}
<div class="col-xs-4">
### {{ model.name }}
{% for tobuy in model.tobuy %}
- {% if tobuy.count %}{{ tobuy.count }} fois {% endif %}{{ tobuy.model }}{% endfor %}
</div>
{% assign index = forloop.index | modulo: 3 %}
{% if index == 0 %}<div class="clearfix"></div>{% endif %}
{% endfor %}
</div>

## En général

{% include_relative tobuy_category.md level=3 category=page.tobuy %}

{% include links_by_title.md %}

## Autres

- FT A Twin: Mini Guinea -> 1*CCW, 1*CW
- FT B: Sea Otter ? -> 1*CW
- FT C: Spear -> 1*CW
- FT C Twin: Sea Duck -> 1*CCW, 1*CW
- EA S: Un ou deux -> 2*CCW
- EA M: Un ou deux -> 2*CCW
- EA M Twin: ECV Carrier -> 1*CCW, 1*CW
- Des Y pour servos (plein, de toutes tailles)
- Des "linkage stopper" (pour les servos)
- Des servos 9g et 5g
- De la lumière
- Des roues
- Des hélices, moteurs et ESCs pur les modèles à venir, et en pièces de rechange pour les modèles existants
- rallonges de servos de toutes longueurs (ou fil et connecteurs ?)
