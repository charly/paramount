require "test_helper"


class Book < ActiveRecord::Base
  paramount
end

class BookForm < Paramount::Model
end

class ActiveRecordTest < MiniTest::Unit::TestCase

  def setup
    @book = Book.new
  end


  def test_form
    assert @book.respond_to?(:form)
  end

  def test_form_class
    assert_equal BookForm, @book.form.class
  end

end