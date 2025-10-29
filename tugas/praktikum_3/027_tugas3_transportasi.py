class Transportasi:
    def bergerak(self):
        print("Bergerak di...")

class Mobil(Transportasi):
    def bergerak(Self):
        print("Mobil bergerak di jalan raya")
        
class Kapal(Transportasi):
    def bergerak(Self):
        print("Kapal bergerak di laut")
class Pesawat(Transportasi):
    def bergerak(Self):
        print("Pesawat bergerak di udara")

daftar_kendaraan = [Mobil(), Kapal(), Pesawat()]
for kendaraan in daftar_kendaraan:
    kendaraan.bergerak() 