environments {
    development {
        grails {
            neo4j {
                type = "rest"
                location = System.env['GRAPHENEDB_URL'] ?: "http://localhost:7474/db/data/"
            }
        }
    }
    test {
        grails {
            neo4j {
                type = "rest"
                location = "http://localhost:7474/db/data/"
            }
        }
    }
    production {
        grails {
            neo4j {
                type = "rest"
                location = System.env['GRAPHENEDB_URL'] ?: "http://localhost:7474/db/data/"
            }
        }
    }

}

