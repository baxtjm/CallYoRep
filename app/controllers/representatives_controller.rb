class RepresentativesController < ApplicationController
before_action :set_issue, :set_zip, :set_email
  def get_response

    @response = HTTParty.get("http://whoismyrepresentative.com/getall_mems.php?zip=#{@zip}&output=json", format: :plain)
    @congress = HTTParty.get("https://raw.githubusercontent.com/unitedstates/congress-legislators/master/alternate_formats/legislators-current.json", format: :plain)

    if @response.parsed_response.include?("No Data Found")
      redirect_to("/lookup", notice: "Please enter a real zip code.  Note that Washington DC zips do not work.")
    else
      @reps = (JSON.parse @response, symbolize_names: true)[:results].uniq
    end
    @results = (JSON.parse @congress, symbolize_names: true)

    @info = []
    @names = []
    @phones = []
    @stances = []

  Message.where(issue_id: Issue.find_by_topic(@issue).id).find_each do |x|
      @stances << [x.stance, x.position]
    end
    unless @reps ==nil
      @reps.each do |rep|
        @names << rep[:name]
      end

       @reps.each do |rep|
          @results.each do |data|
            if rep[:name] == (data[:name][:first] + " " + data[:name][:last])
              @id = data[:id][:bioguide]
              @info << [rep[:name], rep[:party], rep[:state], rep[:phone], @id]
              @phones << [rep[:name], rep[:phone]]
            end
          end
       end
     end
     @phones << ["Donald Trump", "202-456-1111"]
     @info << ["Donald Trump", "Republican", "POTUS", "202-456-1111", "http://wsd-cornelius.s3-website-us-west-2.amazonaws.com/images/candidates/donaldtrump.jpg"]



  end

private
  def set_issue
    @issue= params[:topic]
  end

  def set_zip
    if params[:zip]=="" 
      redirect_to("/lookup", notice: "Please enter a real zip code.  Note that Washington DC zips do not work.")
    else
    @zip=params[:zip].to_i
    end
  end

  def set_email
    if params[:email]==""
      redirect_to("/lookup", notice: "Please enter an email address.")
    else
      @email=params[:email]
    end

  end

end
