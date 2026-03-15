% --- FAKTA DASAR ---

% Susi adalah korban
korban(susi).

% Jenis kelamin (sex(Subjek, Gender))
sex(susi, perempuan).

% Fakta Meninggal
meninggal(susi).

% Relasi Mengenal (mengenal(X, Y))
mengenal(jono, susi).
mengenal(suryo, susi).
mengenal(susi, toni).
mengenal(susi, jono).

% Relasi Membenci (membenci(X, Y))
membenci(jono, susi).
membenci(suryo, toni).
membenci(toni, jono).

% --- ATURAN INFERENSI ---

% 1. Si pembunuh mengenal korban.
% 2. Korban mengenal seseorang yang membenci pembunuh tersebut.
pembunuh(X) :-
    korban(K),
    mengenal(X, K),             % Pembunuh mengenal korban
    mengenal(K, Seseorang),     % Korban mengenal seseorang
    membenci(Seseorang, X),     % Seseorang itu membenci si pembunuh
    X \= K.                     % Pembunuh bukan si korban itu sendiri