class FridaysController < ApplicationController
  def index
    @is_it_friday_somewhere = ActiveSupport::TimeZone.all.any? { |tz|
      Time.now.in_time_zone(tz).friday?
    }
  end
end
