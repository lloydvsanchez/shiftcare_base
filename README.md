## ShiftCare Clients Parser
#### Run:
- on cmd `ruby main.rb`
  
#### Command list:
    S - search for clients by name given a query string
    CD - check for clients with duplicate emails
    quit - to quit
    
    Examples:
        'S john' - will display clients with names containing the substring 'john'
        result:
            {"id"=>1, "full_name"=>"John Doe", "email"=>"john.doe@gmail.com"}
            {"id"=>3, "full_name"=>"Alex Johnson", "email"=>"alex.johnson@hotmail.com"}

        'CD' - will list emails used by multiple clients, including the number of clients using such email
        result:
            {"jane.smith@yahoo.com"=>2}            

#### Tests:
- on cmd `ruby clients_parser_spec.rb`
