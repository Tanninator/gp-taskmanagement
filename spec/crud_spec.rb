require 'spec_helper'

describe  "CRUD Actions on Tasks" do
  describe 'instance' do
    before(:each) {@task = Task.create(:title => 'clean')}
    describe 'when creating task' do
      subject {@task}
      it {should == (Task.find_by title:'clean')}
    end
  end
end
