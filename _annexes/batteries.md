---
title: Mes batteries
hidden: true
batteries:
  "Taranis +":
    20160623: charge d'entretien
  "A (2S, 850&nbsp;mAh, rouge)":
    20160627: peu utilisée avant
    20160628: décharge
    20160629: charge
    20160630: décharge
    20160701: charge
    20160709: [décharge, charge]
    20160716: [décharge, charge, décharge, charge]
    20160724: [décharge, charge]
    20160727: [décharge, charge]
    20160805: [décharge, charge]
    20160806: [décharge, charge]
    20160809: [décharge, charge]
    20160812: [décharge, charge]
    20160823: [décharge, charge]
    20160824: [décharge, charge]
    20160925: [décharge, charge]
    20160927: décharge
    20160928: charge
    20161031: [décharge, charge]
    20161106: [décharge, choc]
    20161109: charge
    20161122: [décharge, charge]
    20161127: [décharge, charge]
    20161219: charge d'entretien
    20170623: charge d'entretien
  "B (2S, 850&nbsp;mAh, rouge)":
    20160628: peu utilisée avant
    20160629: charge d'entretien
    20160630: [décharge, charge]
    20160709: [décharge, charge]
    20160710: [décharge, charge]
    20160711: [décharge partielle, charge]
    20160716: [décharge, charge, décharge]
    20160717: charge
    20160724: [décharge, charge]
    20160727: [décharge, charge]
    20160805: décharge
    20160806: [charge, décharge, charge]
    20160809: [décharge, charge]
    20160811: [décharge, charge]
    20160812: [décharge, charge]
    20160925: [décharge, charge]
    20160927: décharge
    20160928: charge
    20161031: [décharge, charge]
    20161106: décharge
    20161109: charge
    20161122: [décharge, charge]
    20161219: charge d'entretien
    20170623: charge d'entretien
  "C (2S, 180&nbsp;mAh, bleue)":
    20160624: achat, première charge
    20160806: [décharge, charge]
    20160812: [décharge, charge]
    20160925: [décharge, charge]
    20160927: décharge
    20160928: charge
    20161104: décharge
    20161119: charge
    20161219: charge d'entretien
    20170609: charge d'entretien
    20170610: décharge partielle
    20170623: charge
  "D (2S, 180&mAh, bleue)":
    20160624: [achat, première charge]
    20160727: [décharge, charge]
    20160806: [décharge, charge]
    20160811: [décharge, charge]
    20160812: [décharge partielle, charge]
    20160824: [décharge, charge]
    20160925: [décharge, charge]
    20161104: décharge
    20161119: charge
    20161219: charge d'entretien
    20170609: charge d'entretien
    20170610: décharge partielle
    20170623: charge
  "E (2S, 900&nbsp;mAh, blanche)":
    20160628: peu utilisée avant
    20160629: [charge d'entretien, décharge partielle, charge]
    20160709: décharge
    20160710: [charge, décharge, charge]
    20160711: décharge partielle, charge
    20160805: [décharge, charge]
    20160806: [décharge, charge]
    20160809: [décharge, charge]
    20160812: [décharge partielle, charge]
    20160823: [décharge, charge]
    20160925: [décharge, charge]
    20160927: décharge
    20160928: charge
    20161031: [décharge, charge]
    20171127: [décharge, charge]
    20161219: charge d'entretien
    20170623: charge d'entretien
  "F (2S, 360&nbsp;mAh, rouge)":
    20160628: peu utilisée avant (achetée par erreur)
    20160629: charge d'entretien
    20160820: charge d'entretien
    20161219: charge d'entretien
  "G (2S, 360&nbsp;mAh, rouge)":
    20160628: peu utilisée avant (achetée par erreur)
    20160629: charge d'entretien
    20160820: [décharge partielle, charge]
    20161219: charge d'entretien
  "H (1S, 150&nbsp;mAh)":
    20160624: [achat, première charge]
    20160709: [décharge, charge]
    20160710: [décharge, charge]
    20160807: charge d'entretien
    20161219: charge d'entretien
  "I (1S, 150&nbsp;mAh)":
    20160624: [achat, première charge]
    20160709: [décharge, charge]
    20160711: [décharge, charge]
    20160807: charge d'entretien
    20161104: [décharge, charge]
    20161219: charge d'entretien
  "J (3S, 2.2&nbsp;Ah)":
    20160630: [achat, première charge]
    20160806: charge d'entretien
    20160812: décharge
    20160818: charge
    20160823: [décharge, charge]
    20160824: [décharge, charge]
    20160925: [décharge, charge]
    20160927: décharge
    20160928: charge
    20161219: charge d'entretien
  "K (3S, 2.2&nbsp;Ah)":
    20160630: achat
    20160701: première charge
    20160807: charge d'entretien
    20160809: [décharge partielle, charge]
    20160811: [décharge, charge]
    20160812: décharge
    20160818: charge
    20160823: [décharge, charge]
    20160824: [décharge, charge]
    20160925: [décharge, charge]
    20160927: décharge
    20160928: charge
    20161219: charge d'entretien
---
Gestion de mes batteries.

{% for battery in page.batteries %}
## {{ battery[0] }}
{% for date in battery[1] %}
- {{ date[0] }}&nbsp;: {{ date[1] | join: ", " }}{% endfor %}
{% endfor %}
