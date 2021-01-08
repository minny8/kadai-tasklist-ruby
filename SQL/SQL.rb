
require 'mysql2'

i=1

status = ["未実施", "進行中", "完了" ]

while i <= 110 do
  
  client = Mysql2::Client.new(host: "localhost", username: "root", database: 'tasklist_development', encoding: 'utf8')
  
  client.query("INSERT INTO tasks(content,status) values('#{'sample'+ i.to_s}','#{status.sample}')")
  
  i+=1
end