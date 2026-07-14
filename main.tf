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

resource "random_pet" "example2" {
  length = 3
}


output "pet_name" {
  value = random_pet.example.id
}

output "lucky_number" {
  value = random_integer.example.result
}

output "pet_name2" {
  value = random_pet.example2.id
} 
