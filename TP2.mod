/*********************************************
 * OPL 12.6.0.0 Model
 * Author: saidm
 * Creation Date: 24 mars 2022 at 10:40:35
 *********************************************/

//lire dans un fichier le nb d'objet et le poids max
int nbVillei = ...; //d�clarer le nombre des ville i
int nbVillej =...;  //d�clarer le nombre des ville j

range Villei= 1..nbVillei; //d�clarer un intervalle d'entiers de 1 � nbVillei
range Villej= 1..nbVillej; //d�clarer un intervalle d'entiers de 1 � nbVillej

float Distance [Villei][Villej]=...; //d�clarer de distance entre ville i ville j 
int Nbrhabitants [Villei]=...;  //d�clarer le nombre d�habitants de la ville i

dvar boolean Perception[Villej]; // D�clarer les variables de d�cisions
dvar boolean depPerception[Villei][Villej]; // D�clarer les variables de d�cisions

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
