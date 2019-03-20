module ApplicationHelper
  def search_pagination_url(page)
    url_for params.permit(:q).merge(page: page)
  end
end
