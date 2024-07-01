variable "person_data" {
    type = object({
      first_name = string
      last_name = string
      age = number

    })
    default = {
      first_name = "prasanth"
      last_name = "r"
      age = 28
    } 
}
