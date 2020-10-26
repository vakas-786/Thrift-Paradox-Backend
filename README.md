# Thrift-Paradox-Backend
<a href='https://github.com/vakas-786/Thrift-Paradox' >See the Readme in the front end for more information</a>. 

# Models and Relationships 
User
```sh
    has_many :prizes 
    has_one :account
    has_many :transactions, through: :account
```

Transaction 
```sh
    belongs_to :account 
```

Prize

```sh
    belongs_to :user
```

Account 

```sh
    belongs_to :user
    has_many :transactions 
```



