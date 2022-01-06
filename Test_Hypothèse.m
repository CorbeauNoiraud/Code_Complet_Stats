clear 
clc
close all
% demander le nombre de partie jouée(s)
J = input('Combien de parties voulez-vous lancer:');
disp(['Vous voulez jouer ',num2str(J),' parties.'])

% faire un pile ou face
s=randi([0,1],1,J);
ss=sum(s);

% gagner
disp(['Vous avez gagné ',num2str(ss),' fois.'])

% perdre
p=J-ss;
disp(['Vous avez perdu ',num2str(p),' fois.'])

% trouver la valeur X
X=ss/J;
disp(['La valeur de X est de ',num2str(X),'.'])

% conformité de X dans l'intervalle: 0.4105≤X ̅≤0.5894
if X <=0.5894
    if X>=0.4105
        Z=input('Le jeu n''est pas truqué')
    else 
        ZZ=input('Le jeu est truqué')
    end
else
    ZZ=input('Le jeu est truqué')
end

    
