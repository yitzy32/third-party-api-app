class Api::TerminologiesController < ApplicationController
  def show
    response = HTTP.get("https://dictionaryapi.com/api/v3/references/thesaurus/json/polka?key=#{Rails.application.credentials.terminologies_api[:api_key]}")
    render json: response.parse
  end
end
