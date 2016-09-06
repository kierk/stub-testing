class InfoController < ApplicationController
  def index
    file = File.read('/data/info.json')
    data_hash = JSON.parse(file)
    @title = data_hash['title']
    @description = data_hash['description']
  end
end
