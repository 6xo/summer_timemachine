require 'sinatra'
require 'sinatra/reloader'

get '/' do
  html :index
end

def html(view)
  File.read(File.join('public',"#{view.to_s}.html"))
end

