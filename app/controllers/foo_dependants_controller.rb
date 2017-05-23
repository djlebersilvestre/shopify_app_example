class FooDependantsController < JsonRestController
  def model_params
    params.require(:foo_dependant).permit(:foo_id, :category, :value)
  end
end
