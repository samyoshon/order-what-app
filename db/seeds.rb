User.create!([
  {name: "Sam Shon", email: "sam@gmail.com", password_digest: "$2a$10$mN0RAghbdiqP8U0ScO1nwuQE4ZB7BaGQiQmgZdy9LxIqXKxkGQEUG", profile: nil},
])

Business.create!([
  {name: "Mendocino Farms", rating: 5, address: nil, description: nil, tagline: nil},
  {name: "Cruzer Pizza", rating: 5, address: nil, description: nil, tagline: nil},
  {name: "Prime Pizza", rating: 5, address: nil, description: nil, tagline: nil}
])

Menu.create!([
  {name: "Kurobuta Pork Belly Banh Mi Sandwich", price: 10, description: nil, user_id: 1, business_id: 5, image: "mendocinofarms.jpeg"},
  {name: "Steak BLT", price: 9, description: nil, user_id: 2, business_id: 5, image: "steakblt.jpg"},
  {name: "Philly Cheesesteak Sandwich", price: 9, description: nil, user_id: 2, business_id: 5, image: "steaksando.jpg"},
  {name: "Peruvian Steak Sandwich", price: 10, description: nil, user_id: 3, business_id: 5, image: "peruvian.jpg"},
  {name: "Steak Pizza", price: 3, description: nil, user_id: 1, business_id: 3, image: "steakpizza.jpg"},
  {name: "Cheese Pizza", price: 3, description: nil, user_id: 1, business_id: 4, image: "cheesepizza.jpg"}
])

Comment.create!([
  {comment: "I love the Pork Belly. NOM NOM NOM!", user_id: nil, menu_id: nil},
  {comment: "I LOVE IT!", user_id: nil, menu_id: nil},
  {comment: "The steak is perfectly marinated with a hint of lime", user_id: nil, menu_id: nil},
  {comment: "So cheesy and steaky!", user_id: 1, menu_id: 5},
  {comment: "Cheese for days!", user_id: 5, menu_id: 6}
])

UserCommentTable.create!([
  {user_id: 1, comment_id: 17, like: 1}
])

UserMenuTable.create!([
  {user_id: 1, menu_id: 3, like: 1},
])
