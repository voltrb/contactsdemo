class ContactsController < ModelController
  reactive_accessor :_query

  def index
    new()
  end

  def new
    self.model = store._contacts.buffer
  end

  def select(contact)
    self.model = contact.buffer
  end

  def remove(contact)
    queried_contacts.delete(contact)
  end

  def queried_contacts
    @queried_contacts ||= store._contacts.find({_name: { '$regex' => _query.or(''), '$options' => 'i' }})
  end

  def searching
    queried_contacts.state == :loading
  end

end