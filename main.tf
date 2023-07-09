resource "local_file" "pet" {
  filename = "./pets.txt"
  content="I am looking to get a pet for my daughter"
  file_permission = "0700"
}

output "pet_output" {
  value = local_file.pet.filename
}