module Types
    module Input
      class ChangeItemQuantityInputType < Types::BaseInputObject
        argument :quantity, Integer, required: true

      end
    end
end