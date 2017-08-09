require 'sinatra'
require 'sinatra/activerecord'
require './models'

set :database, {adapter: "sqlite3", database: "development.sqlite3"}

get '/' do
  @actors = Actor.all
  @movies = Movie.all
  @categories = Category.all
  erb :index
end
