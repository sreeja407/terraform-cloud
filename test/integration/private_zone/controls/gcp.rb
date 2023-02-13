
control "gcp" do
    title "GCP Resources"
  
    describe google_dns_managed_zone(project: attribute('project_id'),  zone: attribute('name')) do
      its('dns_name') { should eq attribute('domain') }
      its('name_servers') { should eq attribute('name_servers') }
    end
  
    describe google_dns_resource_record_sets(project: attribute('project_id'), managed_zone: attribute('name')) do
      its('count') { should eq 6 }
      its('types') { should include 'A' }
      its('targets.flatten') { should include '127.0.0.1' }
    end
  
  end