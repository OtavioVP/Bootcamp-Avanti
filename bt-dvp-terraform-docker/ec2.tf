resource "aws_instance" "sever-docker-app" {
  ami                    = "ami-0c3b809fcf2445b6a"
  instance_type          = "t2.micro"
  key_name               = "key-bt-terraform"
  vpc_security_group_ids = [aws_security_group.bt-avantiSG-app.id]
  user_data              = file("script.sh")

  tags = {
    Name = "sever-docker-app"
  }
}
