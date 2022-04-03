/*********************************************
 * OPL 12.6.0.0 Model
 * Author: saidm
 * Creation Date: 24 mars 2022 at 10:40:35
 *********************************************/

//lire dans un fichier le nb d'objet et le poids max
int nbVillei = ...; //déclarer le nombre des ville i
int nbVillej =...;  //déclarer le nombre des ville j

range Villei= 1..nbVillei; //déclarer un intervalle d'entiers de 1 à nbVillei
range Villej= 1..nbVillej; //déclarer un intervalle d'entiers de 1 à nbVillej

float Distance [Villei][Villej]=...; //déclarer de distance entre ville i ville j 
int Nbrhabitants [Villei]=...;  //déclarer le nombre d’habitants de la ville i

dvar boolean Perception[Villej]; // Déclarer les variables de décisions
dvar boolean depPerception[Villei][Villej]; // Déclarer les variables de décisions

// function objectif

minimize sum ( i in Villei , j in Villej )
Nbrhabitants[i]*Distance[i][j]*depPerception[i][j];


// contraintes
subject to
{
 			
sum( j in Villej ) Perception[j] == 3;

forall( j in Villej ){

sum( i in Villei)  depPerception[i][j] == 1;
}
}
