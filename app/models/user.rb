class User
    include Mongoid::Document
    field :firstName, type: String
    field :lastName, type: String
    field :email, type: String

    validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }
    validates :firstName, :lastName, presence: true

    def self.custom(name)
        User.any_of({"firstName": /#{name}/}, {"lastName": /#{name}/}, {"email": /#{name}/})
    end
end
