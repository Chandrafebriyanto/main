import cv2
import numpy as np
import HandTrackingModule as htm
import time
import autopy
import win32api, win32con, win32gui
from pywinauto.findwindows    import find_window
import keyboard
import winsound

wCam, hCam = 640, 480
frameR = 50
smoothening = 5


font = cv2.FONT_HERSHEY_TRIPLEX
textNow = ["Pointer", "Next Slide", "Previous Slide", "Closing Slide", "Opening Slide"]

size = []

for text in textNow:
    # size.append(text)
    textsize = cv2.getTextSize(text, font, 2, 2)[0]
    textX = (wCam - textsize[0]) // 2
    textY = ((hCam + textsize[1]) // 2) - 200
    size.append((textX, textY))

plocX, plocY = 0, 0
clocX, clocY = 0, 0

cap = cv2.VideoCapture(2)
cap.set(3, wCam)
cap.set(4, hCam) 

pTime = 0

detector = htm.handDetector(maxHands=1)

wScr, hScr = autopy.screen.size()

isHold = False
isNext = False
isBefore = False
isOpen = False
isClose = False


while 1:

    
    ret, img = cap.read()
    img = cv2.flip(img, 1)

    
    
    img = detector.findHands(img)
    lmList, bbox = detector.findPosition(img)

    if len(lmList) == 0:

        # print('Keadaan Jari saat tidak sliding',finger)
        isNext = False
        isBefore = False
        isOpen = False
        isHold = False
        isClose = False


    if len(lmList) !=0:
        x1, y1 = lmList[8][1:]
        x2, y2 = lmList[12][1:]

        finger = detector.fingerUp()
        # print(finger)


        cv2.rectangle(img, (frameR, frameR), (wCam - frameR, hCam-frameR), (255,255,255),2)
        
        if finger[0] == 1 and finger[1] == 1  and finger[2]  == 0 and finger[3]  == 0  and finger[4]  == 0:
            cv2.putText(img, "Pointer", size[0], cv2.FONT_HERSHEY_TRIPLEX, 2, (0, 0, 255), 2)
            if not isHold:
                keyboard.press_and_release('ctrl+l')
                isHold = True
                isBefore = False
                isNext = False
                winsound.PlaySound('./assets/mouse.wav',  winsound.SND_FILENAME | winsound.SND_ASYNC)    

            x3 = np.interp(x1, (frameR, wCam-frameR), (0, wScr))
            y3 = np.interp(y1, (frameR, hCam-frameR), (0, hScr))


            clocX = plocX +(x3 - plocX) / smoothening
            clocY = plocY +(y3 - plocY) / smoothening
            autopy.mouse.move(clocX, clocY)
            plocX, plocY = clocX, clocY

            cv2.circle(img, (x1, y1), 15, (0, 0, 255), cv2.FILLED)


        if finger[0] == 0 and finger[1] == 1  and finger[2]  == 1 and finger[3]  == 1  and finger[4]  == 1:
            cv2.putText(img, 'Next Slide', size[1], cv2.FONT_HERSHEY_TRIPLEX, 2, (0, 0, 255), 2)
            if not isNext:
                keyboard.press_and_release('right_arrow')
                isNext = True
                isHold = False
                isBefore = False
                winsound.PlaySound('./assets/next.wav',  winsound.SND_FILENAME | winsound.SND_ASYNC)    


        if finger[0] == 1 and finger[1] == 1  and finger[2] == 0 and finger[3] == 0  and finger[4] == 1:
            cv2.putText(img, 'Previous Slide', size[2], cv2.FONT_HERSHEY_TRIPLEX, 2, (0, 0, 255), 2)
            if not isBefore:
                keyboard.press_and_release('left_arrow')
                isBefore = True
                isHold = False
                isNext = False
                winsound.PlaySound('./assets/previous.wav',  winsound.SND_FILENAME | winsound.SND_ASYNC)    


        if finger[0] == 0 and finger[1] == 0  and finger[2] == 0 and finger[3] == 0  and finger[4] == 1:
            cv2.putText(img, 'Closing Slide', size[3], cv2.FONT_HERSHEY_TRIPLEX, 2, (0, 0, 255), 2)
            if not isClose:
                if isHold:
                    keyboard.press_and_release('ctrl+l')
                keyboard.press_and_release('esc')
                isClose = True
                isHold = False
                winsound.PlaySound('./assets/keluar.wav',  winsound.SND_FILENAME | winsound.SND_ASYNC)    
                
        if finger[0] == 0 and finger[1] == 0  and finger[2] == 1 and finger[3] == 1  and finger[4] == 1:
            cv2.putText(img, 'Opening Slide', size[4], cv2.FONT_HERSHEY_TRIPLEX, 2, (0, 0, 255), 2)
            if not isOpen:
                keyboard.press_and_release('f5')
                isOpen = True
                isHold = False
                winsound.PlaySound('./assets/menampilkan.wav',  winsound.SND_FILENAME | winsound.SND_ASYNC)    


        
    cTime = time.time()
    fps = 1 / (cTime - pTime)
    pTime = cTime
    

    if cv2.waitKey(27) & 0xFF == ord('q'):
        break


    cv2.imshow('Camera',img)
    cv2.waitKey(1)

