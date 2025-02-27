package main

import (
	"github.com/gin-gonic/gin"
	"github.com/wellingtonpires/fase5-automoveis/interface/veiculo_handler"
)

func main() {
	router := gin.Default()
	veiculo_handler.Routes(router)
	router.Run()
}
