with ada.Text_IO, ada.Integer_Text_IO, gestion_kdo, gestion_activite, gestion_igloo, gestion_locataire; --gestion_elfes
use ada.Text_IO, Ada.Integer_Text_IO, gestion_kdo, gestion_activite, gestion_igloo, gestion_locataire; --gestion_elfes
procedure Main is
   T : T_stock;
   I : T_registre_igloo;
   A : T_registre_activite := (others => (others => 8));
begin

   put("bien le bonjour ! Que voulez vous faire ?"); new_line;

     put_line("g�rer r�servation");
   put_line("g�rer igloo");
   put_line("g�rer elfes");
   put_line("g�rer stock cadeaux");

   put_line("saisissez votre choix!");
-- visualisation_act(A);
  -- construction(I);
 --  visualisation(I);
  saisie_kdo(T);

   affichage_kdo(T);
   reappro_KDO(T);


end Main;
