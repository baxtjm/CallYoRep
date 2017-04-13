require 'HTTParty'  # before_action :set_representative, only: [:show, :edit, :update, :destroy]
#
#
#
  # before_action :set_representative, only: [:show, :edit, :update, :destroy]
#
#
#
def get_response
  @zip = 33133
  @response = HTTParty.get("http://whoismyrepresentative.com/getall_mems.php?zip=#{@zip}&output=json", format: :plain)
  @reps = (JSON.parse @response, symbolize_names: true)
  @bioguide_id = HTTParty.get("https://raw.githubusercontent.com/unitedstates/congress-legislators/master/alternate_formats/legislators-current.json", format: :plain)
  @bio_id = JSON.parse @bioguide_id, symbolize_names: true



    @prep =[]
    @reps[:results].each do |rep|
      @bio_id.each do |data|
        @bioguide = data[:id][:bioguide]
      end

        if data[:id][:official_full] == rep[:name]
          @prep << [rep[:name], rep[:party], rep[:state], rep[:phone], @bioguide]
          puts @prep

        end

      end

    end
end

get_response
