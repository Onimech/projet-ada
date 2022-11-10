with ada.Text_IO, ada.Integer_Text_IO, outils;
use ada.Text_IO, ada.Integer_Text_IO, outils;
package body gestion_igloo is



   procedure construction (Ri : out T_registre_igloo ) is
      Id : Integer;
      IDpareil : boolean;
      Capa : int6;
      position : Integer;

   begin
      loop
         put("quel est l'Id de l'igloo construit ?"); saisie_secur_entier(Id);
         IDpareil := false;
         position := 1;
      for i in Ri'range loop
            if Ri(I).IdIgloo = Id then IDpareil := True; exit;
        end if;

            end loop;
         if IDpareil then
              put(" Id déjà associé à un Igloo dans le registre, recommencez"); new_line;
         else put("possible d'ajouter l'igloo dans le registre"); new_line; exit;
         end if;

      end loop;
      for i in Ri'range loop
         if Ri(i).IdIgloo >= 0 then position := i;
         end if;
           end loop;
      -- manque la valeur de position
      put(position);
      Ri(position).IdIgloo := ID;

      -- gestion_igloo.adb:27 index check failed . pourquoi cette erreur ?
      loop
      put("quel est la capacité de l'igloo? elle doit être 2, 4, ou 6");  saisie_secur_entier(capa);
      if capa = 2 or capa = 4 or capa = 6 then exit;
         else put("capacité n'est pas 2, 4 ou 6, recommencer"); new_line;
         end if;
      end loop;

      Ri(position).Capa_Igloo := Capa;
     -- gestion_igloo.adb:36 index check failed pourquoi erreur aussi ?"

   -- (?intialiser nb de locataire et liste avec des valeurs sentinelles ?


   end construction;


  procedure visualisation (Ri : in t_registre_igloo) is
   begin


      for i in Ri'range loop
         if Ri(i).IdIgloo > 0 then
            put("Igloo n°"); put(i); new_line;
         put("Id de l'igloo : "); put(Ri(i).IdIgloo); new_line;

         put("capacité"); put(Ri(i).Capa_Igloo); new_line;
         end if;
           -- aller voir prof pour ça
         -- afficher locataire peut_etre ?
null;
   end loop;



   end visualisation;

      Procedure reservation (Ri : in out T_registre_igloo; Rl : in out T_locataire) is
       NbP, capa_recherche : Int6;

   begin


      put("pour combien de personnes voulez vous réserver un igloo? Entre 1 et 6 personnes"); get(NbP); skip_line;-- saisie_secur_entier

      case Nbp is
         when 1|2 => capa_recherche := 2; put_line("on recherche pour vous un igloo avec 2 couchages");

         when 3|4 => capa_recherche := 4; put_line("on recherche pour vous un igloo avec 4 couchages");

         when 5|6 => capa_recherche := 6; put_line("on recherche pour vous un igloo avec 6 couchages");
      end case;

      -- recherche dans le registre des igloo avec pour capacité = capa_recherche

      for i in Ri'range loop
         if Ri(i).Capa_Igloo = capa_recherche then null;-- booléen recherche = true
         end if;
         end loop;

   -- chercher dans le registre si possible ou non :
   -- pas sûr pour ça : si on demande pour 2, recherche igloo à 2 places, si pas de 2 places dispo, recherche pour 4 etc etc
   -- si dispo, on enregistre l'igloo comme reservé et on fait maj dans l'igloo, demande des identités de tous les locataires
                          -- choix cadeau? mise à jour des stocks, aléatoire en fonction des proportions dans les stocks

   end reservation;

      procedure verif (Ri : in T_registre_igloo; verif : out Boolean) is
begin
   null;

   -- verification que le locataire est bien dans le registre igloo (il fait déjà parti d'une réservation)

   -- verif = true si bien dans le registre
    end verif;

   end gestion_igloo;
