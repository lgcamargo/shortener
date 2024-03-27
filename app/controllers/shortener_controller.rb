class ShortenerController < ApplicationController
  skip_before_action :verify_authenticity_token, :only => :create
  def create
    @short= Short.new(original_link: params[:original_link])
    @short.original_link = @short.original_link
    @short.shortened_link = @short.shorten_link

    if @short.save 
      render body: @short.shortened_link
    else 
      render JSON: @short.errors, status: :unprocessable_entity
    end
  end

  def send_to_original
    @short = Short.find_by(shortened_link: params[:shortened_link])

    if @short
      redirect_to @short.original_link, allow_other_host: true 
    else
      render plain: 'Short URL not found', status: :not_found
    end
  end
end