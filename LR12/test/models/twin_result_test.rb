require 'test_helper'

class TwinResultTest < ActiveSupport::TestCase
  # test 'results of calculations are different with different input parameters' do
  #   assert_not_equal TwinResult.where(before_result: 10).first_or_create.get_solution,
  #                    TwinResult.where(before_result: 5).first_or_create.get_solution
  # end
  #
  # test 'negative numbers gets nil' do
  #   assert_equal [], TwinResult.where(before_result: -10).first_or_create.get_solution
  # end
  #
  # test 'Adding data twice' do
  #   TwinResult.create  before_result: 10, result: ActiveSupport::JSON.encode([10, [11,13],[17,19]])
  #   TwinResult.create  before_result: 10, result: ActiveSupport::JSON.encode([10, [11,13],[17,19]])
  #   (TwinResult.find_by before_result: 10).destroy
  #   assert_nil TwinResult.find_by before_result: 10
  # end
  #
  # test 'Add data to DB' do
  #   TwinResult.create before_result: 10, result: ActiveSupport::JSON.encode([10, [11,13],[17,19]])
  #   assert_not_nil TwinResult.find_by before_result: 10
  # end
end
