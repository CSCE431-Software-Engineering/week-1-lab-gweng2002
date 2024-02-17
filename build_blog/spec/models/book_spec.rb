require 'rails_helper'

RSpec.describe Book, type: :model do
  it 'is valid with a title' do
    book = Book.new(title: 'Test Title')
    expect(book).to be_valid
  end
end
