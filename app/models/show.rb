class Show < ActiveRecord::Base 
  
  def self.highest_rating
    self.maximum(:rating)
  end 
  
  def self.most_popular_show 
    self.where("rating = ?", highest_rating)[0]
end 

def self.lowest_rating
  self.minimum(:rating)
end 

def self.least_popular_show
  self.minimum(:name)
end 


def self.ratings_sum 
  self.sum(:ratings)
end 

def self.popular_shows
  self.where("ratings > 2").order(ratings: :desc)
end 

def self.shows_by_alphabetical_order 
  self.order(shows: :desc)
end 
end