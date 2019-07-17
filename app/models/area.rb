class Area < ApplicationRecord

	has_many :farms, dependent: :destroy

def countup_number(number)
	number = number + 1
	return number
end

end
