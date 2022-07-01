package main

import (
	"github.com/go-yaml/yaml"
	"os"
)

func main() {
	data, err := os.ReadFile("spec.yml")
	t := map[string]Entry{}
	err = yaml.Unmarshal(data, &t)
	if err != nil {
		panic(err)
	}
}
