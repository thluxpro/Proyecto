



Audio1 = "iuiuiuiu 8,34.wav"
Audio2 ="iuiuiuiu 13,30.wav"
Frec1= waves.read(Audio1)
ASon1 = waves.read(Audio1)
Frec2= waves.read(Audio2) 
ASon2 = waves.read(Audio2)
ASliWin = []
TamaArray1 = len(ASon1)
TamaArray2 = len(ASon2)
Tamano1 = np.shape(ASon1)
Tamano2 = np.shape(ASon2)
TamEnSeg1 = len(Tamano1)
TamEnSeg2 = len(Tamano2)
VDeSon1 = [TamEnSeg1]
VDeSon2 = [TamEnSeg2]

function MuestraDeVectores(VDS1, VDS2)
    print(VDS1)
    print(VDS2)
endfunction
function ComparacionDeVectores(VDS1, VDS2, F1, F2, AS1, AS2, T1, T2, TES1, TES2)
    comparacion = []
    item = 0
    for i = (TES1)
        for j = (TES2)   
            comparacion.append(item)
         end
    end
            if (F1 ~= F2)
                print('Tienen frecuencia distinta')
            #elif (T1 <> T2):
                #print ('Tienen diferente tamaño')
            elif (len(comparacion) > 0)
                print('Son distintos vectores')
                print(comparacion)
            endif
endfunction                
function MostrandoArrays(AS1, AS2)
    for i = zip(AS1)
        print(AS1(i))
    for j = zip(AS2)
        print(AS2(j))
     end
  end   
endfunction        
function SliWin(AS1, AS2, TA1, TA2)
    for i = range(TA1)
        for j = range(TA2)
            if ((AS1(i).all ~= AS2(j)).all) 
                print ("Son diferentes")
            else
                print("Son iguales")
            endif
        end
    end    
endfunction                
function MostrandoArraySliWindows(AS1, AS2, ASW, TA1, TA2)
    for i = range(TA1)
        for j = range(TA2)
            if ((AS1(i).all  == AS2(j).all))
                ASW(i) = AS1(i)             
                print(ASW)
                
            else
                print("no hay valores parecidos")
            endif
        end
    end
        


 endfunction   
#MuestraDeVectores(VDeSon1, VDeSon2)
#ComparacionDeVectores(VDeSon1, VDeSon2, Frec1, Frec2, ASon1, ASon2, Tamano1, Tamano2, TamEnSeg1, TamEnSeg2)
#MostrandoArrays(ASon1, ASon2)
#SliWin(ASon1, ASon2, TamaArray1, TamaArray2)
MostrandoArraySliWindows(ASon1, ASon2, ASliWin, TamaArray1, TamaArray2)