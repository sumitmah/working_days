require 'spec_helper'

describe Numeric do

  context "#next" do
    test_cases = [[Date.civil(2013, 1, 18), 10, Date.civil(2013, 2, 1), "exactly 10th day excluding today"],
                  [Date.civil(2012, 12, 24), 10, Date.civil(2013, 1, 10), "shifted due to holiday on 1st Jan"],
                  [Date.civil(2012, 11, 14), 10, Date.civil(2012, 11, 28), "shifted due to weekend"],
                  [Date.civil(2013, 8, 5), 10, Date.civil(2013, 8, 19), "shifted due to weekend"],
                  [Date.civil(2012, 12, 12), 10, Date.civil(2012, 12, 28), "shifted due to christmas holidays"],
                  [Date.civil(2012, 12, 31), 1, Date.civil(2013, 1, 2), "shifted due to holiday on 1st Jan"]
    ]

    test_cases.each do |date, days, expected_date, reason|
      it "should return #{expected_date} because #{reason}" do
        days.working_days_from(date).should == expected_date
      end
    end
  end

  context '#before' do
    test_cases = [[Date.civil(2013, 2, 1), 10, Date.civil(2013, 1, 18), "exactly 10 days before excluding today"]]

    test_cases.each do |date, days, expected_date, reason|
      it "should return #{expected_date} because #{reason}" do
        days.working_days_before(date).should == expected_date
      end
    end

  end

end