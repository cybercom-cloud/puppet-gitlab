require 'spec_helper'

# Gitlab
describe 'gitlab::ci' do

  ### Gitlab::service
  describe 'gitlab::ci::service' do
    it { should contain_service('gitlab_ci').with(
      :ensure     => 'running',
      :hasstatus  => 'true',
      :hasrestart => 'true',
      :enable     => 'true'
    )}
  end
end
