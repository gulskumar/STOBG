/*
    Copyright 2021 Google. 
    This software is provided as-is, without warranty or representation for any use or purpose. 
    Your use of it is subject to your agreement with Google. 
  */

module "root_folder_name" {
  source = "../../modules/terraform-google-folder-structure"
  root_folder_name = var.root_folder_name
  first_level_folder_create = var.first_level_folder_create
  parent = var.organization_id
}

module "first_level_folder_name" {
  source = "../../modules/terraform-google-folder-structure"
  first_level_folder_name = var.first_level_folder_type
  second_level_folder_create = var.second_level_folder_create
  parent = var.organization_id
}

module "second_level_folder_name" {
  source = "../../modules/terraform-google-folder-structure"
  second_level_folder_name = var.second_level_folder_type
  third_level_folder_create = var.third_level_folder_create
  parent = var.organization_id
}

module "third_level_folder_name" {
  source = "../../modules/terraform-google-folder-structure"
  third_level_folder_name = var.third_level_folder_type
  third_level_folder_create = var.third_level_folder_create
  parent = var.organization_id
}
