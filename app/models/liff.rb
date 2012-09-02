class Liff < ActiveRecord::Base
  attr_accessible :definition, :user, :word
  acts_as_taggable
  acts_as_taggable_on :subject, :grammer
end
