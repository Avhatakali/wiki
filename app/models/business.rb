class Business < ApplicationRecord

  has_many:places
  validates :business_type, presence: true,
                    length: { minimum: 5 }
end
