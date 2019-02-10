module ApplicationHelper

  def title
    content_tag(:title, @title || "Home Keep: Home Automation Dashboard")
  end


end
