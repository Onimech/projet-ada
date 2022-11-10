package gestion_kdo is
      Type T_cadeau is (boisson, biscuit, chocolat, fruits);
   Type T_stock is array (T_cadeau) of integer;

   Procedure saisie_kdo (T : out T_stock);

   procedure affichage_kdo (T: in T_stock);

   procedure reappro_KDO (T: out T_stock);


end gestion_kdo;
