with outils, gestion_locataire;
  use outils, gestion_locataire;

package gestion_igloo is
   Id : integer;
   IDpareil : boolean;
   Capa : int6;
   position : Integer;

  Type Igloo is record
      IdIgloo : integer;
      Capa_Igloo : integer;
      Nb_loc : integer;
      Loc : T_locataire;
      Loue : boolean;
   end record;

   Type T_registre_igloo is array (integer range 1..NbI) of Igloo;

   procedure construction(Ri : out T_registre_igloo);
   procedure visualisation(Ri : in T_registre_igloo);
   Procedure reservation (Ri : in out T_registre_igloo; Rl : in out T_locataire);
   procedure verif (Ri : in T_registre_igloo; verif : out Boolean);
   end gestion_igloo;
