---
theme: seriph
highlighter: shiki
lineNumbers: false
info: |
  ## Slidev Starter Template
  Presentation slides for developers.

  Learn more at [Sli.dev](https://sli.dev)
layout: section
title: Hasura
class: text-center
---

# Hasura

## Le GraphQL qui Hassure

<img src="/assurance.jpeg" class="max-h-xs rounded-3xl mx-auto my-8" />

<!--
Valentin :
Je fait plein de side projets perso
Tout ce passe bien, je fait le front, c'est jolie
Puis je me lance sur le back et je réimplémente pour la 50ème fois un crud.
C'est généralement là que j'abandonne.
Mais j'ai enfin réussis à finir un projet et à l'utiliser gràce à un technologie que j'ai découvert.
-->

---
layout: section
---

# GraphQL

---
layout: default
---

<style>
  pre:nth-of-type(1) {
    margin-top: 30px;
    float: left
  }

  pre {
    margin: 20px;
  }
</style>

# C'est quoi GraphQL ?

Protocole standard de comunication créé par Facebook

```
query {
  user {
    id, name, email,
    friends {
      id, name
    }
  }
}
```

```
type Query {
  users: [User]
}

type User {
  id: ID!
  name: String!
  email: String
  friends: [User]
}
```

<!--
Créé par facebook

Remplacer REST pour besoin facebook

Points clefs :
  - Une query pour tout
  - convention (Repose sur HTTP)
  - Un graph schéma

Génial coté client
Optimisation pénible coté back
-->

---
layout: section
---

# Hasura

---
layout: section
---

# L'application exemple

---
layout: default
---

# Les petits poneys remplissent leur feuille de temps

| Poney               | Activité                         | 01/09 | 02/09 | 03/09 |
|---------------------|----------------------------------|-------|-------|-------|
| 🦄 Twilight Sparkles | 🎇 Etudier la magie de l'amitié | ✔     |       | ✔      |
|                     | 👸 S'entretenir avec Célestia      |       | ✔     |       |
| 🦄 Applejack         | 🍎 Récolter les pommes          | ✔     | ✔     |       |
|                     | 🍰 Manger des gâteaux           |       |       | ✔     |
| 🦄 Pinkie Pie        | 🧹 Nettoyer la pâtisserie       | ✔      |       |       |
|                     | 🥧 Faire des gâteaux            |       | ✔     |       |
|                     | 🍰 Manger des gâteaux           |       |       | ✔     |
| 🦄 Rainbow Dash        | 🏇 Faire la course       | ✔      | ✔      | ✔      |

---

# Modélisation

<img src="/data_model.svg" class="h-full m-auto" />

---
layout: default
---

# Préparons-nous

<style>
  h2 { margin-top: 3rem }
</style>

## La base de données existe
## On a lancé un serveur Hasura
## On a lancé la console d'admnistration avec Hasura CLI

---
layout: section
---

# Construisons !

---
layout: section
---

# On résume

---
layout: section
---

# Authentification

---
layout: default
---

# JWT

```json
{
  "sub": "1234567890",
  "iat": 1516238022,
  "exp": 1516239022,
  "https://hasura.io/jwt/claims": {
    "x-hasura-user-id": "1234567890",
    "x-hasura-allowed-roles": ["consultant", "user"],
    "x-hasura-default-role": "consultant",
    "x-hasura-custom": "custom-value"
  }
}
```

---
layout: default
---

# D'où vient le JWT ?

<div class="image-grid">
  <img src="/auth0_logo.png">
  <img src="/nodejs_logo.png">
  <img src="/cloud_functions_logo.png">
  <img src="/postgres_logo.svg">
</div>

---
layout: default
---

# Operations

<style>
  h2 { margin-top: 3rem }
</style>

## Versionning
## Déploiement
## Intégration
## Performance & Scaling

---
layout: default
---

# Versionning

```yaml
table:
  name: journee_feuille_temps
  schema: public
select_permissions:
- permission:
    filter:
      matricule_consultant:
        _eq: X-Hasura-User-Id
  role: consultant
```

---
layout: default
---

# Operations

<style>
  h2 { margin-top: 3rem }
</style>

## Versionning
## Déploiement
## Intégration
## Performance & Scaling

---
layout: section
---

# Sur le terrain

---
layout: section
---

# Alors, heureux ?

(Merci !)

<img src="/alors_heureux.jpg" class="max-h-xs rounded-3xl mx-auto my-8" />
