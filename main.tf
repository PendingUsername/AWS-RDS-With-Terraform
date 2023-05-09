provider "aws" {
  profile = "your_cli_profile"
  region  = "us-east-1"
}

resource "aws_db_parameter_group" "default" {
  name   = "default-mysql8-0"
  family = "mysql8.0"
}

resource "aws_db_instance" "default" {
  identifier           = "database-name-here"
  allocated_storage    = 20
  storage_type         = "gp2" 
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  name                 = "metadata"
  username             = "admin"
  password             = "your-password-here"
  parameter_group_name = aws_db_parameter_group.default.name
  skip_final_snapshot  = true
  availability_zone    = "your-region-here"
  publicly_accessible  = true

}



