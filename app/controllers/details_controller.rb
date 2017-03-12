class DetailsController < ApplicationController
  def create
    detail = Detail.new
    detail.attributes = input_params
    detail.user_id = current_user.id
    if detail.valid? # バリデーションチェック
      detail.save!
      flash[:notice] = I18n.t('detail.created')
      redirect_to restaurant_path(detail.restaurant_id)
    else
      flash[:alert] = detail.errors.full_messages
      redirect_to request.referer
    end
  end

  def destroy
    detail = Detail.find(params[:id])
    restaurant_id = detail.restaurant_id
    detail.destroy!
    flash[:notice] = I18n.t('detail.deleted')
    redirect_to restaurant_path(restaurant_id)
  end

  private

  def input_params
    params.require(:detail).permit(:restaurant_id, :body)
  end
end