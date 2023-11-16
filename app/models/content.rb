class Content < ApplicationRecord
  belongs_to :article
  acts_as_list top_of_list: 0
end
