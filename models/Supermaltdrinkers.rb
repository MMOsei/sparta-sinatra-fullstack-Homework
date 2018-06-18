class Supermaltdrinkers

  attr_accessor :id, :first_name, :last_name, :supermalt_drinkers, :gender

  def self.open_connection
    conn = PG.connect( dbname: 'ikeamalt_data' )
  end

  def self.all

    conn = self.open_connection

    sql = "SELECT * FROM ikeamalt_data ORDER BY id"

    results = conn.exec(sql)

    supermaltdrinkers = results.map do |supermaltdrinker|
      self.hydrate ikeavisit
    end

    supermaltdrinkers

  end

  def save

    conn = Supermaltdrinker.open_connection

    if (!self.id)
      sql = "INSERT INTO ikeamalt_data (first_name,last_name,supermalt_drinkers,gender) VALUES ('#{self.first_name}','#{self.last_name}','#{self.supermalt_drinkers}','#{self.gender}')"
    else
      sql = "UPDATE ikeamalt_data SET first_name='#{self.first_name}', last_name='#{self.last_name}', supermalt_drinkers='#{self.supermalt_drinkers}', gender='#{self.gender}' WHERE id ='#{self.id}'"
    end

    conn.exec(sql)

  end

  def self.find id

    conn = self.open_connection

    sql = "SELECT * FROM ikeamalt_data WHERE id=#{id} LIMIT 1"

    supermaltdrinkers = conn.exec(sql)

    supermaltdrinker = self.hydrate supermaltdrinkers[0]

    supermaltdrinker

  end

  def self.destroy id
    conn = self.open_connection

    sql = "DELETE FROM ikeamalt_data WHERE id=#{id}"

    conn.exec(sql)
  end

  def self.hydrate ikeamalt_data
    supermaltdrinker = Supermaltdrinker.new

    supermaltdrinker.id = ikeamalt_data['id']
    supermaltdrinker.first_name = ikeamalt_data['first_name']
    supermaltdrinker.last_name = ikeamalt_data['last_name']
    supermaltdrinker.supermalt_drinkers = ikeamalt_data['ikesupermalt_drinkers']
    supermaltdrinker.gender = ikeamalt_data['gender']

    supermaltdrinker

  end

end
