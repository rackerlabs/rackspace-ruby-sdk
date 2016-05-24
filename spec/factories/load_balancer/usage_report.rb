FactoryGirl.define do
  factory :usage_report, class: Rackspace::LoadBalancer::UsageReport do
    id { SecureRandom.hex(25) }
    average_num_connections 0
    incoming_transfer 0
    outgoing_transfer 0
    average_num_connections_ssl 0
    incoming_transfer_ssl 0
    outgoing_transfer_ssl 0
    num_vips 0
    num_polls 0
    start_time ''
    end_time ''
    vip_type 0
    ssl_mode 0
    event_type 0
  end
end
