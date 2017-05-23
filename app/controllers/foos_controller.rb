class FoosController < JsonRestController
  def model_params
    params.require(:foo).permit(:name)
  end
end
