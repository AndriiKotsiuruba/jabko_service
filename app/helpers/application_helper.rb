module ApplicationHelper

  def theme = cookies[:theme] || 'dark'
  def theme_icon = theme.eql?('dark') ? 'bi-sun-fill' : 'bi-moon-stars-fill'
  def authors_linkedin = 'https://www.linkedin.com/in/andrii-kotsiuruba-332b19290/'

end
