class Application
    def call(env)
        resp = Rack::Response.new

        time_1 = Time.new(2015,11,27,9,30)
        time_2 = Time.new(2015,11,27,14,30)
        time_3 = Time.new(2015,11,27,11,59)
             

        if time_1 == time_3 || time_1 < time_3
            resp.write "#{time_1}\n"
            resp.write "Good Morning\n"
        end
        
        if time_2 > time_3
            resp.write "#{time_2}\n"
            resp.write "Good Afternoon\n"
        end     
        resp.finish
    end

end
