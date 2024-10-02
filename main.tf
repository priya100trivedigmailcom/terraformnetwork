terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.69.0"
    }
  }
}

provider "aws" {
  
  region ="ap-south-1"
}

resource "aws_key_pair" "deployer" {
  key_name   = "Priyassh-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDRWBA8Ikoe3MD2xlyj8JDPy8tO9vvz2UH+nK3ehOsFISIUrWwGENgnjUS16AHKXjyo9BLU3XHx+Z4zGr5yUzlD/d99yOuZ/PHwTk2nJIRwdnarMLTcvt8RxWCPXaTkGIa1xVRSz+rREh5rOr7dJ+gufqtt9TUgtrZYzA7dOpgZ8tx1qUJ9oooKCs2pihPl9REPihFTtlc6s7BuajOXuFS9pS/FVnKLBr3b1ZvrwvH/yZD2YjMmoZarEJ0aKfKzYGASihbnwUaSIiAcTYGLZuTorMDOoXNU355TswSaAtsXtHb9KNq8maJ3R+I9uwVO0NzHzoZHq0SwTmQa9Qw7Am/Ovq5iDEmF1QlEhaH703DrZ1lzoXcs0rgTNWxm4HS0EixYw0TB1NYml4/e+mkxPAqJ013W9XtgEuB+JGYHFXZobBRFYu2wENWB44LL9yCRm/PWQqvFRBBM4kzaZKjcfP7a6WpSL5Wz8X+Ng7ABNt7Unzi+YTFg/7DRJGK9R7v8kv6f/M4/2zWC8pBEkEUJe7ZjCSHe817cvk9KExR25Wm3whnDSbeRXjhgATel0Hy4p8Lra+fx04dUemnGJfFcsp4hWGDuSMDQtgdPQek+gV14wFZf+F97B62CSFB+FDBBU9ueIiWK91m3Z/HZ3ceQGWdoFXRn6o+ku80BmLLhf91uDQ== priya100trivedi@gmail.com"
}
resource "aws_instance" "myec2" {
  ami                     = "ami-08718895af4dfa033"
  instance_type           = "t2.micro"
  key_name = "Priyassh-key"
}