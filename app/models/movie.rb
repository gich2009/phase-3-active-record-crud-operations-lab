
class Movie < ActiveRecord::Base

  def self.create_with_title(title)
    #The following could have also been written as **Movie.create(title: title)** or **self.create(title: title)** 
    #I used this version because it surprised me that ruby allows this kind of syntax. The same applies to all other class(static) methods.
    create(title: title) 
  end


  def self.first_movie
    first
  end


  def self.last_movie
    last
  end
  

  def self.movie_count
    count
  end


  def self.find_movie_with_id(id)
    find(id)
  end


  def self.find_movie_with_attributes(attributes)
    where(attributes).first
  end


  def self.find_movies_after_2002
    where("release_date > ?", 2002)
  end


  def update_with_attributes(new_attributes)
    #in this case, our method is an instance method and therefore, the self keyword(or the class name) must be included.
    self.update(new_attributes)
  end


  def self.update_all_titles(title)
    update_all(title: title)
  end

  
  def self.delete_by_id(id)
    find(id).destroy
  end


  def self.delete_all_movies
    destroy_all
  end


end