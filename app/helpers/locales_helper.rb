module LocalesHelper
  def locale_content_for(stuff)
    I18n.translate(stuff).html_safe
  end
end