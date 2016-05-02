class Beloved::AutoScale::GroupConfig < Peace::Model
  attr_accessor :group, :name, :cooldown, :min_entities, :max_entities, :metadata
  attr_alias :min_entities, :minEntities
  attr_alias :max_entities, :maxEntities
end
