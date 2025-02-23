nilai = int(input("masukan nilai ujian anda: "))

if 90 <= nilai <= 100:
    print("feedback: sangat baik")
elif 80 <= nilai <= 89:
    print("feedback: baik")
elif 70 <= nilai <= 79:
    print("feedback: cukup")
elif 60 <= nilai <= 69:
    print("feedback: kurang")
elif nilai < 60:
    print("feedback: sangat kurang")

