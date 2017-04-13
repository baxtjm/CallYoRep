class RepresentativesController < ApplicationController
  # before_action :set_representative, only: [:show, :edit, :update, :destroy]
#
#
#
  def get_response

    @zip = 33133
    
    @response = HTTParty.get("http://whoismyrepresentative.com/getall_mems.php?zip=#{@zip}&output=json", format: :plain)
    @congress = HTTParty.get("https://raw.githubusercontent.com/unitedstates/congress-legislators/master/alternate_formats/legislators-current.json", format: :plain)

    @reps = (JSON.parse @response, symbolize_names: true)[:results]
    @results = (JSON.parse @congress, symbolize_names: true)
    @info = []
    @names = []
    @id =[]

    @reps.each do |rep|
      @names << rep[:name]

        @results.each do |data|
          if @names.include?(data[:name][:first] + " " + data[:name][:last])
            @id = data[:id][:bioguide]
            @info << [rep[:name], rep[:party], rep[:state], rep[:phone], @id]
          end
        end

    end

    # @results.each do |data|
    #   @first = data[:name][:first]
    #   if @names.include?(data[:name][:first] + " " + data[:name][:last])
    #     @ids << data[:id][:bioguide]
    #   end
    # end


  end


end
