class SearchController < ApplicationController
  def index
    @members = PropublicaData.new.response(params[:state])
    # data = PropublicaData.new
    # @members = data.response(params[:state])
    # conn = Faraday.new(url: "https://api.propublica.org") do |faraday|
    #   faraday.headers["X-API-KEY"] = ENV["PROPUBLICA_API_KEY"]
    # end
    #
    # response = conn.get("/congress/v1/members/house/#{state}/current.json")
    # json = JSON.parse(response.body, symbolize_names: true)
    # @members = json[:results]

  end
end
