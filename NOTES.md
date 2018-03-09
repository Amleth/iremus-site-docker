Injecter un dump SQL dans le container MariaDB :

	docker exec -i 7_db_1 mysql -u iremus -p drupal7 --password='coin' < lab0320sql0db.sql