class Comment < ApplicationRecord
  include Visible

  belongs_to :article # Each comment belongs to one article
end
