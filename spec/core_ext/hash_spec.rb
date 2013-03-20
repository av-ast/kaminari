require 'spec_helper'

describe '#deep_symbolize_keys' do
  before do
    @hash = {"a" => 1, "b" => {"c" => 2}}
  end
  subject { @new_hash = @hash.deep_symbolize_keys }
  it { should == {:a => 1, :b => {:c => 2}} }
end
