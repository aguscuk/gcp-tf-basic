region = "asia-southeast2"
project = "learning01-348513"
env = "dev"
vpc_default = "default"
my_fw_web = "fw-web"
my_fw_ssh = "fw-ssh"
subnet_name = ["subnet-01","subnet-02"]

subnet_secondary = [{range: "192.168.10.0/24", name: "secondary-range-01"}]

subnet_ip_cidr = [{range: "10.100.0.0/16", name: "subnet-01"},
                  {range: "10.110.0.0/16", name: "subnet-02"}]