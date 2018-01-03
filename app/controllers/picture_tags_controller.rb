class PictureTagsController < ApplicationController
  def index
    @picture_tags = PictureTag.all

    render("picture_tags/index.html.erb")
  end

  def show
    @picture_tag = PictureTag.find(params[:id])

    render("picture_tags/show.html.erb")
  end

  def new
    @picture_tag = PictureTag.new

    render("picture_tags/new.html.erb")
  end

  def create
    @picture_tag = PictureTag.new

    @picture_tag.actor_id = params[:actor_id]
    @picture_tag.picture_id = params[:picture_id]

    save_status = @picture_tag.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/picture_tags/new", "/create_picture_tag"
        redirect_to("/picture_tags")
      else
        redirect_back(:fallback_location => "/", :notice => "Picture tag created successfully.")
      end
    else
      render("picture_tags/new.html.erb")
    end
  end

  def edit
    @picture_tag = PictureTag.find(params[:id])

    render("picture_tags/edit.html.erb")
  end

  def update
    @picture_tag = PictureTag.find(params[:id])

    @picture_tag.actor_id = params[:actor_id]
    @picture_tag.picture_id = params[:picture_id]

    save_status = @picture_tag.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/picture_tags/#{@picture_tag.id}/edit", "/update_picture_tag"
        redirect_to("/picture_tags/#{@picture_tag.id}", :notice => "Picture tag updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Picture tag updated successfully.")
      end
    else
      render("picture_tags/edit.html.erb")
    end
  end

  def destroy
    @picture_tag = PictureTag.find(params[:id])

    @picture_tag.destroy

    if URI(request.referer).path == "/picture_tags/#{@picture_tag.id}"
      redirect_to("/", :notice => "Picture tag deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Picture tag deleted.")
    end
  end
end
