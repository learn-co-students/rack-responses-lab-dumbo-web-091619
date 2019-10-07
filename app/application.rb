class Application
    def call(env)
        resp = Rack::Response.new

        time = Time.now
        hour = time.hour

        if hour > 12
            resp.write "Good Afternoon!"
        else
            resp.write "Good Morning!"
        end
        resp.finish
    end
end

# class Application
#     def call(env)
#         resp = Rack::Response.new
#             if Time.now.hour < 12
#                 resp.write "Good Morning!"
#             elsif Time.now.hour > 12
#                 resp.write "Good Afternoon!"
#             end 
#         resp.finish
#     end
# end