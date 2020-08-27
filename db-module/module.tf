
module "db" {
    source = "../"
    region = "us-east-2"

    subnet_ids = [
        "subnet-02279b14685a0ec62", 
        "subnet-0c1d1bd07f0537535", 
        "subnet-0a298137debd54fe8"
    ]

    security_group_name = "db"
    allowed_hosts = [
    "0.0.0.0/0"
    ]
    db_name = "dbname"
    engine = "aurora"
    engine_version = "5.6.10a"
    instance_class = "db.t2.micro"
    username = "foo"
    password = "foobarbaz"
    publicly_accessible = true
    

    tags    =   {
        Name                    =   "VPC_Project"
        Environment             =   "Dev"
        Team                    =   "DevOps"
        Department              =   "IT"
        Created_by              =   "Ahmet"
        
    }
}