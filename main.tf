resource "local_file" "pet" {
  filename = "./pets.txt"
  content="I am looking to get a pet for my daughter"
  file_permission = "0700"
}
resource "random_pet" "test_random" {

}
output "pet_output" {
  value = local_file.pet.filename
}

output "random_pet_output" {
  value = random_pet.test_random.id
}