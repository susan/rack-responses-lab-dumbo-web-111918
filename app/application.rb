class Application

	def call(env)
		resp = Rack::Response.new
		req = Rack::Request.new(env)
		t = Time.now
		hour = t.hour
		  if hour <12
				resp.write "Good Morning!"
		  else resp.write "Good Afternoon!"
			end
		resp.finish
	end



end
