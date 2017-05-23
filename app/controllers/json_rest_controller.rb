# TODO: write unit test with fake controller
class JsonRestController < ApplicationController
  protect_from_forgery with: :null_session
  before_action :find_model, only: [:show, :update, :destroy]

  def index
    assign_model_instance(model_class.all)
  end

  def show; end

  def create
    model = model_class.new(model_params)
    assign_model_instance(model)

    render_json(model.save, :created)
  end

  def update
    model = model_instance

    render_json(model.update(model_params))
  end

  def destroy
    model = model_instance

    render_json(model.destroy)
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through
  def model_params
    raise "Must implement abstract method #{__method__}"
  end

  def render_json(succeeded, status = :ok)
    model = model_instance

    respond_to do |format|
      if succeeded && model.errors.blank?
        # TODO: test return status codes
        format.json { render :show, status: status }
      else
        format.json { render json: model.errors, status: :unprocessable_entity }
      end
    end
  end

  def model_class
    @model_class_mem ||= model_name.constantize
  end

  def find_model
    model = model_class.find(params[:id])
    assign_model_instance(model)
  end

  def model_name
    controller_name.classify
  end

  def model_name_snakecase
    model_name.underscore
  end

  def assign_model_instance(model)
    instance_variable_set("@#{model_name_snakecase}", model)
  end

  def model_instance
    instance_variable_get("@#{model_name_snakecase}")
  end
end
