terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}

resource "random_pet" "example" {
  length = 2
}

resource "random_integer" "example" {
  min = 1
  max = 100
}

output "pet_name" {
  value = random_pet.example.id
}

output "lucky_number" {
  value = random_integer.example.result
}
