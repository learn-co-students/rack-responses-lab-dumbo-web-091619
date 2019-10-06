class Application
    def call(env)
        resp = Rack::Response.new

        time_1 = Time.new(2015,11,27,9,30)
        time_2 = Time.new(2015,11,27,14,30)
        time_3 = Time.new(2015,11,27,11,59)
        time_4 = Time.now
        

        resp.write "#{time_1}\n"
        resp.write "#{time_2}\n"

        if time_1 == time_3 || time_1 < time_3
            resp.write "Good Morning"
        end
        
        if time_2 > time_3
            resp.write "Good Afternoon"
        end     

        resp.finish
    end

    


end
