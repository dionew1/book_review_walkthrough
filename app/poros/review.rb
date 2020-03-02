class Review
  attr_reader :summary, :pub_date
  
  def initialize(summary, pub_date)
    @summary = summary
    @pub_date = pub_date
  end
end