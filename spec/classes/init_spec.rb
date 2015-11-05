require 'spec_helper'
describe 'hyperv' do

  context 'with defaults for all parameters' do
    it { should contain_class('hyperv') }
  end
end
