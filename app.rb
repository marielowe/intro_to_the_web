require "sinatra"
require "sinatra/reloader" if development?

get "/random-cat" do
  @name = ["Jim", "Jam", "Jom"].sample
  # <h1>My name is <%= %w(John Jane Janet).sample %></h1>
  erb(:index)
end
get "/named-cat" do
  @name = params[:name]
  # <h1>My name is <%= %w(John Jane Janet).sample %></h1>
  erb :index
end
