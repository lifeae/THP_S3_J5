require 'csv'
#require 'pry'

class Gossip
  attr_accessor :author, :content

  def initialize(author, content)
    @content = content
    @author = author
  end

  def save
    CSV.open('./db/gossip.csv', 'a') do |csv|
      csv << [@author ,@content]
    end
  end
end

#binding.pry

#my_gossip = Gossip.new("auteur", "ceci est un exemple content") #=> Crée une instance de potin, sauvergardée juste dans cette variable
#my_gossip.save #=> Sauvegarde l'instance de potin dans le CSV correspondant, en créant une nouvelle ligne dans mon fichier CSV
