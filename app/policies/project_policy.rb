class ProjectPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def index?
    record.user == user
    end

    def new?
     record.user == user
    end

    def create?
     user
    end
  end
end
