module BooksHelper
  def options_to_author
<<<<<<< HEAD
     Author.all.map {|author| [author.name, author.id]}
=======
    Author.all.map {|author| [author.name, author.id] }
>>>>>>> 591b2ac9269ab7abd01edc3f85ebb94f87ae6fd7
  end
end
