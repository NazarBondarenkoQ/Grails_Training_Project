package grailslibrary

class Author {

    String firstName
    String lastName
    String city
    String country
    static hasMany = [books: Book]

    static constraints = {
    }

    def json() {
        [
                id       : this.id + " ",
                firstName: this.firstName + " ",
                lastName : this.lastName + " ",
                city     : this.city + " ",
                country  : this.country + " "
        ]
    }

}
