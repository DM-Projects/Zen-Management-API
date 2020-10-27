class DashboardAccessController < ApplicationController

  def initialize(de, mp)
    @de = de
    @mp = mp
  end

  def mp
    return @mp
  end

  def de
    return @de
  end

  def complexDeMp
    return {:de => @de, :mp => @mp}
  end

end
