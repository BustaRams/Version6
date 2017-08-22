class ContestParticipant < MailForm::Base
  attribute :first_name
  attribute :last_name
  attribute :email
  attribute :date_of_birth
  attribute :dream_destinations
  attribute :languages
  attribute :position
  attribute :why_to_choose
  attribute :friends

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :date_of_birth, presence: true
  validates :dream_destinations, presence: true
  validates :languages, presence: true
  validates :position, presence: true
  validates :why_to_choose, presence: true
  validates :friends, presence: true

  def headers
    {
      subject: "New contest participant",
      to: "dreamlifevoyajers@gmail.com",
      from: %("#{first_name}" <#{email}>)
    }
  end
end


