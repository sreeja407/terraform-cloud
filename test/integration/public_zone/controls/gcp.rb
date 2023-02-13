
control "gcp" do
    title "GCP Resources"
  
    describe google_dns_managed_zone(project: attribute('project_id'),  zone: attribute('name')) do
      it { should exist }
    end
  
    describe google_dns_resource_record_sets(project: attribute('project_id'), managed_zone: attribute('name')) do
      its('count') { should eq 6 }
      its('types') { should include 'A' }
      its('targets.flatten') { should include '127.0.0.1' }
    end
  
  end