# frozen_string_literal: true

class SwitchLocalesController < ApplicationController
  def update
    SwitchLocales::Update.call(params, cookies, current_user)

    redirect_to request.referer || root_path
  end
end
