require 'sinatra'
require 'json'

get '/testing' do
  "It is working"
  puts "It is working"
end

# Update blog if merged on 'deploy' branch
post '/update-blog' do
  if JSON.parse(request.body.read)["ref"] == 'refs/heads/deploy'
    system('/home/student/webhooks/update-blog.sh')
    puts "Blog Updated"
  else
    puts "Not merged on 'deploy' Branch"
  end
end

