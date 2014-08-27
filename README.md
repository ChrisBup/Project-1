# App Name: Curator

#### Resources/Gems:

Brooklyn Museum API

rspec
httparty
font-awesome
rails_12factor

skeleton

## Research/Concept

So often we view art as just pictures on a wall—sometimes pleasant, sometimes confusing—but usually with little meaning or relevance to ourselves. However, art can serve a valuable purpose allowing people to understand themselves better and connect with their world in new ways. Curator provides a context and guide for experiencing art; one that is useful to experts and newcomers alike.

The problem Curator solves is the limited access to the Brooklyn Museum collection in any given visit. By being able to search their entire archive, whether or not the piece is on view, as well as keep track of favorite pieces, one can curate their very own collection to appreciate and share.

## Data Model:

| Curator         |
| ----------------|
| username        |
| password        |

| Artwork             |
| --------------------|
| image_url           |
| id                  |
| location            |
| title               |
| object_date         |
| medium              |
| label               |
| collection          |
| description         |
| image_uri           |
| uri                 |
| artist_name         |
| artist_nationality  |

| Collection      |
| ----------------|
| curator_id      |
| artwork_id      |
| name            |

##Wireframes

![Alt text](/wireframes/p1wf1.JPG)

![Alt text](/wireframes/p1wf2.JPG)

![Alt text](/wireframes/p1wf3.JPG)

##Documentation:

http://www.brooklynmuseum.org/opencollection/api/

##Heroku:

http://curator-app.herokuapp.com/

##Trello:

https://trello.com/b/ilTl0etl/wdi-project-1
