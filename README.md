# ProjetCIR

## Partie WEB

Le contenu du site est disponible à l'url suivante : localhost/ **Nom du dossier** /index.php.

  L'intégralité du site est disponible à cette addresse.  
  **Nom du dossier** correspond au nom que vous aurez choisi pour le dossier parent du projet.

  L'accès à la connexion de la base de données peut-être configuré grâce au fichier conf.php disponible à la racine du projet.

## Partie JAVA

Les commandes pour l'éxécution du programme java sont les suivantes :
````php
  shell_exec("javac main.java");
  exec("java -cp \"mysql-connector-java-5.1.39-bin.jar\":. main ".$depart." ". $arrivee." ".$db_name." ". $db_user." ".$db_pass." ". $db_host , $res);
```
  Les résultats sont récupérés dans le terminal et traités ensuite en php
