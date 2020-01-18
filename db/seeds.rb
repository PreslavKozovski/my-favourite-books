# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
list_books = [
  {:title => 'Science fiction Book', :genre => 'Science fiction', :description => 'Description of the Science fiction Book.', :isbn_number=>'123123', :publish_date=>'10-May-2000'},
  {:title => 'Drama Book', :genre => 'Drama', :description => 'Description of the Drama Book.', :isbn_number=>'234567', :publish_date=>'20-May-2010'},
  {:title => 'Action and Adventure Book', :genre => 'Action and Adventure', :description => 'Description of the Action and Adventure Book.', :isbn_number=>'321321', :publish_date=>'10-Apr-2005'},
  {:title => 'Romance Book', :genre => 'Romance', :description => 'Description of the Romance Book.', :isbn_number=>'456456', :publish_date=>'05-Jan-1965'},
  {:title => 'Mystery Book', :genre => 'Mystery', :description => 'Description of the Mystery Book.', :isbn_number=>'789789', :publish_date=>'14-Dec-1944'}
]

list_books.each do |book|
  Book.create!(book)
end