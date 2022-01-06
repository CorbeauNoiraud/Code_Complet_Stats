clear all
close all 
clc
 
J = 200; %nb de parties
JJ = 0; 
JJJ = 200; %Groupe de partie
Moyennes = [];
 
 
 for i = 1:JJJ ; 
     JJ = 0 ;
     Tot= 0;
     G = 0; %nb de parties gagnées
     Per = 0;
      Ar2 = [];
       Rtemp = [];
       U = 0;
 
for j = 1:J ; 
    
    A = 6 ; %Argent (Fortune)
    Ar = 6;
    P = A ;
    M = 1;  %Mise de départ
    L = 0 ;
    K = 0;
    JJ = JJ + 1 ;
    
    while L~=1 & A>=M
        L = randi([0,1]) ;
        
      if L == 1
             A = A + M  ;
       
        X = ['Il vous reste ',num2str(A),' euros.'] ;
        
        Y = ['Vous avez gagné ',num2str(A-P),' euro(s).'] ;
      
        G = G + 1 ;
            Tab2 = ['Vous avez gagné au total ',num2str(G),' fois.'] ;
            
            break
             end
            
        A = A - M ;
            X = ['Il vous reste ',num2str(A),' euros.'] ;
       
        M = 2 * M ;
            X = ['Vous misez ',num2str(M),' euros.']  ;
     
       
        if A < M 
            X = ['Il ne vous reste plus assez d''argent pour miser.'] ;
       
         K = K + 1;
        Tab = ['Vous avez perdu au total ',num2str(K),' fois.'] ;
            
             Per = Ar - A ;
        Tab4 = ['Vous avez perdu au total ',num2str(Per),' euros.'] ;
         Ar2 = [Ar2;Per] ;
             break 
        end
        
             
    end
    
 
 
 Ar3 = sum(Ar2) ; %Somme de l'argent perdue (au total)
  Tot = (G - Ar3) ;
  
 U = G/JJ ;
 Rtemp = [Rtemp;U] ;
 Tab3 = ['La fréquence de gain en fonction du nombre de partie est de ',num2str(U),' .'] ;
 
end 
Moy = Tot/J ;
Moyennes = [Moyennes;Moy]  ;%Moyenne/Nombre de partie   
 end 




figure(3);
hist(Moyennes,J);
title('Histogramme des fréquences d''apparition en fonction de la moyenne')
xlabel('moyenne')
ylabel('Fréquences d''apparition')

Tab5 = ['Vous avez gagné ',num2str(Tot),' euros.'] ;

figure(4);
n= 1:JJ ;
plot(n,Rtemp(n),'r+') ;
title('Probabilité de gagner pour une fortune de 6 € ')
xlabel('Nombres de parties')
ylabel('Probabilité')
axis([0 J 0 1]) ;
 




