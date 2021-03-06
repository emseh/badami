# frozen_string_literal: true

# app/controller/pages_controller.rb
class PagesController < ApplicationController
  def home
    redirect_to articles_path if logged_in?
  end

  def about; end
end
