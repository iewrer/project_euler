package main 

import "fmt"

func main() {
	limit := 4000000
	n := 1
	m := 2
	sum := 2
	for ; (n + m) < limit; {
		nowSum := n + m
		if nowSum % 2 == 0 {
			sum += nowSum
		}
		n = m
		m = nowSum
	}
	fmt.Println(sum)
}