https://brite2.herokuapp.com/


Salut j'ai fait le projet jusqu'à la view show de User.
Les mails sont envoyés depuis mon adresse gmail car sendgrid est peu fiable sur la longueur.

En local tout marche mais sur heroku j'ai une migration qui passe pas et je l'ai testée trop tard... J'ai mis les détails sur Slack si ca t'interesse. C'était une migration que je n'aurais pas du avoir besoin de faire car elle venait d'un oubli la veille. Du coup la migration suivante, celle de devise, ne passe pas non plus sur heroku, et le seed non plus.

Sur heroku on peut quand même s'inscrire, recevoir le mail de confirmation et se connecter mais c'est à peu près tout car les routes devises ne sont pas prises en compte.
Du coup il faudra tester à la fois en local (le seed marche ) pour les routes et fonctionnalités devise ainsi que le front  et sur heroku pour le mailer. Car en local tu ne pourras pas tester le mailer comme tu n'as pas mon login et mdp gmail.
Tu peux tester avec letter_opener en **décommentant la ligne 6  dans config/environments/development.rb**, après avoir lancé le seed sinon cela va t'ouvrir 100 onglets.

Et tu peux tester le **véritable mailer via l'inscription sur heroku** qui enverra un vrai courriel.

Bref ce sera peut être un peu galère de remplir la grille selon la formulation des questions ! 

Pour lancer la version local, comme d'habitude :
```
bundle install, rails db:drop, rails db:create, rails db:migrate, rails db:seed, rails s
http://localhost:3000/
```
