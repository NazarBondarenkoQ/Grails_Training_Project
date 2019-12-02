package grailslibrary

import grails.gorm.transactions.Transactional

@Transactional
class AuthorService {

    def findAllAuthors() {
        Author.findAll()
    }

    def saveAuthor(Author author) {
        author.save()
    }
}
