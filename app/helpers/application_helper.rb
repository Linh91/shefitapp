module ApplicationHelper
  def app_n(page_title = ' ')
    app_title = "sheFit"
    if page_title.empty?
      app_title
    else
      app_title + " | " + page_title
    end
  end
end
