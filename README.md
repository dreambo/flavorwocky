Flavorwocky
========

Flavorwocky was an entry for the [Neo4j Heroku Challenge](http://blog.neo4j.org/2012/03/neo4j-heroku-challenge-winner-and.html) 
and has been rewritten to use Spring Data Neo4j 4. 

Demo: http://www.flavorwocky.com

A guide to building Flavorwocky with Spring Data Neo4j 4: https://www.airpair.com/neo4j/posts/the-essence-of-spring-data-neo4j-4

Deploying Locally
=================
* Set up Neo4j 2.2.x
* `> git clone git@github.com:luanne/flavorwocky.git`
* `> git checkout sdn`
* The application runs on Heroku and uses the GrapheneDB add on. It has been set up to use the environment variable called GRAPHENEDB_URL. Create an environment variable on your machine called GRAPHENEDB_URL with value of the form http://<neo4j-server-username>:<neo4j-server-password@<neo4j-host>:<neo4j-port> e.g. http://neo4j:neo@localhost:7474 
* Make sure your local Neo4j server is running
* Create categories using the `categorySetup.cql` script
* `>mvn clean spring-boot:run`
* Launch the app in your browser (e.g. http://localhost:8080/)

=======
This is an entry for the Neo4j Heroku Challenge(http://neo4j-challenge.herokuapp.com/) and is a template for Grails with Neo4j and D3.js web applications.
The app models flavor affinity between various ingredients in a graph and demonstrates features of the Neo4J REST API.

Demo: http://flavorwocky.herokuapp.com/

Blog posts with more information: http://thought-bytes.blogspot.in/2012/02/flavor-of-month-neo4j-add-on-for-heroku.html

If you like this app, please rate it on Gensen (http://gensen.herokuapp.com/show/27)

Deploying Locally
=================
* Set up Grails 2.0
* Set up neo4j 1.6
* `> git clone git@github.com:luanne/flavorwocky.git`
* Edit flavorwocky/grails-app/conf/Config.groovy and point neo4j.rest.serverendpoint to your local neo4j server e.g. "http://localhost:7474/db/data"
* Make sure your local neo4j server is running
* `>cd flavorwocky`
* `>grails run-app`
* Launch the app in your browser (e.g. http://localhost:8080/flavorwocky/)


Deploying on Heroku
===================
* `> git clone git@github.com:luanne/flavorwocky.git`
* `> cd flavorwocky`
* `> heroku login`
* `> heroku create --stack cedar`
* `> heroku addons:add neo4j`
* `> heroku addons:open neo4j`
* Copy your neo4J REST-URL, login and password
* Edit flavorwocky/grails-app/conf/Config.groovy and update the values obtained above for neo4j.rest.serverendpoint, neo4j.rest.username and neo4j.rest.password
* `> git push heroku master`
* Go to your browser and try it out!
