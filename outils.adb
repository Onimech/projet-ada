with ada.Text_IO, ada.Integer_Text_IO, gestion_igloo;
use ada.Text_IO, ada.Integer_Text_IO, gestion_igloo;
package body outils is

--subtype T_mot is string(1..20);
--Type T_jour is (lundi, mardi, mercredi, jeudi, vendredi);
--NbI, NbE : integer;
--

   procedure saisie_secur_entier (N : out integer) is

   begin
      loop
         begin
            get(N); skip_line; exit;
         exception
            when data_error => skip_line; put_line("vous n'avez pas saisi un entier");
            when constraint_error => skip_line; put_line("l'entier saisie n'est pas compris dans l'intervalle voulu");
         end;
         end loop;


   end saisie_secur_entier;

   end outils;
