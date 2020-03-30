class ContactPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def contact_email?
      true
    end
  end
end
