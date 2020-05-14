class HomeController < ApplicationController
	protect_from_forgery except: [:index]
	include ReverseProxy::Controller

	def index
		reverse_proxy "http://localhost:3000" do |config|
      # We got a 404!
      config.on_missing do |code, response|
        redirect_to root_url and return
      end
    end
	end
end