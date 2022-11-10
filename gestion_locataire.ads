with outils, gestion_kdo, gestion_activite ;
use outils, gestion_kdo, gestion_activite ;

package gestion_locataire is




   Type Locataire is record
      Nom : T_mot;
      prenom : T_mot;
      cadeau : T_cadeau;
      activite : T_act_semaine;
      veillee : boolean;

end record;

    Type T_locataire is array (integer range 1..50) of Locataire;

procedure decommander;









   end gestion_locataire;
