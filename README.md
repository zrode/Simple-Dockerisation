Le but ici est tout simplement de Dockeriser une application Spring Boot et d'afficher un message.

Clonez le projet puis lancez le build avec la commande :
sudo docker build -t sa-backend:0.0.1 .

Ensuite lancez le projet :
sudo docker run -p 9090:9090 sa-backend:0.0.1

Avant cela, assurez vous que maven utilise le bon jdk. 