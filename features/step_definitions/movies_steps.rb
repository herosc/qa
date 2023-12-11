Given('i search by title in a GET request:') do |table|
  @params = table.rows_hash
  headers = {
    "X-RapidAPI-Key" => '7d9e259944msh2e8869368b5dd68p177be8jsn6d0a33ead33f',
    "X-RapidAPI-Host" => 'movie-database-alternative.p.rapidapi.com'
  }
  @response = HTTParty.get('https://movie-database-alternative.p.rapidapi.com/', query: {
    s:@params['title'],
    r: 'json'
  }, headers: headers)
end

Then('i should now if the response was 200') do
  expect (@response.code).to eq(200)
  json_response = JSON.parse(@response.body)

end