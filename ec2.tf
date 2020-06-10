provider "aws" {
   region = "us-east-1"
}

resource "aws_instance" "ec2-server" {
  ami           = "ami-0c322300a1dd5dc79"
  instance_type = "t2.micro"
  key_name      = "terraform-key"
  connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("./terraform-key.pem")
    host     = self.public_ip
  }
  
  tags = {
    Name = "Jenkins-Server-terraform"
  }       
  }

  

 

  

 

  
