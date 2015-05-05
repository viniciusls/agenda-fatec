require 'rails_helper'

RSpec.describe "pessoas/edit", type: :view do
  before(:each) do
    @pessoa = assign(:pessoa, Pessoa.create!(
      :nome => "MyString",
      :telefone => "MyString"
    ))
  end

  it "renders the edit pessoa form" do
    render

    assert_select "form[action=?][method=?]", pessoa_path(@pessoa), "post" do

      assert_select "input#pessoa_nome[name=?]", "pessoa[nome]"

      assert_select "input#pessoa_telefone[name=?]", "pessoa[telefone]"
    end
  end
end
