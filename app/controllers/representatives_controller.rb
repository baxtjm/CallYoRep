class RepresentativesController < ApplicationController
  # before_action :set_representative, only: [:show, :edit, :update, :destroy]
#
#
#
  def get_response
    @zip = 33133
    @response = HTTParty.get("http://whoismyrepresentative.com/getall_mems.php?zip=#{@zip}&output=json", format: :plain)
    @reps = (JSON.parse @response, symbolize_names: true)[:results]
    @bioguide_id = HTTParty.get("https://raw.githubusercontent.com/unitedstates/congress-legislators/master/alternate_formats/legislators-current.json", format: :plain)
    @bio_id = JSON.parse @bioguide_id, symbolize_names: true

    @results = []
    @reps.each do |rep|
      @results << [rep[:name], rep[:party], rep[:state], rep[:phone]]
    end

  end


end
