class HomesController < ApplicationController
  def top
    @user = User.find(params[:id])
  end
end
