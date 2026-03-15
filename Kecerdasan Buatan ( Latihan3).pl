% --- FAKTA ---
laki(rudi).
laki(roy).
laki(ali).
laki(sukri).
laki(budi).
laki(jaya).

perempuan(asiah).
perempuan(uun).
perempuan(nuni).
perempuan(imas).
perempuan(siti).

menikah(rudi, asiah).
menikah(asiah, rudi).
menikah(roy, uun).
menikah(uun, roy).
menikah(nuni, ali).
menikah(ali, nuni).
menikah(imas, budi).
menikah(budi, imas).

anak(roy, rudi).
anak(roy, asiah).
anak(ali, roy).
anak(ali, uun).
anak(imas, roy).
anak(imas, uun).
anak(siti, nuni).
anak(siti, ali).
anak(sukri, nuni).
anak(sukri, ali).
anak(jaya, imas).
anak(jaya, budi).

% --- ATURAN ---
orang_tua(P, C) :- anak(C, P).

kakek_nenek(GP, GC) :- orang_tua(GP, P), orang_tua(P, GC).

saudara(X, Y) :- orang_tua(P, X), orang_tua(P, Y), X \= Y.

% Ipar: Menikah dengan saudara, atau saudara dari pasangan
ipar(X, Y) :- menikah(X, S), saudara(S, Y).
ipar(X, Y) :- saudara(X, S), menikah(S, Y).

% Nenek Moyang (Rekursif)
nenek_moyang(A, D) :- orang_tua(A, D).
nenek_moyang(A, D) :- orang_tua(A, P), nenek_moyang(P, D).