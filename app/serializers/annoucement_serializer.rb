class AnnoucementSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :user_id ,:typeHome, :description, :title, :adress, :zip_code, :city, :price, :size, :featured_image
  def featured_image
    if object.featured_image.attached?
      {
        url: rails_blob_url(object.featured_image)
      }
    end
  end
end
