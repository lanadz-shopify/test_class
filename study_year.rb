require 'rspec'

class StudyYear

  def initialize(date)
    @date = Date.parse(date)
  end

  def year
    (@date.month < 9) ? @date.year - 1 : @date.year
  end

end

describe StudyYear do
  describe '#year' do
    it { StudyYear.new('13/05/2013').year.should eq(2012) }
    it { StudyYear.new('01/09/2013').year.should eq(2013) }
  end
end
