class Rackspace::AutoScale::GroupConfig < Peace::Model
  attr_accessor :id, :group, :name, :cooldown, :min_entities, :max_entities, :metadata
  attr_with_alias :min_entities, :minEntities
  attr_with_alias :max_entities, :maxEntities
end
