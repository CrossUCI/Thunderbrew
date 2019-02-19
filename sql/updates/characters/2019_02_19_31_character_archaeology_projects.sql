alter table `character_archaeology_projects` 
   change `project` `project` int(10) UNSIGNED default '0' NOT NULL,
   drop primary key, 
   add primary key(`guid`, `project`);