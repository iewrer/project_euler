package main

import "fmt"

func main() {
	var count = 1000
	var sum = 0
	for i := 0; i < count; i++ {
		if (i % 3 == 0) || (i % 5 == 0) {
			sum += i
		}
	}
	fmt.Printf("%d \n", sum)
}