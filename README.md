https://brite2.herokuapp.com/


Salut j'ai fait le projet jusqu'à la view show de User.
Les mails sont envoyés depuis mon adresse gmail car sendgrid est peu fiable sur la longueur.

En local tout marche mais sur heroku j'ai une migration qui passe pas et je l'ai testé trop tard... J'ai mis les détails sur Slack si ca t'interesse. C'était une migration que je n'aurais pas du avoir besoin de faire car elle venait d'un oubli. Du coup la migration suivante, celle de devise, ne passe pas non plus sur heroku.
Sur heroku pn peut quand même s'inscrire, recevoir le mail de confirmation et se connecter mais c'est à peu près tout car les routes devises ne sont pas prises en compte.
Du coup il faut tester à la fois en local (il y a un seed) et sur heroku. Mais en local ça ne t'enverra pas de mail comme tu n'as pas mon login et mdp gmail (à moins qu'on puisse tester avec letter Mais bon tu peux au moins tester le mailer via l'inscription sur heroku.
Bref ce sera surement un peu galère de remplir la grille ! 

comme d'habitude 
```
rails db:drop, rails db:create, rails db:migrate, rails db:seed, rails s `
```
