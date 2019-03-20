class ApplicationController < ActionController::Base
  def index
    if params[:q].present?
      @client = Octokit::Client.new
      @repositories = @client.search_repositories(params[:q], page: params[:page])
      %w[prev next last].each { |page_type| instance_variable_set("@#{page_type}", search_page(page_type.to_sym)) }
    end
  end

  private

  def search_page(page_type)
    return if @client.last_response.rels[page_type].blank?
    URI.decode_www_form(URI(@client.last_response.rels[page_type].href).query,
                        enc=Encoding::UTF_8, separator: '&', use__charset_: false,
                        isindex: false
                       ).assoc('page').last
  end
end
