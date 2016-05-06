class Rackspace::Orchestration::Stack < Peace::Model
  include Peace::Details

  def abandon_stack; end
  def build_info; end
  def get_stack_template; end
  def list_stack_data; end
  def list_stack_events; end
  def preview_stack; end
  def validate_template; end
end
