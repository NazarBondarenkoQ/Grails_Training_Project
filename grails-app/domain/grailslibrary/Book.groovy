package grailslibrary

class Book {

    static constraints = {
    }

    String title = ""
    int circulation = 0

    static belongsTo = Author
    static hasMany = [authors:Author]

    def json() {
        [
                id: this.id,
                title: this.title,
                circulation: this.circulation
        ]
    }

}
