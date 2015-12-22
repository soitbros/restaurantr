require 'rails_helper'

RSpec.describe Employee, type: :model do

  let(:employee) { Employee.create({ username: 'bob', password: 'bob', email: 'bob@gmail.com', rights_class: 1, id: 1 }) }

  it "should no longer be in the databse when destroyed" do
    employee2 = Employee.create({ username: 'bob', password: 'bob', email: 'bob@gmail.com', rights_class: 1, id: 2 })

    employee2.destroy

    actual = Employee.all.length
    expected = 0
    expect(actual).to eq(expected)
  end
end
