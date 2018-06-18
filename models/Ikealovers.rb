class Ikealovers

  attr_accessor :id, :first_name, :last_name, :ikea_visits, :gender

  def self.open_connection
    conn = PG.connect( dbname: 'ikeamalt_data' )
  end

  def self.all

    conn = self.open_connection

    sql = "SELECT * FROM ikeamalt_data ORDER BY id"

    results = conn.exec(sql)

    ikealovers = results.map do |ikealover|
      self.hydrate ikeavisit
    end

    ikeavisits

  end

  def save

    conn = Ikeavisit.open_connection

    if (!self.id)
      sql = "INSERT INTO ikeamalt_data (first_name,last_name,ikea_visits,gender) VALUES ('#{self.first_name}','#{self.last_name}','#{self.ikeikea_visits}','#{self.gender}')"
    else
      sql = "UPDATE ikeamalt_data SET first_name='#{self.first_name}', last_name='#{self.last_name}', ikea_visits='#{self.ikea_visits}', gender='#{self.gender}' WHERE id ='#{self.id}'"
    end

    conn.exec(sql)

  end

  def self.find id

    conn = self.open_connection

    sql = "SELECT * FROM ikeamalt_data WHERE id=#{id} LIMIT 1"

    ikealovers = conn.exec(sql)

    ikealover = self.hydrate ikealovers[0]

    ikealover

  end

  def self.destroy id
    conn = self.open_connection

    sql = "DELETE FROM ikeamalt_data WHERE id=#{id}"

    conn.exec(sql)
  end

  def self.hydrate ikeamalt_data
    ikealover = Ikealover.new

    ikealover.id = ikeamalt_data['id']
    ikealover.first_name = ikeamalt_data['first_name']
    ikealover.last_name = ikeamalt_data['last_name']
    ikealover.ikea_visits = ikeamalt_data['ikea_visits']
    ikealover.gender = ikeamalt_data['gender']

    ikealover

  end

end
