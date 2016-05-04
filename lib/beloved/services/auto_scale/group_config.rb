class Beloved::AutoScale::GroupConfig < Peace::Model
  attr_accessor :id, :group, :name, :cooldown, :min_entities, :max_entities, :metadata
  attr_alias :min_entities, :minEntities
  attr_alias :max_entities, :maxEntities


  request :get_group_config
  request :update_group_config
  request :get_launch_config
  request :update_launch_config
  
end
