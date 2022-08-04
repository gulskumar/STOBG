locals {

  team_folder_id         = var.team_folder_name == "" ? "" : google_folder.teams_folders[var.team_folder_name].name
  first_level_folder_map = var.first_level_folder_create ? zipmap(var.first_level_folder_type, flatten([for each_folder in range(length(var.first_level_folder_type)) : concat([], [local.team_folder_id])])) : {}
  first_level_folder_ids = var.first_level_folder_create ? tomap({ for key, value in google_folder.first_level_folders : key => value.name }) : tomap({})
  second_level_folder_map = var.second_level_folder_create ? zipmap(var.second_level_folder_type, flatten([for each_folder in range(length(var.second_level_folder_type)) : concat([], [local.first_level_folder_ids)])) : {}
  second_level_folder_ids = var.second_level_folder_create ? tomap({ for key, value in google_folder.second_level_folders : key => value.name }) : tomap({})
  third_level_folder_map = var.third_level_folder_create ? zipmap(var.third_level_folder_type, flatten([for each_folder in range(length(var.third_level_folder_type)) : concat([], [local.second_level_folder_ids)])) : {}
  third_level_folder_ids = var.third_level_folder_create ? tomap({ for key, value in google_folder.third_level_folders : key => value.name }) : tomap({})
}
    

resource "google_folder" "teams_folders" {

  for_each     = toset([var.team_folder_name])
  display_name = each.key
  parent       = var.parent
}
   
resource "google_folder" "first_level_folders" {

  for_each     = local.first_level_folder_map
  display_name = each.key
  parent       = each.value
}

resource "google_folder" "second_level_folders" {

  for_each     = local.second_level_folder_map
  display_name = each.key
  parent       = each.value
}
    
 resource "google_folder" "third_level_folders" {

  for_each     = local.third_level_folder_map
  display_name = each.key
  parent       = each.value
}
