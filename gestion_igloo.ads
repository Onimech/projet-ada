with outils, gestion_locataire;
  use outils, gestion_locataire;

package gestion_igloo is





  Type Igloo is record
      IdIgloo : integer := -1;
      Capa_Igloo : integer;
      Nb_loc : integer;
      Loc : T_locataire;
      Loue : boolean;
   end record;

   Type T_registre_igloo is array (integer range 1..NbI) of Igloo;

   procedure construction(Ri : out T_registre_igloo);
   procedure visualisation(Ri : in T_registre_igloo);
   Procedure reservation (Ri : in out T_registre_igloo; Rl : in out T_locataire); --finir
   procedure verif (Ri : in T_registre_igloo; verif : out Boolean); -- finir
   end gestion_igloo;
