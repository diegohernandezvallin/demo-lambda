package main

import (
	"context"
	"testing"
)

func TestHandleRequest(t *testing.T) {
	err := HandleRequest(context.TODO())
	if err != nil {
		t.Fatalf("No error expected. Got error: %v", err)
	}
}
