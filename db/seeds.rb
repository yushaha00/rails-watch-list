# Clean slate
puts "Cleaning database..."
Bookmark.destroy_all
Movie.destroy_all
List.destroy_all

# Movies
puts "Creating movies..."
movies = {
  wonder_woman: Movie.create!(
    title: "Wonder Woman 1984",
    overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s and finds a formidable foe by the name of the Cheetah.",
    poster_url: "https://image.tmdb.org/t/p/w500/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg",
    rating: 6.9
  ),
  shawshank: Movie.create!(
    title: "The Shawshank Redemption",
    overview: "Framed in the 1940s for the double murder of his wife and her lover, upstanding banker Andy Dufresne begins a new life at the Shawshank prison, where he puts his accounting skills to work for an arbitrary warden.",
    poster_url: "https://image.tmdb.org/t/p/w500/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg",
    rating: 8.7
  ),
  titanic: Movie.create!(
    title: "Titanic",
    overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic, 84 years later. A young Rose boards the ship with her mother and fiancé. Meanwhile, Jack Dawson wins his ticket aboard in a poker game.",
    poster_url: "https://image.tmdb.org/t/p/w500/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg",
    rating: 7.9
  ),
  oceans_eight: Movie.create!(
    title: "Ocean's Eight",
    overview: "Debbie Ocean, a criminal mastermind, gathers a crew of seven other female thieves to pull off the heist of the century at New York's annual Met Gala.",
    poster_url: "https://image.tmdb.org/t/p/w500/MvYpKlpFukTivnlBhizGbkAe3v.jpg",
    rating: 7.0
  ),
  inception: Movie.create!(
    title: "Inception",
    overview: "Cobb, a skilled thief who commits corporate espionage by infiltrating the subconscious of his targets is offered a chance to regain his old life as payment for a task considered to be impossible: inception.",
    poster_url: "https://image.tmdb.org/t/p/w500/edv5CZvWj09upOsy2Y6IwDhK8bt.jpg",
    rating: 8.4
  ),
  dark_knight: Movie.create!(
    title: "The Dark Knight",
    overview: "Batman raises the stakes in his war on crime. With the help of Lt. Jim Gordon and District Attorney Harvey Dent, Batman sets out to dismantle the remaining criminal organizations that plague the streets.",
    poster_url: "https://image.tmdb.org/t/p/w500/qJ2tW6WMUDux911r6m7haRef0WH.jpg",
    rating: 8.5
  ),
  interstellar: Movie.create!(
    title: "Interstellar",
    overview: "The adventures of a group of explorers who make use of a newly discovered wormhole to surpass the limitations on human space travel and conquer the vast distances involved in an interstellar voyage.",
    poster_url: "https://image.tmdb.org/t/p/w500/gEU2QniE6E77NI6lCU6MxlNBvIx.jpg",
    rating: 8.4
  ),
  forrest_gump: Movie.create!(
    title: "Forrest Gump",
    overview: "A man with a low IQ has accomplished great things in his life and been present during significant historic events—in each case, far exceeding what anyone imagined he could do.",
    poster_url: "https://image.tmdb.org/t/p/w500/arw2vcBveWOVZr6pxd9XTd1TdQa.jpg",
    rating: 8.5
  ),
  godfather: Movie.create!(
    title: "The Godfather",
    overview: "Spanning the years 1945 to 1955, a chronicle of the fictional Italian-American Corleone crime family. When organized crime family patriarch Vito Corleone barely survives an attempt on his life, his youngest son Michael steps in.",
    poster_url: "https://image.tmdb.org/t/p/w500/3bhkrj58Vber6H5ber6bEaav3EI.jpg",
    rating: 8.7
  ),
  avengers_endgame: Movie.create!(
    title: "Avengers: Endgame",
    overview: "After the devastating events of Infinity War, the universe is in ruins. With the help of remaining allies, the Avengers assemble once more to reverse Thanos' actions and restore balance.",
    poster_url: "https://image.tmdb.org/t/p/w500/or06FN3Dka5tukK1e9sl16pB3iy.jpg",
    rating: 8.3
  ),
  spider_verse: Movie.create!(
    title: "Spider-Man: Into the Spider-Verse",
    overview: "Miles Morales is juggling his life between being a high school student and being a spider-man. When Wilson Fisk uses a super collider, others from across the Spider-Verse are transported to this dimension.",
    poster_url: "https://image.tmdb.org/t/p/w500/iiZZdoQBEYBv6id8su7ImL0oCbD.jpg",
    rating: 8.4
  ),
  parasite: Movie.create!(
    title: "Parasite",
    overview: "All unemployed, Ki-taek's family takes peculiar interest in the wealthy and glamorous Parks for their livelihood until they get entangled in an unexpected incident.",
    poster_url: "https://image.tmdb.org/t/p/w500/7IiTTgloJzvGI1TAYymCfbfl3vT.jpg",
    rating: 8.5
  )
}

