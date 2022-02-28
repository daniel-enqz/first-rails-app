class PagesController < ApplicationController
  def about
    @members = %w[thanh dimitri germain damien julien]

    if params[:member]
      @members = @members.select { |member| member.start_with?(params[:member]) }
    end
  end

  def home
  end
end
