class Booking < ActiveRecord::Base
  attr_accessible :end_date, :start_date, :classroom_id, :cohort_id, :classroom, :cohort

  belongs_to :cohort
  belongs_to :classroom

  validate :room_free

  def classroom_free?
    result = ActiveRecord::Base.connection.select_one <<-SQL
      SELECT COUNT(*) as count FROM "bookings"
      WHERE ("classroom_id" = #{classroom_id})
        AND (("end_date" BETWEEN '#{start_date}' AND '#{end_date}')
        OR ("start_date" BETWEEN '#{start_date}' AND '#{end_date}')
        OR (("start_date" < '#{start_date}') AND ("end_date" > '#{end_date}')))
    SQL
    result["count"] == 0
  end

  def room_free
    unless classroom_free?
      errors[:base] << "This classroom is not free on all those dates - please check classroom bookings"
    end
  end  

end
