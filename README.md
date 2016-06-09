# ProjetCIR

## Partie WEB

Une fois dézippé, il faut placer le dossier ProjetCIR dans le document Root de votre serveur. /var/www/html si vous utilisez apache sur Ubuntu.
  Le contenu du site est disponible à l'url suivante : localhost/ **Nom du dossier** /index.php.

  L'intégralité du site est disponible à cette addresse.   
  **Nom du dossier** correspond au nom que vous aurez choisi pour le dossier parent du projet.

  Vous devez créer une nouvelle base de données à l'aide de phpmyadmin (ou pas, au choix) et un nouvel utilisateur ayant au moins les droits pour faire un SELECT.
  Ensuite vous devez configurer le fichier conf.php en fonction de ce que vous avez créé auparavant.
  L'accès à la connexion de la base de données peut-être configuré grâce au fichier conf.php disponible à la racine du projet.

## Partie JAVA

Pour que le programme Java s'éxécute correctement, il est nécéssaire d'avoir dans le dossier "dijkstra" : **main.jar**.
  Si ce fichier n'est pas présent, voici la démarche à suivre pour le créer :
  -Supprimer l'intégralité des fichiers .class du dossier dijkstra :
```bash
  rm *.class 
```
  -Compiler le main.java :
```bash
  javac main.java 
```
  /!\ Il faut faire attention à la version de compilation (recommandé : 1.7) /!\
  -Vérifier que vous aviez bien un dossier **META-INF** contenant un fichier **MANIFEST.MF**.
  -Si ce n'est pas le cas, créez-les.
  -Le code qui doit se trouver dans **MANIFEST.MF** est le suivant :
```
  Main-Class: main
  Class-Path: lib/mysql-connector-java-5.1.39-bin.jar
  
```
  Attention, le retour chariot de la 3è ligne n'est pas à négliger.

  Ensuite, vous devez vous placer dans le dossier racine (**dijkstra**) puis en console, lancez l'instruction suivante :
```bash
  jar cvmf META-INF/MANIFEST.MF main.jar *
```
  Si des problèmes persistent, cela peut venir d'un problème d'accès aux fichiers, il sera donc nécessaire de modifier les droits des fichiers du dossier dijkstra
  en réalisant la commande suivante dans le dossier.
```bash
  chmod -R 777 * 
```
  
  La commande permettant l'éxécution de la partie java est la suivante :
```php
  exec("java -jar dijkstra/main.jar ".$depart." ". $arrivee." ".$db_name." ". $db_user." ".$db_pass." ". $db_host , $res);
```

  Les résultats sont récupérés dans le terminal et traités ensuite en php.
  les variables **depart** et **arrivee** correspondent aux points séléctionnés par l'utilisateur pour le guidage, et les variables db_* correspondent aux informations du fichier conf.php permettant la configuration de l'accès à la BDD.
