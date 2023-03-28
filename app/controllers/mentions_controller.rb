class MentionsController < ApplicationController

  def index
    query = params[:query]
    puts "Query: #{query}" # Debug output
    users = Fonte.where("name LIKE ?", "#{query}%")
    render json: users.map { |user| { id: user.id, mentionable: user.name, avatar: url_for(user.profile_image) } }
  end

  # def index
  #   query = params[:query]
  #   puts "Query: #{query}" # Debug output
  #   users = User.where("name LIKE ?", "#{query}%")
  #   render json: users.map { |user| { id: user.id, mentionable: user.name } }
  # end

end
