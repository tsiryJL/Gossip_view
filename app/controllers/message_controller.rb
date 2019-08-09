class MessageController < ApplicationController
  def show
    puts "$" * 60
    puts "Voici le message de l'URL :"
    puts  params[:user_entry]
    puts "$" * 60
  end

  def edit
    puts "$" * 60
    puts "ceci est le contenu de params :"
    puts params
    puts "$" * 60
  end
end