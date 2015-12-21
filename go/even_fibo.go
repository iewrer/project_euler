package main 

import "fmt"

func main() {
	limit := 4000000
	sum := 2
	//使用并行赋值
	for n, m := 1, 2; (n + m) < limit; n ,m = m, n + m {		
		if (n + m) % 2 == 0 {
			sum += n + m
		}
	}
	fmt.Println(sum)
}