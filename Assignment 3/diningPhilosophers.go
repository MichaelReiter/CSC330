// Adapted from https://play.golang.org/p/yXhUjpC8hF

package main

import (
  "sync"
  "time"
)

type Philosopher struct {
  leftChopstick int
  rightChopstick int
}

func (p *Philosopher) Eat(table []sync.Mutex) {
  table[p.leftChopstick].Lock()
  table[p.rightChopstick].Lock()
  // Wait a second to simulate eating
  time.Sleep(time.Second)
  table[p.leftChopstick].Unlock()
  table[p.rightChopstick].Unlock()
}

func main() {
  philosophers := []*Philosopher{
    &Philosopher{0, 1},
    &Philosopher{1, 2},
    &Philosopher{2, 3},
    &Philosopher{3, 4},
    &Philosopher{4, 0}
  }

  table := make([]sync.Mutex, 5)
  sem := make(chan int, 5)

  for _, philosopher := range philosophers {
    sem <- 1
    go func(p *Philosopher) {
      p.Eat(table)
      <-sem
    }(philosopher)
  }
  waitGroup.Wait()
}
