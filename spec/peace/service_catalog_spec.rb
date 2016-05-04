require 'spec_helper'

describe Peace::ServiceCatalog do
  let(:service_catalog){ Rackspace.service_catalog }

  it 'has many services' do
    expect(service_catalog.services).to be_kind_of(Array)
  end

  it 'has an access token' do
    expect(service_catalog.access_token).not_to be_empty
  end

  it 'has an tenant id' do
    expect(Rackspace.tenant_id).not_to be_empty
  end

  it 'can get a url based on service name and region' do
    expect(service_catalog.url_for('compute')).to match_regex(/https:\/\/[a-z]{3}.servers.api.rackspacecloud.com\/v2\/[0-9]{6}/)
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
