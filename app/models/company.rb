class Company < ApplicationRecord
	enum kind: {navy: 0, nvocc: 1, customer: 2}
	has_many :ships
end
