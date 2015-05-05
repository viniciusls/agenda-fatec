require 'rails_helper'

RSpec.describe Pessoa, type: :model do
  it { is_expected.to validate_presence_of(:nome) }
  it { is_expected.to validate_presence_of(:telefone) }
end
