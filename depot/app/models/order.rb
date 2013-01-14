class Order < ActiveRecord::Base
	Payment_Types = [ "Check", "Credit card", "Purchase order" ]
	validates :name, :address, :email, presence: true
	validates :pay_type, inclusion: Payment_Types
end
