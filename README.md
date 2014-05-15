== App Name: Curator

## Resources: Artsy API

The Artsy API was developed as part of the Art Genome Project, which is a long-term research effort to map the characteristics of works of art that define, distinguish, and connect them using a digital analytics system. The service describes works of art via combinations of 900+ "genes" that identify attributes such as associated movements within art history, subject matter, and formal qualities like media, materials, and techniques. 

API methods support multi-faceted search against the accumulated database of artwork descriptions. Methods support submission of search queries specifying combinations of the characteristics defined in the Art Genome. Methods also allow browse access to listings for exhibitions in which artworks have been displayed as well as search for specific collections of art.

Importantly, unlike tags, which are binary, genes are applied with values ranging from 0 to 100, indicating the degree of relevance. This enables similarity to be expressed in a more nuanced way and allows for better suggestions based on tastes and preferences.

## App Research/Concept:

Artsy provides search access to images and information about artworks allowing anyone to discover, research, and collect art online. It's a growing collection of 140,000+ artworks by 25,000+ artists from prominent galleries, museums, private collections, and art fairs worldwide.

Curator harnesses Artsy's resources to allow anyone to curate their very own art collection online. It allows people to discover, collect, and share artwork as well as make connections between different works of art.

The problem Curator solves is the difficulty people have with appreciating art. When we go to a gallery or search for art online, we're presented with a limited range of work connected only by traditional categories like period or style. You see the name of the artist, when the work was painted, and that's generally it.  

Curator would provide broader access to art and more information on each piece so that you can understand the context more fully and divine your own meaning from it. You can interact with it in more ways and appreciate it on a deeper level. It's not about the facts around a work of art but the questions: what is the purpose of this piece? What is it saying? How is it relevant to you? What is it trying to get you to think about?

## Data Model:

A **Curator** has
*  username

An **Artist** has
*  name
*  lifespan
*  nationality
*  style

An **Artwork** has
*  title
*  date
*  style
*  medium
*  theme
*  artist_id

##Documentation Links:

https://artsyapi.com/

http://artsy.github.io/

http://mass.artsy.net/api/v1/docs/index

https://github.com/artsy/artsy-ruby-client

http://en.wikipedia.org/wiki/The_Art_Genome_Project

##Heroku:

http://curator-app.herokuapp.com/

##Trello:

https://trello.com/b/ilTl0etl/wdi-project-1
