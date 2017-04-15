class ZipController < ApplicationController

  def home
    @users = User.all

    @issues_select = []
    Issue.find_each do |x|
    @issues_select  << [x.readable_name, x.topic] #might be able to remove a topic

  end


  end













end
