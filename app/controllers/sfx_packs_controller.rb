class SfxPacksController < ApplicationController
  def show
    @pack = SfxPack.find(params[:id])
    @designer = SoundDesigner.find(@pack.sound_designer_id)
    @designer_name = "#{@designer.first_name} #{@designer.last_name}"
  end
end