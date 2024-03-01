class Role < ApplicationRecord
    has_many :Users, class_name: "User", foreign_key: "reference_id"
end
