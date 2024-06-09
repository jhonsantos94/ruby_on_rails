class Item < ApplicationRecord
    validates :name, presence: { message: "El nombre no puede estar en blanco" },
                    length: { minimum: 3, maximum: 50, message: "El nombre debe tener entre 3 y 50 caracteres" },
                    uniqueness: { message: "Ya existe un item con este nombre" }
    validates :description, presence: { message: "La descripción no puede estar en blanco" },
                            length: { maximum: 200, message: "La descripción no puede tener más de 200 caracteres" }
    validates :quantity, presence: { message: "La cantidad no puede estar en blanco" },
                        numericality: { only_integer: true, greater_than_or_equal_to: 0, message: "La cantidad debe ser un número entero mayor o igual a cero" }
end