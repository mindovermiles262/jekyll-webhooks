require 'sinatra'
require 'json'

get '/testing' do
  "It is working"
  puts "It is working"
end

# Update blog if merged on 'deploy' branch
post '/update-blog' do
  if JSON.parse(request.body.read)["ref"] == 'refs/heads/master'
    system('/home/student/webhooks/update-blog.sh')
    puts "Blog Updated"
  else
    puts "Not merged on 'master' Branch"
  end
end

# Update .bash_profile on GH merge
# post '/update-bash' do
#   puts "Update Bash Triggered"
#   system('/home/student/webhooks/update-bash-profile.sh')
# end
