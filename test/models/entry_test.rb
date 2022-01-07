require "test_helper"

class EntryTest < ActiveSupport::TestCase
  test "is valid with valid attributes" do
    entry = Entry.new(meal_type: "Breakfast", carbohydrates: 1, proteins: 2, fats: 3, calories: 4)
    assert entry.save
  end

  test 'should not save entry without meal_type' do
    entry = Entry.new(carbohydrates: 1, proteins: 2, fats: 3, calories: 4)
    assert_not entry.save
  end

  test 'should not save entry without carbohydrates' do
    entry = Entry.new(meal_type: "Breakfast", proteins: 2, fats: 3, calories: 4)
    assert_not entry.save
  end

  test 'should not save entry without proteins' do
    entry = Entry.new(meal_type: "Breakfast", carbohydrates: 1, fats: 3, calories: 4)
    assert_not entry.save
  end

  test 'should not save entry without fats' do
    entry = Entry.new(meal_type: "Breakfast", carbohydrates: 1, proteins: 2, calories: 4)
    assert_not entry.save
  end

  test 'should not save entry without calories' do
    entry = Entry.new(meal_type: "Breakfast", carbohydrates: 1, proteins: 2, fats: 3)
    assert_not entry.save
  end
end
