package main

import (
	"context"
	"log"

	"github.com/aws/aws-lambda-go/lambda"
)

func HandleRequest(ctx context.Context) error {
	log.Println("Hello world")

	return nil
}

func main() {
	lambda.Start(HandleRequest)
}
