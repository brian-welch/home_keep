module ApplicationHelper

  def title
    content_tag(:title, @title || "Home Keep: Home Automation Dashboard")
  end

  def buliding_typ_icon(instance)
    type_arr = ["office", "residence", "factory", "storage", "multi-residence", "commercial", "restaurant"]
    icon_arr = ["building", "home", "industry", "warehouse", "hotel", "hand-holding-usd", "utensils"]
    return icon_arr[type_arr.index(instance.building_type.name)]
  end

end
