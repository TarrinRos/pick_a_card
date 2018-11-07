puts 'Pick a card (c) goodprogrammer.ru'

values = %w(2 3 4 5 6 7 8 9 10 J Q K A)

images = ["\u2660", "\u2663", "\u2665", "\u2666"] # масти в UTF-8

cards = []

values.each do |value|
  images.each do |image|
    cards << "#{value} of #{image}"
  end
end

2.times do
  cards << '[Jocker]'
end

cards.shuffle!

puts 'How many cards do you want?'

users_amount = STDIN.gets.to_i

users_amount.times do
  puts cards.pop
end