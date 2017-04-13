#
class RepresentativesController < ApplicationController
  # before_action :set_representative, only: [:show, :edit, :update, :destroy]
#
#
#
#   def show
#         url = "http://whoismyrepresentative.com/getall_mems.php?zip=33133&output=json"
#
#         response = HTTParty.get url
#
#         puts response #.headers['content-type']
#
#         puts response.body
#
#         dom = Nokogiri::HTML(response.body)
#
#         dom.css("a.hdrlnk").map do |element|
#           #   p element.content
#     end
#   end
def rep_lookup
  zip = 33133
  @response = HTTParty.get("http://whoismyrepresentative.com/getall_mems.php?zip=#{zip}&output=json", format: :plain)

  @reps = JSON.parse @response, symbolize_names: true

end


  # dom = Nokogiri::HTML(response.body)
  #
  # dom.css("a.hdrlnk").map do |element|
  #   #   p element.content
  #



#   private
#
#     def set_representative
#       @representative = Representative.find(params[:id])
#     end
#
#     def representative_params
#       params.fetch(:representative, {})
#     end
end
