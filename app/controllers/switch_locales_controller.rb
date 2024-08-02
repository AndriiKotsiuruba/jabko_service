# frozen_string_literal: true

class SwitchLocalesController < ApplicationController

  def update
    locale = params[:locale] || I18n.default_locale
    if I18n.available_locales.map(&:to_s).include?(locale)
      cookies.permanent[:locale] = locale
      I18n.locale = locale
    end

    redirect_to request.referer || root_path
  end

end
