class RepresentativeController < ApplicationController
  before_action :set_representative, only: [:show, :edit, :update, :destroy]


  def index
    @representative = Representative.all
  end

#how do we concenetante the zipcode into the url hash
  def show
        url = "http://whoismyrepresentative.com/getall_mems.php?zip=#{#{#{#{}}}}

        response = HTTParty.get url

        # puts response.headers['content-type']
        #
        # puts response.body

        dom = Nokogiri::HTML(response.body)

        dom.css("a.hdrlnk").map do |element|
          #   p element.content
    end
  end

  def new
    @representative = Representative.new
  end

  def edit
  end

  def create
    @representative = Representative.new(representative_params)

    respond_to do |format|
      if @representative.save
        format.html { redirect_to @representaitve, notice: 'Representative was successfully created.' }
        format.json { render :show, status: :created, location: @representaitve }
      else
        format.html { render :new }
        format.json { render json: @representative.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @representative.update(representative_params)
        format.html { redirect_to @representative, notice: 'Representative was successfully updated.' }
        format.json { render :show, status: :ok, location: @representative }
      else
        format.html { render :edit }
        format.json { render json: @representative.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @representative.destroy
    respond_to do |format|

      ###Need to set Redirect
      format.html { redirect_to , notice: 'Representative was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_representative
      @representative = Representative.find(params[:id])
    end

    def representative_params
      params.fetch(:representative, {})
    end
end
