class Employee < ActiveRecord::Base

def friendly_update_at
  updated_at.strftime(" %A %B %C, %Y")
end

end
