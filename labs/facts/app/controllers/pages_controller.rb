class PagesController < ApplicationController
  def home
    @facts = Fact.order(created_at: :desc).limit(20)
  end
end
