class GlosaPatente < ApplicationRecord
  has_many :locales, class_name: "Local"
end
