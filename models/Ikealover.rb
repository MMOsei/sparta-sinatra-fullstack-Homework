class Ikealover

  attr_accessor :id, :first_name, :last_name, :ikea_visits

  def self.open_connection
    conn = PG.connect( dbname: 'ikeamalt_data', port: 5431 )
  end

  def self.all

    conn = self.open_connection

    sql = "SELECT * FROM mock_data ORDER BY id"

    results = conn.exec(sql)

    ikealovers = results.map do |ikealover|
      self.hydrate ikealover
    end

    ikealovers

  end

  def save

    conn = Ikealover.open_connection

    if (!self.id)
      sql = "INSERT INTO mock_data (first_name,last_name,ikea_visits) VALUES ('#{self.first_name}','#{self.last_name}','#{self.ikea_visits}')"
    else
      sql = "UPDATE mock_data SET first_name='#{self.first_name}', last_name='#{self.last_name}', ikea_visits='#{self.ikea_visits}' WHERE id ='#{self.id}'"
    end

    conn.exec(sql)

  end

  def self.find id

    conn = self.open_connection

    sql = "SELECT * FROM mock_data WHERE id=#{id} LIMIT 1"

    ikealovers = conn.exec(sql)

    ikealover = self.hydrate ikealovers[0]

    ikealover

  end

  def self.destroy id
    conn = self.open_connection

    sql = "DELETE FROM mock_data WHERE id=#{id}"

    conn.exec(sql)
  end

  def self.hydrate ikeamalt_data
    ikealover = Ikealover.new

    ikealover.id = ikeamalt_data['id']
    ikealover.first_name = ikeamalt_data['first_name']
    ikealover.last_name = ikeamalt_data['last_name']
    ikealover.ikea_visits = ikeamalt_data['ikea_visits']

    ikealover

  end

end
