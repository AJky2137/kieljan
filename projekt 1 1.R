 #Wstęp
casino_royale = function() {
cat("\n")
cat("WITAJ W CASINO ROYALE \n\n\n")
cat("Eden to Hazard, ale czy hazard to eden?\n\n")
cat("Zakończ przygodę z małą fortuną, szkoda, że wkraczasz w nią z dużą.\n")
cat("Przekonaj się na własnej skórze jak to jest przegrywać.\n")
cat("Lub wygrywać, ale pamiętaj chytry traci dwa razy!\n\n")

cat("Zacznijmy więc, czego potrzebujesz w kasynie?\n")
cat("Oczywiście, że szczęścia jednak narazie pomińmy ten aspekt\n")
cat("Zdobądź pieniądze i zacznij obstawiać\n")
cat("Jak pozyskujesz środki?\n\n")

 #Wybór klasy
cat("#1. Wybór ścieżki\n")

cat("1. Pożyczasz od znajomego - 4,000zł\n")
cat("2. Wyjeżdzasz na tydzień do Niemiec do pracy - 5,000zł\n")
cat("3. Zabierasz swoje ostatnie oszczędności - 3,500zł\n")
cat("4. Sprzedajesz złotą biżuterię po babci - 4,500zł\n")
cat("5. Zostawiasz samochód pod zastaw - 5,500zł\n")

get_money <- as.numeric(readline("Wybierz metodę pozyskania środków (wpisz 1, 2, 3, 4 lub 5): "))
cat("\n")
#Każda wartość w przedziale 1-5, mental wart. 5 = najwyższa, skutki_ryzyka wart. 1 = najwyższa

if (get_money == 1) {
  mental = 3
  skutki_ryzyka = 2
  szczescie = sample(1:4, size = 1)
  pieniadze = 4000
  cat(paste("Wybrałeś ścieżkę numer", get_money, ". Posiadasz", mental, "punkty mentalu,", skutki_ryzyka, "punkty ryzyka i" , pieniadze, "złotych\n"))
} else if (get_money == 2) {
  mental = 3
  skutki_ryzyka = 2
  szczescie = sample(1:4, size = 1)
  pieniadze = 5000
  cat(paste("Wybrałeś ścieżkę numer", get_money, ". Posiadasz", mental, "punkty mentalu,", skutki_ryzyka, "punkty ryzyka i", pieniadze, "złotych\n"))
} else if (get_money == 3) {
  mental = 2
  skutki_ryzyka = 1
  szczescie = sample(3:4, size = 1)
  pieniadze = 3500
  cat(paste("Wybrałeś ścieżkę numer", get_money, ". Posiadasz", mental, "punkty mentalu,", skutki_ryzyka, "punkt ryzyka i", pieniadze, "złotych\n"))
} else if (get_money == 4) {
  mental = 1
  skutki_ryzyka = 1
  szczescie = sample(5, size = 1)
  pieniadze = 4500
  cat(paste("Wybrałeś ścieżkę numer", get_money, ". Posiadasz", mental, "punkt mentalu,", skutki_ryzyka, "punkt ryzyka i" , pieniadze, "złotych\n"))
} else if (get_money == 5) {
  mental = 2
  skutki_ryzyka = 1
  szczescie = sample(3:4, size = 1)
  pieniadze = 5500
  cat(paste("Wybrałeś ścieżkę numer", get_money, ". Posiadasz", mental, "punkty mentalu,", skutki_ryzyka, "punkt ryzyka i" , pieniadze, "złotych\n"))
} else {
  cat("Niepoprawny wybór. Gra zostanie zakończona.\n")
return()
}

cat("Dokonałes wyboru - obyś był z niego dumny, tego wyboru nie można cofnąć. \n")
cat("Możliwe punkty mentalu -w zależności od radykalnych kroków podjętych wczesniej - to 1-5 z czego 5 to max. \n")
cat("Punkty szczęścia niech narazie  pozostaną tajemnicą...\n")
cat("Zaś punkty ryzyka to inna bajka - 1 to wartość najwyższa, uważaj na to. \n")
cat("Każda cecha ma realny wpływ na rozgrywkę.\n\n")

cat("Zasady są proste:\n")
cat("Stracisz wszystkie pięniadzę - przegrywasz.\n\n")
 
#Wybór gry
cat(" #2. Wybór gry.\n")
cat("Dobrze zatem, czas wybrać w grę w której podwoisz swój majątek\n\n")
cat("1. Ruletka\n")
cat("2. Jackpot\n")
cat("3. placeholder\n")


wybor_gry <- as.numeric(readline("Wybierz grę (wpisz 1, 2 lub 3): "))
cat("\n")

if (wybor_gry == 1) {
  cat("A więc wybrałes ruletke. Czas na wiele zabawy i pieniędzy!\n\n")
} else if (wybor_gry == 2) {
  cat("jackpot-placeholder\n")
} else if (wybor_gry == 3) {
  cat("placeholder-placeholder\n")
} else {
  cat("Niepoprawny wybór. Gra zostanie zakończona.\n")
  return()
}

#Ruletka
ruletka = if (wybor_gry == 1) {
cat("#3. Ruletka.\n\n")
cat("Czas usiąść do stołu, rozeznać się wśród potencjalnych oponentów i obmyślic plan.\n")
cat("Albo losowo obstawiać jak tylko dusza zapragnie.\n ")
cat("W obydwóch przypadkach musisz liczyć na Bożą łaskę.\n\n")
cat("Obstawiaj: konkretną liczbę, dwunastki albo pola czarne, czerwone bądź też zielone i wygrywaj!\n\n")
cat("To jak, ile obstawisz?\n")
a = c(1, 3, 5, 7, 9, 12, 14, 16, 18, 19, 21, 23, 25, 27, 30, 32, 34, 36)
b = c(2, 4, 6, 8, 10, 11, 13, 15, 17, 20, 22, 24, 26, 28, 29, 31, 33, 35)
c = 0
obstawianie_1_pieniadze <- as.numeric(readline("Wpisz liczbę pieniędzy: "))
if (obstawianie_1_pieniadze < 500){
  cat("Zbyt mała stawka, podaj większą sumę")
  obstawianie_1_pieniadze <- as.numeric(readline("Wpisz liczbę pieniędzy: "))
}
cat("\n")
cat("A teraz wybierz na co:\n")
obstawianie_1_cyfry <- as.numeric(readline("Wpisz konkretną liczbę (1-36), albo ,,40'' jeśli chcesz przejść do obstawienia dwunastek lub jakąkolwiek liczbę powyżej 40 aby obstawić pola: "))
cat("\n")
 
if (obstawianie_1_cyfry %in% 1:36)  {
  cat("\n")
  cat("Krupier mówi Rien ne va plus\n\n")
  Sys.sleep(1)
  cat("*Krupier rzuca kulką*\n\n")
  Sys.sleep(3)
  obstawianie_1_wynik = sample(0:36, size = 1)
  print(obstawianie_1_wynik)
 
if (obstawianie_1_cyfry == obstawianie_1_wynik) {
  cat("wygrana")
  pieniadze = pieniadze + (obstawianie_1_pieniadze * 2.5)
  cat(paste("Twoje pieniądze teraz to:", pieniadze))
} else {
  cat("przegrana\n")
  pieniadze = pieniadze - (obstawianie_1_pieniadze)
  cat(paste("Twoje pieniądze teraz to", pieniadze,"\n\n"))
}
}
if (obstawianie_1_cyfry == 40){
  cat("Wpisz 1 dla liczb 1:12\n")
  cat("Wpisz 2 dla liczb 13:24\n")
  cat("Wpisz 3 dla liczb 25:36\n")
  obstawianie_1_dwunastki <- as.numeric(readline("Wpisz 1, 2 lub 3: ")) 
  cat("\n")
  cat("Krupier mówi Rien ne va plus\n\n")
  Sys.sleep(1)
  cat("*Krupier rzuca kulką*\n\n")
  Sys.sleep(3)
  obstawianie_1_wynik = sample(0:36, size = 1)
  print(obstawianie_1_wynik)
 
   if (obstawianie_1_dwunastki == 1) {
  if(obstawianie_1_wynik %in% 1:12) {
    cat("Wygrana\n")
    pieniadze = pieniadze + (obstawianie_1_pieniadze * 2)
    cat(paste("Twoje pieniądze teraz to:", pieniadze))
}  else {
      cat("Przegrana\n")
  pieniadze = pieniadze - (obstawianie_1_pieniadze)
  cat(paste("Twoje pieniądze teraz to", pieniadze,"\n\n"))
}      
  }
  if (obstawianie_1_dwunastki == 2) {
    if(obstawianie_1_wynik %in% 13:24) {
      cat("Wygrana\n")
      pieniadze = pieniadze + (obstawianie_1_pieniadze * 2)
      cat(paste("Twoje pieniądze teraz to:", pieniadze))
    }  else {
      cat("Przegrana\n")
      pieniadze = pieniadze - (obstawianie_1_pieniadze)
      cat(paste("Twoje pieniądze teraz to", pieniadze,"\n\n"))
  
    }
  }
  if (obstawianie_1_dwunastki == 3) {
    if(obstawianie_1_wynik %in% 25:36) {
      cat("Wygrana\n")
      pieniadze = pieniadze + (obstawianie_1_pieniadze * 2)
      cat(paste("Twoje pieniądze teraz to:", pieniadze))
    }  else {
      cat("Przegrana\n")
      pieniadze = pieniadze - (obstawianie_1_pieniadze)
      cat(paste("Twoje pieniądze teraz to", pieniadze,"\n\n"))
    }
  }
}
if (obstawianie_1_cyfry > 40) {
  cat("Wpisz 1 dla pola czerwonego\n")
  cat("Wpisz 2 dla pola czarnego\n")
  cat("Wpisz 3 dla pola zielonego\n")
  obstawianie_1_pola <- as.numeric(readline("Wpisz 1, 2 lub 3: "))
  cat("\n")
  cat("Krupier mówi Rien ne va plus\n\n")
  Sys.sleep(1)
  cat("*Krupier rzuca kulką*\n\n")
  Sys.sleep(3)
  obstawianie_1_wynik = sample(0:36, size = 1)
  print(obstawianie_1_wynik) 
 
 if (obstawianie_1_pola == 1) {
 if (obstawianie_1_wynik %in% any(as.logical(c(1, 3, 5, 7, 9, 12, 14, 16, 18, 19, 21, 23, 25, 27, 30, 32, 34, 36)))) {
  cat("w koncu dziala czerwone\n")
} else {
  cat("nieelo\n")
} 
}   
  if (obstawianie_1_pola == 2) {
  if (obstawianie_1_wynik %in% any(c(2, 4, 6, 8, 10, 11, 13, 15, 17, 20, 22, 24, 26, 28, 29, 31, 33, 35))) {
  cat("w koncu dziala czarne\n")
} else {
  cat("czarne dzialaja\n")
} 
}    
  if (obstawianie_1_pola == 3) {
  if (obstawianie_1_wynik == 0) {
  cat("w koncu dziala zielone\n")
} else {
  cat("zielone chociaz dziala\n")
}
}
}

cat("beee\n")
}
}











#Jackpot








