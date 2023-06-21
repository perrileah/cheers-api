User.create(
  name: "leah",
  email: "leah@example.com",
  password_digest: "password",
)

CheckIn.create(
  brewery_id: 1,
  user_id: 3,
  rating: 5,
  image: "https://tableagent.s3.amazonaws.com/media/originals/12708_56eae0476ca5443eada0af69f22f76b2.jpg",
  comments: "amazing brewery with great customer service and awesome food & beer!",

)
