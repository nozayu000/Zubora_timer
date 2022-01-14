module ApplicationHelper
  # タブとページのタイトル表示
  def page_title
    title = "Zubora Timer"
    title = @page_title + "-" + title if @page_title
    title
  end 
  
  # メニューバーの表示
  def menu_link_to(text, path, options = {})
    content_tag(:li) do
      link_to_unless_current(text, path, options) do
        content_tag(:span, text)
      end 
    end
  end
end
