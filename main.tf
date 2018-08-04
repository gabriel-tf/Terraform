# Configure the Docker provider
provider "docker" {
  host = "tcp://127.0.0.1:2375/"
}

# Create a container apache 1
resource "docker_container" "apache01" {
  image = "${docker_image.httpd.latest}"
  name  = "apache01"
  ports {
      internal = 80
      external = 8080
  }
   upload {
      content = "${file("${var.path_index}")}"
      file = "/usr/local/apache2/htdocs/espec-iac/index.html"
  }
}

# Create a container apache 2
resource "docker_container" "apache02" {
  image = "${docker_image.httpd.latest}"
  name  = "apache02"
  ports {
      internal = 80
      external = 9095
  }
   upload {
      content = "${file("${var.path_index}")}"
      file = "/usr/local/apache2/htdocs/espec-iac/index.html"
  }
}

resource "docker_container" "tomcat1" {
  image = "${docker_image.tomcat.latest}"
  name  = "tomcat1"
  ports {
      internal = 8080
      external = 9090
  }
}

resource "docker_container" "tomcat2" {
  image = "${docker_image.tomcat.latest}"
  name  = "tomcat2"
  ports {
      internal = 8080
      external = 9091
  }
}

resource "docker_container" "postgres" {
  image = "${docker_image.postgres.latest}"
  name  = "postgres"
  env = ["POSTGRES_PASSWORD=Teste@122"]
  ports {
      internal = 5432
      external = 5433
  }
}


resource "docker_image" "httpd" {
  name = "httpd:latest"
}

resource "docker_image" "tomcat" {
  name = "tomcat:latest"
}

resource "docker_image" "postgres" {
  name = "postgres:latest"
}
