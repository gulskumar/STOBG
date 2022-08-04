variable "root_folder_name" {
  type = string
}

variable "first_level_folder_create" {
  type    = bool
  default = false
}

variable "first_level_folder_type" {
  type    = list(string)
  default = []
}

variable "second_level_folder_create" {
  type    = bool
  default = false
}

variable "second_level_folder_type" {
  type    = list(string)
  default = []
}

variable "third_level_folder_create" {
  type    = bool
  default = false
}

variable "third_level_folder_type" {
  type    = list(string)
  default = []
}

variable "parent" {
  type = string
}
