# frozen_string_literal: true

module SwitchLocales
  class Update
    include BaseService

    attr_accessor :cookies, :params, :current_user

    def initialize(params, cookies, current_user)
      @cookies      = cookies
      @params       = params
      @current_user = current_user
    end

    def call
      return if I18n.available_locales.map(&:to_s).exclude?(locale)

      cookies.permanent[:locale] = locale
      current_user&.update(locale:)
      I18n.locale = locale
    end

    private

    def locale
      @locale ||= params[:locale] || I18n.default_locale
    end
  end
end
