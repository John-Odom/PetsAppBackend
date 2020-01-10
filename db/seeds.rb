# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# curl -d "grant_type=client_credentials&client_id={CLIENT-ID}&client_secret={CLIENT-SECRET}" https://api.petfinder.com/v2/oauth2/token

require 'rest-client' 
require'pry'
require 'net/http'
require 'uri'

Dog.delete_all
Organization.delete_all

# # curl -d "grant_type=client_credentials&client_id=jNWSm5dXwyJJC4igJBvOue0yL6AFfZliJHeFGcHTupBUO1wJupWOVdax9Jr03D" https://api.petfinder.com/v2/oauth2/token
# apiKey = "jNWSm5dXwyJJC4igJBvOue0yL6AFfZliXChD0OHRWoqDqr1xmG"
# apiSecret = "mdd46smECtcGndlPsXQTbM6YKO907s2uMQ0vvCtc"
# # RestClient.get 'https://api.petfinder.com/v2/oauth2/token', "grant_type=client_credentials&client_id=#{apiKey}&client_secret=#{apiSecret}"
# # curl -d "grant_type=client_credentials&client_id=#{apiKey}&client_secret=#{apiSecret}" https://api.petfinder.com/v2/oauth2/token
# accessToken = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjFiNTRkNjg2ZGFlZjc2ODBlZDg3NTUzZGQyNzgzMWRmZWM3NTExNmI2MmM0YjhhMTM1NDI1NTM0NGExOTc0ZTRkMDAxMmRjM2Q3MThkNWRjIn0.eyJhdWQiOiJqTldTbTVkWHd5SkpDNGlnSkJ2T3VlMHlMNkFGZlpsaVhDaEQwT0hSV29xRHFyMXhtRyIsImp0aSI6IjFiNTRkNjg2ZGFlZjc2ODBlZDg3NTUzZGQyNzgzMWRmZWM3NTExNmI2MmM0YjhhMTM1NDI1NTM0NGExOTc0ZTRkMDAxMmRjM2Q3MThkNWRjIiwiaWF0IjoxNTc2MDkzMDA3LCJuYmYiOjE1NzYwOTMwMDcsImV4cCI6MTU3NjA5NjYwNywic3ViIjoiIiwic2NvcGVzIjpbXX0.lj1IkBZVuSSdH-rtvZj78LaMD6KFCii42ymm9MRJBPP2aiPQBYzUNCMl0-oVTF0wL6LwQAHMqnrAya2ZT_0b9Vhd_ISRfyJIxB-2zIwwnFRyP9hCo9ErMW-h3-WZ6qmmXFEwYzdhcmgKi58Bq1gswleozeg1O3BxQS9CFACoo_dxaI-WAQZMUi2sWISUButY8UYW0JqEwsPpHwXafd625eXMjyA-_2CU-MuV-IJMMQaqsAx4bqyYpKEKnmx4DYZ8m1bbyHAOWYP1ylFe5BpKA4f_ma-9U_KesrV9lvFbC1mwStIjlnSfylhsLrZYtwbMFArXWkb02oDWtcc_KNeW1g'




# uri = URI.parse("https://api.petfinder.com/v2/oauth2/token")
# request = Net::HTTP::Post.new(uri)
# request.set_form_data(
#   "client_id" => "#{apiKey}",
#   "client_secret" => "#{apiSecret}",
#   "grant_type" => "client_credentials",
# )

# req_options = {
#   use_ssl: uri.scheme == "https",
# }

# response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
#   http.request(request)
# end

# testToken = response.body
# unparsedTestToken = testToken.split(":")[3]
# accessToken = unparsedTestToken.slice(1, unparsedTestToken.length-3)

# georgia_orgs_array=[]
# # orgs_with_dogs=[]
# georgia_dogs=[]

# organizations = RestClient.get 'https://api.petfinder.com/v2/organizations?location=atlanta, GA&distance=20&limit=100&', {:Authorization => "Bearer #{accessToken}"}
# organization_objects=JSON.parse(organizations)
# organization_objects["organizations"].each do |organization|
#     binding.pry
#     georgia_orgs_array << organization
#     # georgia_orgs_ids << organization["id"]
#     if organization['photos'][0]
#         new_org = Organization.new(
#             name: organization['name'],
#             website: organization['website'],
#             street: organization['address']['address1'],
#             zip:organization['address']['postcode'],
#             state: organization['address']['state'],
#             city: organization['address']['city'],
#             phone: organization['phone'],
#             email: organization['email'],
#             apiid: organization['id'],
#             image: organization['photos'][0]['medium']
#         )
#     else
#         new_org = Organization.new(
#             name: organization['name'],
#             website: organization['website'],
#             street: organization['address']['address1'],
#             zip:organization['address']['postcode'],
#             state: organization['address']['state'],
#             city: organization['address']['city'],
#             phone: organization['phone'],
#             email: organization['email'],
#             apiid: organization['id'],
#         )
#     end
#     new_org.valid? ? new_org.save : nil
# end

# georgia_orgs_array.each do |array|
#     # binding.pry
#     dogs = RestClient.get 'https://api.petfinder.com/v2/animals?organization=' + array['id'] + '&status=adoptable&age=adult,senior&type=dog&limit=100', {:Authorization => "Bearer #{accessToken}"}
#     # binding.pry
#     dog_objects = JSON.parse(dogs)
#     dog_objects["animals"].each do |dog|
#         # binding.pry
#         georgia_dogs << dog
#         if dog["photos"][0]
#             new_dog = Dog.new(
#                 name: dog["name"],
#                 gender: dog["gender"],
#                 size: dog["size"],
#                 age: dog["age"],
#                 bio: dog['description'],
#                 color: dog['colors']['primary'],
#                 location: dog["contact"]["address"]["city"],
#                 breed: dog["breeds"]["primary"],
#                 image: dog["photos"][0]["medium"],
#                 api_dog_id: dog["id"],
#                 organization_id: Organization.find_by(apiid:dog['organization_id']).id
#             )
#             if dog["photos"][1]
#                 new_dog[:image2] = dog["photos"][1]["medium"]
#             end
#             if dog["photos"][2]
#                 new_dog[:image3] = dog["photos"][2]["medium"]
#             end
#             if dog["photos"][3]
#                 new_dog[:image4] = dog["photos"][3]["medium"]
#             end
#             new_dog.valid? ? new_dog.save : nil
#         end
#     end
# end

# Organization.all.each do |org|
#     org.dogs == [] ? org.delete : nil
# end
