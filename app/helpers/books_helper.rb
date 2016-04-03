module BooksHelper
  def rating(book)
    book.rates.count > 0 ? book.rates.all.sum / book.rates.count : 0
  end
  def nickname(book)
    book.user_id.nil? ? "no user" : (User.find(book.user_id).nickname)
  end
end
