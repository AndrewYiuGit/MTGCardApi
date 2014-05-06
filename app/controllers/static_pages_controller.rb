class StaticPagesController < ApplicationController

  def index
    @mtg_sets = MtgSet.all
  end

end