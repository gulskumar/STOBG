/*
    Copyright 2021 Google. 
    This software is provided as-is, without warranty or representation for any use or purpose. 
    Your use of it is subject to your agreement with Google. 
  */


variable "organization_id" {
  type        = string
  description = "Details of organization where resource is to be created. Should be in the form organization/organizationID."
}

#----------- Root Team Folder ----------------------#

variable "root_folder_name" {
  type        = string
  description = "Name of the root Team folder to be created."
}

      
#----------- First level Folder ---------------#
      
variable "first_level_folder_create" {
  type        = bool
  description = "Decision whether environment folders to be created under root Team folder."
  default     = true


variable "first_level_folder_type" {
  type        = list(string)
  description = "Name of the folder to be created inside root folder."
}
 
 #----------- second level Folder ---------------# 
  
variable "second_level_folder_create" {
  type        = bool
  description = "Decision whether environment folders to be created under first level folder."
  default     = true
}
      
variable "second_level_folder_type" {
  type        = list(string)
  description = "Name of the folder to be created inside root folder."
}
  
 #----------- third level Folder ---------------# 
     
variable "third_level_folder_create" {
  type        = bool
  description = "Decision whether environment folders to be created under second level folder."
  default     = true
}
  
variable "third_level_folder_type" {
  type        = list(string)
  description = "Name of the folder to be created inside root folder."
}
  
