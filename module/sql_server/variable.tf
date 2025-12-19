variable "sql_server" {
type = map(object({
  name                         = string
  resource_group_name          = string
  location                     = string
  version                      = number
  administrator_login          = string
  administrator_login_password = string
  minimum_tls_version          = number

  
    login_username = string
    object_id      = string

 tags = map(string) 
  }

)
)
}
