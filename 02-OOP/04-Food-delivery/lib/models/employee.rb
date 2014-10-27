class Employee

  attr_reader :name, :password, :status

  def initialize(name, password, status)
    @name = name
    @password = password
    @status = status

    @@password_hash ||= {}
    @@status_hash ||= {}

    @@password_hash[@name] = @password
    @@status_hash[@name] = @status
  end

  def self.password_hash
    @@password_hash
  end

  def self.status_hash
    @@status_hash
  end

end