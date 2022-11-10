with outils;
  use outils;
package gestion_activite is

   Type T_activite is (raquette, patinoire, traineau, atelier_biscuit, atelier_deco, atelier_igloo, rennes, visite);
   Type T_registre_activite is array (T_activite, T_Jour) of integer;

   Type T_act_semaine is array (T_jour) of T_activite;

   procedure resa_activite (Ra : in out  T_registre_activite; Act_Loca : out T_act_semaine );
   procedure visualisation_act (Ta : in T_registre_activite);
end gestion_activite;
