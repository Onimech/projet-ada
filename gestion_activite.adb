with ada.Text_IO, ada.Integer_Text_IO, outils, gestion_igloo;
use ada.Text_IO, ada.Integer_Text_IO, gestion_igloo;

package body gestion_activite is
   procedure resa_activite (Ra : in out T_registre_activite; Act_Loca : out T_act_semaine) is -- visualisation de T_registre_activite pour voir si place dans la réservation (pour ça in out)
      nom, prenom : t_mot;

   begin
      null;
      put("entrez votre prénom :"); get(prenom); skip_line;
      put("entrez votre nom"); get(nom); skip_line;
      -- verif igloo = true
      -- verif act = false

      -- chaque jour, choix d'une activité, une personne peut choisir de ne rien faire, mais ne peut pas faire la même chose deux fois dans la même semaine
      -- à chaque choix, verifier le nombre de place dans le registre activite (8 places max par act)




      -- voulez vous assister à la veillée ? oui ou non, mise à jour du booléen dans locataire

     end resa_activite;

   -- procedure modification







   procedure visualisation_act (Ta : in T_registre_activite) is
      begin
      for i in T_jour loop
          new_line;  put(T_jour'image(i)); put(" :"); new_line; put("places restantes : "); new_line; new_line;
         for j in T_activite  loop
put(T_activite'image(j)); put(" : ");
            put(Ta(j,i),1); new_line;

      end loop;
      end loop;
   end visualisation_act;

  end gestion_activite;
