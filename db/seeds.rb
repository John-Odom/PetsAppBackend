# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# curl -d "grant_type=client_credentials&client_id={CLIENT-ID}&client_secret={CLIENT-SECRET}" https://api.petfinder.com/v2/oauth2/token




# require 'rest-client' 
# require'pry'

# # curl -d "grant_type=client_credentials&client_id=jNWSm5dXwyJJC4igJBvOue0yL6AFfZliJHeFGcHTupBUO1wJupWOVdax9Jr03D" https://api.petfinder.com/v2/oauth2/token

# Dog.delete_all

# apiKey = "jNWSm5dXwyJJC4igJBvOue0yL6AFfZliXChD0OHRWoqDqr1xmG"
# apiSecret = "PRwYGYAUofJHeFGcHTupBUO1wJupWOVdax9Jr03D"


# georgia_orgs_array=[]
# georgia_orgs_ids=[]
# georgia_dogs=[]

# organizations = RestClient.get 'https://api.petfinder.com/v2/organizations?location=atlanta, GA&distance=20&limit=100&', {:Authorization => 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjMwODA3ZTIyMzk1ZGUxMWQ5MjYyM2M4MTEzNGEzODQ0YzQ0Y2VmZjU3Njg5YWQ3Mzg4OTZhN2IyNWFjZDllODdkNjczYzYyNzU0YmFhZWRkIn0.eyJhdWQiOiJqTldTbTVkWHd5SkpDNGlnSkJ2T3VlMHlMNkFGZlpsaVhDaEQwT0hSV29xRHFyMXhtRyIsImp0aSI6IjMwODA3ZTIyMzk1ZGUxMWQ5MjYyM2M4MTEzNGEzODQ0YzQ0Y2VmZjU3Njg5YWQ3Mzg4OTZhN2IyNWFjZDllODdkNjczYzYyNzU0YmFhZWRkIiwiaWF0IjoxNTc1NjU2MTI0LCJuYmYiOjE1NzU2NTYxMjQsImV4cCI6MTU3NTY1OTcyNCwic3ViIjoiIiwic2NvcGVzIjpbXX0.aWE-JgUHwyPvlwkXYOGFZLJtw6fDgeSiqW3OFxKiLXo1Qk6DYMd0kCZmUYRAaWUYQzBCHUjaz3KWOlDxzD6NQRWpzMsPwFK7UI6DXFNvweQjl_U-gjB15rYlX1sv0Oju-ZK0oDe9P3SillyM59ojXwpfN-ptoyuBUgFTcbSPiH4MYGOYdk-eLNgsvgfxlX4ECYye9rz1ezk4t0Q495RlLmj9rJ1Eqw3U3UcaqZDIkjlLl45qcBGrD0OtXIZlye8S-V-aBpWx93kwYdxtouzfmov_tY2g03wBNfS7nOTH04A5fNr-NjPC9LN4BVtM3E4evds-XLgiFXDWFqMHshUxSg'}
# organization_objects=JSON.parse(organizations)
# organization_objects["organizations"].each do |organization|
#     georgia_orgs_array << organization
#     georgia_orgs_ids << organization["id"]
# end

