https://brite2.herokuapp.com/

Clone du site Eventbrite codé en ruby on rails.

- Stripe installé
- Ajout d'images pour les évenements installé via ActiveRecord (hébergées seulement 24h sur Heroku)
- Theme bootstrap installé sur la page d'accueil via Asset Pipeline
_________________

A faire 
- Modif infos profil (prénom/nom/description)
- Evenements gratuit
- Photo profil utilisateur
- Theme bootstrap sur toutes les pages
- Espace admin


_________________




Pour lancer la version local, comme d'habitude :
```
bundle install, rails db:drop, rails db:create, rails db:migrate, rails db:seed, rails s
http://localhost:3000/
```
