# App Name: Curator

#### Resources/Gems:

Brooklyn Museum API

rspec
httparty
font-awesome
rails_12factor

skeleton

## Research/Concept

Curator accesses Brooklyn Museum's collection of over 100,000 works of art to allow anyone to curate their very own art collection online. It allows people to discover, collect, and share artwork.

The problem Curator solves is the limited access to the Brooklyn Museum collection in any given visit. By being able to search their entire archive, whether or not the piece is on view, as well as keep track of favorite pieces, one can curate their very own collection to share.

## Data Model:

| Curator         |
| ----------------|
| username        |

| Artist          |
| ----------------| 
| name            |
| dates           |
| nationality     |

| Artwork         |
| ----------------| 
| image_url       |
| caption         |
| file_source     |
| series          |

| Collection      |
| ----------------| 
| curator_id      |
| artwork_id      |
| name            |

##Wireframes

![Alt text](/wireframes/p1wf1.JPG)

![Alt text](/wireframes/p1wf2.JPG)

![Alt text](/wireframes/p1wf3.JPG)

##Documentation Links:

http://www.brooklynmuseum.org/opencollection/api/

https://github.com/brooklynmuseum/brooklynmuseum-api-examples

base URL: http://www.brooklynmuseum.org/opencollection/api/oai.pmh.php?api-key=[Your-API-Key]

##Heroku:

http://curator-app.herokuapp.com/

##Trello:

https://trello.com/b/ilTl0etl/wdi-project-1