# georgia_orgs_ids.each do |id|
#     dogs = RestClient.get 'https://api.petfinder.com/v2/animals?organization=' + id + '&type=dog&limit=100', {:Authorization => 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjMwODA3ZTIyMzk1ZGUxMWQ5MjYyM2M4MTEzNGEzODQ0YzQ0Y2VmZjU3Njg5YWQ3Mzg4OTZhN2IyNWFjZDllODdkNjczYzYyNzU0YmFhZWRkIn0.eyJhdWQiOiJqTldTbTVkWHd5SkpDNGlnSkJ2T3VlMHlMNkFGZlpsaVhDaEQwT0hSV29xRHFyMXhtRyIsImp0aSI6IjMwODA3ZTIyMzk1ZGUxMWQ5MjYyM2M4MTEzNGEzODQ0YzQ0Y2VmZjU3Njg5YWQ3Mzg4OTZhN2IyNWFjZDllODdkNjczYzYyNzU0YmFhZWRkIiwiaWF0IjoxNTc1NjU2MTI0LCJuYmYiOjE1NzU2NTYxMjQsImV4cCI6MTU3NTY1OTcyNCwic3ViIjoiIiwic2NvcGVzIjpbXX0.aWE-JgUHwyPvlwkXYOGFZLJtw6fDgeSiqW3OFxKiLXo1Qk6DYMd0kCZmUYRAaWUYQzBCHUjaz3KWOlDxzD6NQRWpzMsPwFK7UI6DXFNvweQjl_U-gjB15rYlX1sv0Oju-ZK0oDe9P3SillyM59ojXwpfN-ptoyuBUgFTcbSPiH4MYGOYdk-eLNgsvgfxlX4ECYye9rz1ezk4t0Q495RlLmj9rJ1Eqw3U3UcaqZDIkjlLl45qcBGrD0OtXIZlye8S-V-aBpWx93kwYdxtouzfmov_tY2g03wBNfS7nOTH04A5fNr-NjPC9LN4BVtM3E4evds-XLgiFXDWFqMHshUxSg'}
#     dog_objects = JSON.parse(dogs)
#     binding.pry
# end


# # dogs_list = RestClient.get 'https://api.petfinder.com/v2/animals?organization=FL252&type=dog&limit=100', {:Authorization => 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjMwODA3ZTIyMzk1ZGUxMWQ5MjYyM2M4MTEzNGEzODQ0YzQ0Y2VmZjU3Njg5YWQ3Mzg4OTZhN2IyNWFjZDllODdkNjczYzYyNzU0YmFhZWRkIn0.eyJhdWQiOiJqTldTbTVkWHd5SkpDNGlnSkJ2T3VlMHlMNkFGZlpsaVhDaEQwT0hSV29xRHFyMXhtRyIsImp0aSI6IjMwODA3ZTIyMzk1ZGUxMWQ5MjYyM2M4MTEzNGEzODQ0YzQ0Y2VmZjU3Njg5YWQ3Mzg4OTZhN2IyNWFjZDllODdkNjczYzYyNzU0YmFhZWRkIiwiaWF0IjoxNTc1NjU2MTI0LCJuYmYiOjE1NzU2NTYxMjQsImV4cCI6MTU3NTY1OTcyNCwic3ViIjoiIiwic2NvcGVzIjpbXX0.aWE-JgUHwyPvlwkXYOGFZLJtw6fDgeSiqW3OFxKiLXo1Qk6DYMd0kCZmUYRAaWUYQzBCHUjaz3KWOlDxzD6NQRWpzMsPwFK7UI6DXFNvweQjl_U-gjB15rYlX1sv0Oju-ZK0oDe9P3SillyM59ojXwpfN-ptoyuBUgFTcbSPiH4MYGOYdk-eLNgsvgfxlX4ECYye9rz1ezk4t0Q495RlLmj9rJ1Eqw3U3UcaqZDIkjlLl45qcBGrD0OtXIZlye8S-V-aBpWx93kwYdxtouzfmov_tY2g03wBNfS7nOTH04A5fNr-NjPC9LN4BVtM3E4evds-XLgiFXDWFqMHshUxSg'}
# dog_objects=JSON.parse(dogs_list)
# dog_objects["animals"].each do |dog|
#     binding.pry
#     # organization["id"].starts_with?("GA") ? georgia_organizations << organization : nil
    
#     # neworganization = PetTest.create(name: organization[1], location: "Atlanta")
#     # team["players"].each do |player|
#     #     PetTest.create(
#     #         name:player["player_name"], 
#     #         position:player["player_type"], 
#     #         fifa_rating: rand(60...100), 
#     #         team_id:newTeam.id)
#     # end
# end
# binding.pry