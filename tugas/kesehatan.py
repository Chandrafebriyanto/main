umur = int(input("masukan umur anda: "))
darah = int(input("masukan tekanan darah anda: "))

if umur >= 60 and darah >140:
    print("status kesehatan: tinggi")
elif umur >= 60 and darah <= 140:
    print("status kesehatan: normal")
elif umur < 40 and darah > 130:
    print("status kesehatan: tinggi")
elif umur <60 and darah <= 130:
    print("status kesehatan: normal")
    