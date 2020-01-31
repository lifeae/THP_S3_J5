class View
  def create_gossip
    puts "Quel est ton nom ?"
    author = gets.chomp
    puts "*chuchote* C'est quoi ton potin ?"
    content = gets.chomp
    params = { author: author, content: content }
    return params
  end
end
