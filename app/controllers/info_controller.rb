class InfoController < ApplicationController
  def index
    file = File.read('/opt/app-root/data/info.json')
    data_hash = JSON.parse(file)
    @title = data_hash['title']
    @description = data_hash['description']
  end
end
