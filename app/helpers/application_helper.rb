module ApplicationHelper

  def theme = cookies[:theme] || 'dark'
  def theme_icon = theme.eql?('dark') ? 'bi-sun-fill' : 'bi-moon-stars-fill'

end
