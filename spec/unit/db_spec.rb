require 'db'

describe DB do
  describe '.setup' do
    it 'set up a connection to database' do
      expect(PG).to receive(:connect).with(dbname: 'test')
      DB.setup('test')
    end
  end

  it 'the connection persists' do
    connection = DB.setup('bookmark_manager_test')
    expect(DB.connection).to eq connection
  end

  describe '.query' do
    it 'execute query' do
      connection = DB.setup('bookmark_manager_test')
      expect(connection).to receive(:exec).with("test;")
      DB.query("test;")
    end
  end
end