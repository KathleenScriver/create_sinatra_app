class ApplicationController < Sinatra::Base
  configure do
  	set :views, "app/views"
  	# set :public_dir, "public"
  end

  get '/' do
    @hashketball = Hashketball.new
    # @hashketball.get_all_info
    erb :index
  end

end
