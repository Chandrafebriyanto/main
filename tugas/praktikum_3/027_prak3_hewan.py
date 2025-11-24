class Hewan:
    def bersuara(self):
        print("Hewan bersuara...")

class Kucing(Hewan):
    def bersuara(self):
        print("Kucing: Meong...") 

class Anjing(Hewan):
    def bersuara(self):
        print("Anjing: Guk guk...") 

class Burung(Hewan):
    def bersuara(self):
        print("Burung: Cuit cuit...") 

daftar_hewan = [Kucing(), Anjing(), Burung()]
for hewan in daftar_hewan:
    hewan.bersuara()