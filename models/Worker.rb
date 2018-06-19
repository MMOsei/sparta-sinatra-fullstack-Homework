class Worker

  attr_accessor :id, :first_name, :last_name, :employer, :salary

  def self.open_connection
    conn = PG.connect( dbname: 'ikeamalt_data', port: 5431 )
  end

  def self.all

    conn = self.open_connection

    sql = "SELECT * FROM mock2_data ORDER BY id"

    results = conn.exec(sql)

    workers = results.map do |worker|
      self.hydrate worker
    end

    workers

  end

  def save

    conn = Worker.open_connection

    if (!self.id)
      sql = "INSERT INTO mock2_data (first_name,last_name,employer,salary) VALUES ('#{self.first_name}','#{self.last_name}','#{self.employer}','#{self.salary}')"
    else
      sql = "UPDATE mock2_data SET first_name='#{self.first_name}', last_name='#{self.last_name}', employer='#{self.employer}', salary='#{self.salary}' WHERE id ='#{self.id}'"
    end

    conn.exec(sql)

  end

  def self.find id

    conn = self.open_connection

    sql = "SELECT * FROM mock2_data WHERE id=#{id} LIMIT 1"

    workers = conn.exec(sql)

    worker = self.hydrate workers[0]

    worker

  end

  def self.destroy id
    conn = self.open_connection

    sql = "DELETE FROM mock2_data WHERE id=#{id}"

    conn.exec(sql)
  end

  def self.hydrate ikeamalt_data
    worker = Worker.new

    worker.id = ikeamalt_data['id']
    worker.first_name = ikeamalt_data['first_name']
    worker.last_name = ikeamalt_data['last_name']
    worker.employer = ikeamalt_data['employer']
    worker.salary = ikeamalt_data['salary']

    worker

  end

end
