class SearchController < ApplicationController
  def index
    @book = BookService.new.get_book(params[:title])
    @reviews = ReviewService.new.get_reviews(params[:title])
    # raw_review = Faraday.get("https://api.nytimes.com/svc/books/v3/reviews.json?api-key=#{ENV['NYT_KEY']}&title=#{params[:title]}")
    # review_info = JSON.parse(raw_review.body, symbolize_names: true)
    # @reviews = review_info[:results].map do |review|
    #   summary = review[:summary]
    #   pub_date = review[:publication_dt]
    #   Review.new(summary, pub_date)
    end
  end
end