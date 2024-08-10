# frozen_string_literal: true

module BaseService
  def self.included(base)
    base.prepend SimpleCommand
  end

  module ClassMethods
    def call(*)
      new(*).call
    end
  end
end
