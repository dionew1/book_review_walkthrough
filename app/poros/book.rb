class Book
  attr_reader :title, :author, :subjects
  def initialize(title, author, subjects)
    @title = title
    @author = author
    @subjects = subjects ? subjects : ["No Genres Listed"]
  end
end