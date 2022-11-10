package outils is
subtype T_mot is string(1..20);
Type T_jour is (lundi, mardi, mercredi, jeudi, vendredi);
   NbI : integer := 0;
   NbE : integer;

   subtype Int6 is integer range 1..6;
   procedure saisie_secur_entier (N : out integer);
end outils;
