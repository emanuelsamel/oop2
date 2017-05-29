# Create a class called Book.
# Your class should have two class variables: @@on_shelf and @@on_loan. Both should start as empty arrays. @@on_shelf will contain the collection of book objects that are available to be lent out and @@on_loan will contain the collection of books that are currently being borrowed.
# Your class will also need an attr_accessor for due_date.
# Your class should have the following methods:
# an instance method initialize
# an instance method borrow
# an instance method return_to_library
# an instance method lent_out?
# a class method create
# a class method current_due_date
# a class method overdue_books
# a class method browse
# a class method available
# a class method borrowed

class Book
  @@on_shelf = []
  @@on_loan = []

  attr_accessor :due_date, :book, :author, :isbn

  def initialize(title, author, isbn)
    @book = title
    @author = author
    @isbn = isbn

  end
  #
  def borrow
    if lent_out? == true
      false
    else
      @due_date = Book.current_due_date
      @@on_shelf.delete(self)
      @@on_loan << self
      true
    end
  end
  # def borrow
  #     if lent_out? == true
  #       false
  #     else
  #       @due_date = Book.current_due_date   #set due date for book if lent out
  #       @@on_shelf.delete(self)     # delete from the shelf, add to list of borrowed books
  #       @@on_loan << self
  #       true
  #     end
  #   end

  def return_to_library
    if lent_out? == true
      false
    else
      @@on_loan.delete(self)
      @@on_shelf << self
      @due_date = nil
      true
    end

  end

  # def lent_out?
  #   if Book.borrowed == true
  #      true
  #    else
  #      false
  #    end
  # end

  def lent_out?
      if @@on_loan.include?(self) == true
        true
      else
      false
    end
    end
  def self.current_due_date
    date = Time.now
    due_date = date + (14)
  end

  def self.overdue_books
    overdue = []
    @@on_loan.each do |book|
      if @due_date < Time.now
        overdue << book
      end
    end
    overdue
  end

  def self.browse
    @@on_shelf.sample
  end


  def self.available
    @@on_shelf
  end

  def self.borrowed
    @@on_loan
  end

  def self.create(title, author, isbn)
    new_book = Book.new(title, author, isbn)
    @@on_shelf << new_book
    new_book
  end

end


sister_outsider = Book.create("Sister Outsider", "Audre Lorde", "9781515905431")
aint_i = Book.create("Ain't I a Woman?", "Bell Hooks", "9780896081307")
if_they_come = Book.create("If They Come in the Morning", "Angela Y. Davis", "0893880221")
puts sister_outsider.lent_out?
puts sister_outsider.borrow # true
puts sister_outsider.lent_out? # true
puts sister_outsider.borrow
