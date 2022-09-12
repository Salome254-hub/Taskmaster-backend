class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/' do
    tasks=Task.all
    tasks.to_json
  end

  post '/' do
    message=Task.create(body:params[:body],username:params[:username])
    message.to_json
  end
















end
