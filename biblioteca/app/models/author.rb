class Author < ApplicationRecord
  has_many :books

<<<<<<< HEAD
  validates_presence_of :name, message: "O nome não pode ser vazio"
  # validates_presence_of :birthdate, message: "A data de nascimento não pode ser vazio"
  # validates_uniqueness_of :name, message: "O autor já foi cadastrado"
=======
  validates_presence_of :name, :birthdate
  validates_uniqueness_of :name
>>>>>>> 591b2ac9269ab7abd01edc3f85ebb94f87ae6fd7
end
