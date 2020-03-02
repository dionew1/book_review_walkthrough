class BookService

  def get_book(title)
    book_info = get_json(title)
    create_book(book_info)
  end

  private
    def get_json(title)
      raw_book = Faraday.get("http://openlibrary.org/search.json") do |req|
        req.params[:title] = title
      end
       JSON.parse(raw_book.body, symbolize_names: true)
    end

    def create_book(book_info)
      title = book_info[:docs][0][:title]
      author = book_info[:docs][0][:author_name][0]
      subjects = book_info[:docs][0][:subjects]
      Book.new(title, author, subjects)
    end
end