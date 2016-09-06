class Horario < ApplicationRecord
  belongs_to :local, class_name: "Local"
end
