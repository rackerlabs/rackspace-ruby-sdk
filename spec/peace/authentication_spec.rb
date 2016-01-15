describe Peace::Authentication do

  describe '#login' do
    let(:service_catalog){ Peace::ServiceCatalog.for('x', 'y') }

    it 'returns a ServiceCatalog' do
      expect(service_catalog).to be_kind_of(Peace::ServiceCatalog)
    end

    it 'has many services' do
      expect(service_catalog.services).to be_kind_of(Array)
    end

    it 'has an access token' do
      expect(service_catalog.access_token).not_to be_empty
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

end
