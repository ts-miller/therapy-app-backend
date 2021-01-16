class ClientSerializer < ActiveModel::Serializer
    attributes :id, :first_name, :last_name, :age, :location, :summary, :appointments

    # def appointments
    #     self.object.appointments.map do |app|
    #         {}
    #     end
    # end
end
