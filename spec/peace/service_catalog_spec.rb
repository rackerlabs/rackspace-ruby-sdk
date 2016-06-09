require 'spec_helper'

describe Peace::ServiceCatalog, :vcr do
  before do
    ENV['SDK'] = "rackspace"
  end
  
  let(:service_catalog){ Peace.service_catalog }

  it 'sets the tenant_id globally' do
    expect(Peace.tenant_id).not_to be_nil
  end

  it 'sets the auth_token globally' do
    expect(Peace.auth_token).not_to be_nil
  end

  it 'sets the catalog globally' do
    expect(Peace.service_catalog).not_to be_nil
  end

  it 'knows which services are available' do
    expect(Peace.service_catalog.available_services).not_to be_nil
  end

  it 'require ENV["SDK"] to be either :rackspace or :openstack' do
    expect( Peace.service_catalog && Peace.sdk ).to eq('rackspace')
  end

  it 'knows the URL for a service based on name and region' do
    expect(Peace.service_catalog.url_for('compute')).not_to be_nil
  end

  it 'expects these env vars' do
    %w{RS_API_KEY RS_USERNAME RS_REGION_NAME}.each do |var|
      ENV[var] = nil
      expect{ Peace::ServiceCatalog.load!(:rackspace) }.to raise_error RuntimeError
      ENV[var] = "something"
    end
  end

  it 'has many services' do
    expect(service_catalog.services).to be_kind_of(Array)
  end

  it 'has an access token' do
    expect(service_catalog.access_token).not_to be_empty
  end

  it 'can get a url based on service name and region' do
    if ENV['RACKSPACE_MOCK'] == 'true'
      expect(service_catalog.url_for('compute')).to eq "http://localhost:7000/compute"
    else
      expect(service_catalog.url_for('compute')).to match_regex(/https:\/\/[a-z]{3}.servers.api.rackspacecloud.com\/v2\/[0-9]{6}/)
    end
  end

  describe '#load!' do
    it 'returns a ServiceCatalog' do
      expect(service_catalog).to be_kind_of(Peace::ServiceCatalog)
    end
  end

  describe "Services" do
    let(:service){ service_catalog.services.first }

    it 'has a name' do
      expect(service.name).not_to be_empty
    end

    it 'has endpoints' do
      expect(service.endpoints).to be_kind_of(Array)
    end


    describe 'Endpoints' do
      let(:endpoint){ service.endpoints.first }

      it 'has a region' do
        expect(endpoint.region).not_to be_empty
      end

      it 'has a tenant_id' do
        expect(endpoint.tenant_id).not_to be_empty
      end

      it 'has a public_url' do
        expect(endpoint.public_url).not_to be_empty
      end

      it 'has a internal_url' do
        expect(endpoint.internal_url).to be_nil
      end
    end
  end
end
