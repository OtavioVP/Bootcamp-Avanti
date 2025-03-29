resource "aws_instance" "web-server-2" {
  ami                    = "ami-0c3b809fcf2445b6a"
  instance_type          = "t2.micro"
  key_name               = "key-bt-terraform"
  vpc_security_group_ids = [aws_security_group.bt-avantiSG.id]
  user_data              = file("script.sh")

  tags = {
    Name = "web-server-2"
  }
}
