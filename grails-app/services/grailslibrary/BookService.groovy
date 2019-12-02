package grailslibrary

import grails.gorm.transactions.Transactional

@Transactional
class BookService {

    def findAllBooks() {
        Book.findAll()
    }

    def saveBook(Book book) {
        book.save()
    }
}
