module Api
  module V1
    class PeopleController < ApiController
      def create
        person = Person.new(name: params[:name])
        if person.save
          render json: {status: "success"}
        else
          render json: {status: "error"}
        end
      end

      def total
        people = Person.count
        render json: {  total_people: people }
      end
    end
  end
end