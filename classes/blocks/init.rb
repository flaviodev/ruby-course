require_relative 'song'
require_relative 'song_list'

list = SongList.new([])
list << Song.new({name: 'song1', genre: 'rock'})
list << Song.new({name: 'song2', genre: 'pop'})
list << Song.new({name: 'song3', genre: 'classic'})

puts list[1].name if list[1]
puts list['song3'].name if list['song3']
