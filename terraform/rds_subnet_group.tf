resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "three-tier-db-subnet-group"
  subnet_ids = [
    aws_subnet.private.id,
    aws_subnet.private2.id
  ]

  tags = {
    Name = "three-tier-db-subnet-group"
  }
}
