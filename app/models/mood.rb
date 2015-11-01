class Mood < ActiveRecord::Base
	has_many :cocktails
end
