class Rackspace::Image < Peace::Service

  has_resource :image_sharing
  has_resource :image_tag
  has_resource :image_task
  has_resource :image

  def initialize
  end

end
