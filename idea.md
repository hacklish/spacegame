# Abstrakt

Vesmírná střílečka po vzoru hry Asteroids s geometrickou grafikou.

# Detail nápadu

Hráč se objeví uprostřed obrazovky, kolem něj se budou objevovat nepřátelské
lodě, které musí sestřelovat. Pro zvíšení obtížnosti nebude použita automatická
střelba, jako například ve hře Geometry Wars, ale bude nutné každý projektil
vystřeli samostatně. Nepřátelé se budou objevovat z náhodných směrů, při
dostatku času by mohlo být zajímavé generovat různé druhy grafické reprezentace
nepřátelských lodí (například N uhelníky).

Bude-li to možné, mohli by být hezké generovat mřížku deformovanou loďmy,
střelbou a případnými výbychy, bude-li to příliš komplikované dokončit v dostupném
čase, programově generované pozadí by mohlo být taktéž zajímavou volbou.

# Assety

Obrázek střely převzat z internetu:
https://github.com/godotrecipes/2d_shooting

Hudba na pozadí převzata z internetu:
https://www.fesliyanstudios.com/royalty-free-music/downloads-c/8-bit-music/6
Skladba `8bit menu`, autor David Renda

Zvuk střelby převzat z internetu:
https://pixabay.com/sound-effects/search/shoot/
Laser Gun

# Obrazovky

## Herní pole

Hra se skládá pouze z herní obrazovky, při smrti je resetována do výchozího
stavu. Tento krok byl zvolen pro zvýraznění retro charakteru návrhu a pro
mírnou frustraci z obtížnosti a nekonečnosti přílivu nepřátel.

## Konec hry

Při smrti hráče se zobrazí obrazovka s nápisem Game Over, prosvítá herní
pole, score a uživatel může začít novou hru.
