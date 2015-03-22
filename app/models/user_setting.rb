class UserSetting < ActiveRecord::Base
  belongs_to :user
  validates :key, :value,  presence: true

  def get_value
    if(self.value == "true")
      return true
    elsif(self.value == "false")
        return false
    else
      return self.value =~ /\A\d+\Z/ || Float(self.value) ? self.value.to_f : self.value
    end
  end
end
