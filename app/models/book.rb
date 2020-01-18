class Book < ApplicationRecord
    before_save :titleize_book_title
    validates :title, :presence => true
    validates :publish_date, :presence => true
    validates :isbn_number, :presence => true,
       :unless => :checkpublishdate?
    validates :genre, inclusion: {in: ["Science fiction", "Drama", "Action and Adventure", "Romance", "Mystery", "Horror"]}

    @@spublish_date = Date.parse('1 Jan 1967')

    def checkpublishdate?
        publish_date && publish_date < @@spublish_date
    end
    def titleize_book_title
        self.title = self.title.split.join(" ").titleize
    end

    def self.similar_books(book)
        Book.where author: book.author
    end
end
