class Notice < ActiveRecord::Base
  attr_accessible :body, :date, :title, :person_id
  belongs_to :person, :dependent => :destroy
end
