variable "filename" {
  #   type=set(string)
  default = [
    "pet1.txt",
    "pet2.txt",
    "pet3.txt",
    "pet4.txt",
    "pet5.txt"
  ]
  description = "Define o nome do arquivo"
}

variable "content" {
  default     = "Thor"
  description = "Define o nome do pet"
}

variable "prefix" {
  default     = "Mrs"
  description = "Define o prefixo do random_pet"
}

variable "separator" {
  default     = ": "
  description = "Define o separator do random_pet"
}

variable "length" {
  default     = 1
  description = "Define o length do random_pet"
}
