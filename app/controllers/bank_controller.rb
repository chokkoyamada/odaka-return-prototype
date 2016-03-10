class BankController < ApplicationController
  def index
    if params['login_success'] == '1'
      @login_success = true
    end
    yml = YAML.load(File.read("db/seeds.yml"))
    @akiya = yml['akiya']
  end

  def show
  end

  def apply
  end
end
