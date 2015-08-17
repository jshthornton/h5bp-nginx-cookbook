require 'chefspec'
require 'chefspec/berkshelf'

describe 'nginxh5bp::default' do
  let :chef_run do
    ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '14.04')
  end

  it 'should do some magic' do
    chef_run.converge(described_recipe)
  end
end