USE zs30_dba;

--
-- Dumping data for table `role`
--
INSERT INTO `zs30_dba`.`role` (`id`, `role`) VALUES ('1', 'administrator');
INSERT INTO `zs30_dba`.`role` (`id`, `role`) VALUES ('2', 'business_analyst');
INSERT INTO `zs30_dba`.`role` (`id`, `role`) VALUES ('3', 'manager');
INSERT INTO `zs30_dba`.`role` (`id`, `role`) VALUES ('4', 'assistant');
INSERT INTO `zs30_dba`.`role` (`id`, `role`) VALUES ('5', 'intern');

--
-- Dumping data for table `user`
--
INSERT INTO `zs30_dba`.`user` (`id`, `username`, `password`) VALUES ('1', 'mina', 'mina');
INSERT INTO `zs30_dba`.`user` (`id`, `username`, `password`) VALUES ('2', 'edwin', 'edwin');
INSERT INTO `zs30_dba`.`user` (`id`, `username`, `password`) VALUES ('3', 'lina', 'lina');
INSERT INTO `zs30_dba`.`user` (`id`, `username`, `password`) VALUES ('4', 'nikola', 'nikola');
INSERT INTO `zs30_dba`.`user` (`id`, `username`, `password`) VALUES ('5', 'peter', 'peter');
INSERT INTO `zs30_dba`.`user` (`id`, `username`, `password`) VALUES ('6', 'laura', 'laura');
INSERT INTO `zs30_dba`.`user` (`id`, `username`, `password`) VALUES ('7', 'maria', 'maria');

--
-- Dumping data for table `user_in_role`
--
INSERT INTO `zs30_dba`.`user_in_role` (`user_id`, `role_id`) VALUES ('1', '4');
INSERT INTO `zs30_dba`.`user_in_role` (`user_id`, `role_id`) VALUES ('2', '3');
INSERT INTO `zs30_dba`.`user_in_role` (`user_id`, `role_id`) VALUES ('3', '2');
INSERT INTO `zs30_dba`.`user_in_role` (`user_id`, `role_id`) VALUES ('4', '3');
INSERT INTO `zs30_dba`.`user_in_role` (`user_id`, `role_id`) VALUES ('5', '1');
INSERT INTO `zs30_dba`.`user_in_role` (`user_id`, `role_id`) VALUES ('6', '2');
INSERT INTO `zs30_dba`.`user_in_role` (`user_id`, `role_id`) VALUES ('7', '5');

--
-- Dumping data for table `lookup_view`
--
INSERT INTO `zs30_dba`.`lookup_view` (`id`, `schema_name`, `name`, `description`) VALUES ('1', 'zs30_sakila', 'customer_list', 'A list of customers.');
INSERT INTO `zs30_dba`.`lookup_view` (`id`, `schema_name`, `name`, `description`) VALUES ('2', 'zs30_sakila', 'film_list', 'A formatted view of the film table');
INSERT INTO `zs30_dba`.`lookup_view` (`id`, `schema_name`, `name`, `description`) VALUES ('3', 'zs30_sakila', 'nicer_but_slower_film_list', 'A formatted view of the film table with actors in capital letters.');
INSERT INTO `zs30_dba`.`lookup_view` (`id`, `schema_name`, `name`, `description`) VALUES ('4', 'zs30_sakila', 'sales_by_film_category', 'A list of total sales, broken down by individual film category.');
INSERT INTO `zs30_dba`.`lookup_view` (`id`, `schema_name`, `name`, `description`) VALUES ('5', 'zs30_sakila', 'sales_by_store', 'A list of total sales, broken down by store.');
INSERT INTO `zs30_dba`.`lookup_view` (`id`, `schema_name`, `name`, `description`) VALUES ('6', 'zs30_sakila', 'staff_list', 'A list of all staff members, including address and store information.');

--
-- Dumping data for table `lookup_view_in_role`
--

-- no inserts for the administartor
-- inserts for manager
INSERT INTO `zs30_dba`.`lookup_view_in_role` (`lookup_view_id`, `role_id`) VALUES ('1', '3');
INSERT INTO `zs30_dba`.`lookup_view_in_role` (`lookup_view_id`, `role_id`) VALUES ('2', '3');
INSERT INTO `zs30_dba`.`lookup_view_in_role` (`lookup_view_id`, `role_id`) VALUES ('3', '3');
INSERT INTO `zs30_dba`.`lookup_view_in_role` (`lookup_view_id`, `role_id`) VALUES ('4', '3');
INSERT INTO `zs30_dba`.`lookup_view_in_role` (`lookup_view_id`, `role_id`) VALUES ('5', '3');
INSERT INTO `zs30_dba`.`lookup_view_in_role` (`lookup_view_id`, `role_id`) VALUES ('6', '3');

-- inserts for business analyst
INSERT INTO `zs30_dba`.`lookup_view_in_role` (`lookup_view_id`, `role_id`) VALUES ('1', '2');
INSERT INTO `zs30_dba`.`lookup_view_in_role` (`lookup_view_id`, `role_id`) VALUES ('2', '2');
INSERT INTO `zs30_dba`.`lookup_view_in_role` (`lookup_view_id`, `role_id`) VALUES ('3', '2');
INSERT INTO `zs30_dba`.`lookup_view_in_role` (`lookup_view_id`, `role_id`) VALUES ('4', '2');
INSERT INTO `zs30_dba`.`lookup_view_in_role` (`lookup_view_id`, `role_id`) VALUES ('5', '2');
INSERT INTO `zs30_dba`.`lookup_view_in_role` (`lookup_view_id`, `role_id`) VALUES ('6', '2');

-- inserts for assistant
INSERT INTO `zs30_dba`.`lookup_view_in_role` (`lookup_view_id`, `role_id`) VALUES ('1', '4');
INSERT INTO `zs30_dba`.`lookup_view_in_role` (`lookup_view_id`, `role_id`) VALUES ('2', '4');
INSERT INTO `zs30_dba`.`lookup_view_in_role` (`lookup_view_id`, `role_id`) VALUES ('3', '4');
INSERT INTO `zs30_dba`.`lookup_view_in_role` (`lookup_view_id`, `role_id`) VALUES ('4', '4');
INSERT INTO `zs30_dba`.`lookup_view_in_role` (`lookup_view_id`, `role_id`) VALUES ('5', '4');

-- inserts for intern
INSERT INTO `zs30_dba`.`lookup_view_in_role` (`lookup_view_id`, `role_id`) VALUES ('2', '5');
INSERT INTO `zs30_dba`.`lookup_view_in_role` (`lookup_view_id`, `role_id`) VALUES ('3', '5');
commit;

