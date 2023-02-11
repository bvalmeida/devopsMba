resource "local_file" "pet" {
  count    = 5
  filename = var.filename[count.index]
  content  = random_pet.my-pet[count.index].id

  #   content = data.local_file.dog.content

  #   content  = random_pet.my-pet.id

  #   depends_on = [
  #     random_pet.my-pet
  #   ]

  #   lifecycle {
  #     prevent_destroy = false
  #   }

}

resource "random_pet" "my-pet" {
  count     = 5
  prefix    = var.prefix
  separator = var.separator
  length    = var.length
}

# data "local_file" "dog"{
#     filename = "dog.txt"
# }
