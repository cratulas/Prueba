class HomeController < ApplicationController
  def dashboard
      @relations = Relation.group(:type_id).count

  end
end