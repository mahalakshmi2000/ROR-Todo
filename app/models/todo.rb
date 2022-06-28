class Todo < ApplicationRecord
    def get_data
        "#{Task} #{Date} #{Status} #{created_at.to_date}"
    end
end
