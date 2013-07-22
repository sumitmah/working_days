require 'spec_helper'

describe Date do
  context '#is_working_day?' do
    it 'should return true if date is working date' do
      Date.civil(2013, 4, 10).is_working_day?.should be_true
    end

    it 'should return false if date is a saturday' do
      Date.civil(2013, 4, 6).is_working_day?.should be_false
    end

    it 'should return false if date is a sunday' do
      Date.civil(2013, 4, 7).is_working_day?.should be_false
    end

    it 'should return false if date is a holiday' do
      Date.civil(2013, 1, 1).is_working_day?.should be_false
    end
  end

  context 'next_working_date' do
    it 'should return next day\'s date if it is a working date' do
      Date.civil(2013,4,10).next_working_date.should == Date.civil(2013,4,11)
    end

    it 'should return two days later if the next day is a holiday' do
      Date.civil(2012,12,31).next_working_date.should == Date.civil(2013,1,2)
    end
  end

  context 'prev_working_date' do
    it 'should return previous day\'s date if it is a working date' do
      Date.civil(2013,4,11).prev_working_date.should == Date.civil(2013,4,10)
    end

    it 'should return two days before if the previous day is a holiday' do
      Date.civil(2013,1,2).prev_working_date.should == Date.civil(2012,12,31)
    end
  end

end
