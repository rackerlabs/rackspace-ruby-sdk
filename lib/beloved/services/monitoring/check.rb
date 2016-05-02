class Beloved::Monitoring::Check < Peace::Model
  attr_accessor :entity, :label, :metadata, :target_alias, :target_resolver,
    :target_hostname, :period, :timeout, :type, :details, :disabled,
    :monitoring_zones_poll
end
