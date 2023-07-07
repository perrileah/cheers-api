require "rest-client"

def brewery_dataset
  breweries = HTTP.get("https://api.openbrewerydb.org/v1/breweries?by_state=iowa")
  data = JSON.parse(breweries.body)
  data.each do |s|
    Brewery.create(name: s["name"], address: s["address_1"], city: s["city"], state: s["state"], zip: s["postal_code"], website_url: s["website_url"], longitude: s["longitude"], latitude: s["latitude"])
  end
end

brewery_dataset()

# User.create(
#   name: "leah",
#   email: "leah@example.com",
#   password_digest: "password",
# )

# Checkin.create(
#   brewery_id: "dbde8235-2b55-4d8b-8b1c-438155abe104",
#   user_id: 3,
#   rating: 5,
#   image: "https://tableagent.s3.amazonaws.com/media/originals/12708_56eae0476ca5443eada0af69f22f76b2.jpg",
#   comments: "amazing brewery with great customer service and awesome food & beer!",

# )
