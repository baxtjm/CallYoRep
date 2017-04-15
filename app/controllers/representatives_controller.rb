class RepresentativesController < ApplicationController
before_action :set_issue
  def get_response

    @zip = params[:zip]
    @response = HTTParty.get("http://whoismyrepresentative.com/getall_mems.php?zip=#{@zip}&output=json", format: :plain)
    @congress = HTTParty.get("https://raw.githubusercontent.com/unitedstates/congress-legislators/master/alternate_formats/legislators-current.json", format: :plain)

    @reps = (JSON.parse @response, symbolize_names: true)[:results].uniq
    @results = (JSON.parse @congress, symbolize_names: true)
    @info = []
    @names = []
    @phones = []
    @stances = []
  Message.where(issue_id: Issue.find_by_topic(@issue).id).find_each do |x|
      @stances << [x.stance, x.position]
    end

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
     if @phones != []
       redirect_to "rep"
     end
  end

def set_issue
  @issue= "planned_parenthood" #params[:topic]
end

end
