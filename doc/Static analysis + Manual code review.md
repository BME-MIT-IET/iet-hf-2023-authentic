# Static analysis + Manual code review

## Manual code review

Manuális kód átvizsgálása során eltávolítottunk nem használt metódusokat, importokat és konstruktorokat.

## Static analysis

SonarCloud-ot nem tudtuk a repository-ra setupolni, mivel owner permission-ra van szükség. 

Codacy-ba importáltuk a repositoryt és átvizsgáltuk a kapott eredményeket, majd ez alapján végeztünk javítást, értem itt például if feltételek összevonását, felesleges és üres metódusok törlését.

Ezután a SonarLint IntelliJ extensiont telepítettük. A talált figyelmeztetéseket javítottuk. Pár javítási példa:
- többszörös Random példányosítás
- nem statikus metódus statikus adathoz való hozzáférése
- publikus konstruktor
- ...