# Lists with nice cover images
puts "Creating lists..."
lists = {
  classics: List.create!(
    name: "Timeless Classics",
    image_url: "https://images.unsplash.com/photo-1489599849927-2ee91cede3ba?w=800"
  ),
  superhero: List.create!(
    name: "Superhero Adventures",
    image_url: "https://images.unsplash.com/photo-1612036782180-6f0b6cd846fe?w=800"
  ),
  scifi: List.create!(
    name: "Mind-Bending Sci-Fi",
    image_url: "https://images.unsplash.com/photo-1534796636912-3b95b3ab5986?w=800"
  ),
  drama: List.create!(
    name: "Emotional Dramas",
    image_url: "https://images.unsplash.com/photo-1518676590629-3dcbd9c5a5c9?w=800"
  ),
  heist: List.create!(
    name: "Heist & Thriller",
    image_url: "https://images.unsplash.com/photo-1550565118-3a14e8d0386f?w=800"
  )
}

# Bookmarks with meaningful comments
puts "Creating bookmarks..."

# Timeless Classics
Bookmark.create!(list: lists[:classics], movie: movies[:shawshank], comment: "The best movie ever made. Hope is a powerful thing.")
Bookmark.create!(list: lists[:classics], movie: movies[:godfather], comment: "An offer you can't refuse. Masterpiece of cinema.")
Bookmark.create!(list: lists[:classics], movie: movies[:forrest_gump], comment: "Life is like a box of chocolates. So heartwarming!")

# Superhero Adventures
Bookmark.create!(list: lists[:superhero], movie: movies[:dark_knight], comment: "Why so serious? Heath Ledger was phenomenal.")
Bookmark.create!(list: lists[:superhero], movie: movies[:avengers_endgame], comment: "I am Iron Man. The perfect finale to the saga.")
Bookmark.create!(list: lists[:superhero], movie: movies[:spider_verse], comment: "Anyone can wear the mask. Visually stunning!")
Bookmark.create!(list: lists[:superhero], movie: movies[:wonder_woman], comment: "Diana Prince saves the day in the 80s!")

# Mind-Bending Sci-Fi
Bookmark.create!(list: lists[:scifi], movie: movies[:inception], comment: "Is this real or a dream? Still thinking about it.")
Bookmark.create!(list: lists[:scifi], movie: movies[:interstellar], comment: "Love transcends dimensions. Absolutely beautiful.")

# Emotional Dramas
Bookmark.create!(list: lists[:drama], movie: movies[:titanic], comment: "There was room on that door! A tragic love story.")
Bookmark.create!(list: lists[:drama], movie: movies[:parasite], comment: "Social commentary at its finest. Oscar deserved.")
Bookmark.create!(list: lists[:drama], movie: movies[:forrest_gump], comment: "Run Forrest, run! Makes you laugh and cry.")

# Heist & Thriller
Bookmark.create!(list: lists[:heist], movie: movies[:oceans_eight], comment: "Girl power heist at the Met Gala. So stylish!")
Bookmark.create!(list: lists[:heist], movie: movies[:inception], comment: "The ultimate mind heist. Nolan at his best.")

puts "Seeding complete!"
puts "Created #{Movie.count} movies, #{List.count} lists, and #{Bookmark.count} bookmarks."
