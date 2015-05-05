require 'rails_helper'

RSpec.describe "pessoas/new", type: :view do
  before(:each) do
    assign(:pessoa, Pessoa.new(
      :nome => "MyString",
      :telefone => "MyString"
    ))
  end

  it "renders new pessoa form" do
    render

    assert_select "form[action=?][method=?]", pessoas_path, "post" do

      assert_select "input#pessoa_nome[name=?]", "pessoa[nome]"

      assert_select "input#pessoa_telefone[name=?]", "pessoa[telefone]"
    end
  end
end
