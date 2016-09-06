class InfoController < ApplicationController
  def index
    file = File.read('/Users/apellitieri/Desktop/test.json')
    data_hash = JSON.parse(file)
    @title = data_hash['title']
    @description = data_hash['description']
  end
end
