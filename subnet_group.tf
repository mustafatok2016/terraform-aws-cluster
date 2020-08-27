resource "aws_db_subnet_group" "default" {
  name       = "main"
  subnet_ids = [
      "${var.subnet_ids}"
  ]

  tags = {
    Name = "My DB subnet group"
  }
}