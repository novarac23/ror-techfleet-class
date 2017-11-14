# I need a place to store journal entries
# I need a way to find a journal entry
# I need to be able o delete a journal entry

class Journal
  attr_accessor :pages

  def initialize(journal_name)
    @journal_name = journal_name
    @pages = []
  end

  def new_entry(page_title, content)
    pages << Page.new(page_title, content)
    puts "Thanks for adding a new page!"
  end

  def find_entry(page_title)
    pages.each do |page|
      if page.title == page_title
        puts "===== ** ====="
        puts "Your entry for that day was: "
        puts page.title
        puts page.content
        puts "===== ** ====="
      end
    end
  end

  def destroy_entry(page_title)
    pages.delete_if { |page| page.title == page_title }
    puts "You delete a #{page_title} entry"
  end
end

class Page
  attr_accessor :title, :content
  def initialize(title, content)
    @title = title
    @content = content
  end
end

journal = Journal.new("Nik's Journal")
journal.new_entry("Awesome Day", "I thought Ralph how to go to his couch")
journal.new_entry("Awesome Day2", "I had an ice cream")
journal.new_entry("Sad Day", "I had no ice cream")

journal.find_entry("Sad Day")

journal.destroy_entry("Awesome Day2")
