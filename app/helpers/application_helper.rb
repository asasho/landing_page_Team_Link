module ApplicationHelper
  def full_title(page_title = '', admin = false)
    if admin
      base_title = "TeamLink(管理者用)"
    else 
      base_title = "Team Link"
    end
    
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
