class RolesController < ApplicationController
  before_action :authenticate_user!, exception: [:index, :show, :create]



end
