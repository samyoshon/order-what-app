User.create!([
  {name: "Sam Shon", email: "sam@gmail.com", password_digest: "$2a$10$mN0RAghbdiqP8U0ScO1nwuQE4ZB7BaGQiQmgZdy9LxIqXKxkGQEUG", profile: nil},
  {name: "Mike Domingo", email: "mike@gmail.com", password_digest: "$2a$10$eZrCF.QmtNH5q1umdRH4q.7eCuJumDkaMgnh7IPOi7tfX4vuI.F/e", profile: nil},
  {name: "Joe", email: "joe@gmail.com", password_digest: "$2a$10$UJlCOa4rS1GAacO6iNCG2utGpOJR.xdwIq8iDtxR1gJ3gMyMT7C8i", profile: nil},
  {name: "Ed", email: "ed@gmail.com", password_digest: "$2a$10$p/EwwxDBxp7xGKV.gxsxoebFV7Eb14kOu/7QnTIwqTVzNOVv4gY5.", profile: nil},
  {name: "Daniel", email: "dan@gmail.com", password_digest: "$2a$10$73vZJeC4PxF9CIByVh/yiebeG3PQ9200QFRyDeMyLq9OkSMHQYbKW", profile: nil},
  {name: "Homeboy", email: "homeboy@gmail.com", password_digest: "$2a$10$nD05ejWcDmsa1B6FHnPhyOCWa2FKFMZ67vlDmYJzRVdLiwMXOCGPm", profile: nil},
  {name: "g", email: "homeboy@gmail.com", password_digest: "$2a$10$igbxo4oGpnX9.lSOmCeglezf61xtBord7CdPoSXzoEiL/vN2YkLWi", profile: nil}
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
  {comment: "testing", user_id: nil, menu_id: nil},
  {comment: "testing", user_id: nil, menu_id: nil},
  {comment: "asdfa", user_id: nil, menu_id: nil},
  {comment: "", user_id: nil, menu_id: nil},
  {comment: "I LOVE IT!", user_id: nil, menu_id: nil},
  {comment: "I LOVE IT!", user_id: nil, menu_id: nil},
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
