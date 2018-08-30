package main

import "fmt"

func main() {
    list := []int{31, 41, 59, 26, 53, 58, 97, 93, 23, 84}
    fmt.Println("unsorted:", list)

    quicksort(list)
    fmt.Println("sorted!  ", list)
}

func quicksort(a []int) {
    var pex func(int, int)
    pex = func(lower, upper int) {
        for {
            switch upper - lower {
            case -1, 0: // 0 or 1 item in segment.  nothing to do here!
                return
            case 1: // 2 items in segment
                // < operator respects strict weak order
                if a[upper] < a[lower] {
                    // a quick exchange and we're done.
                    a[upper], a[lower] = a[lower], a[upper]
                }
                return
            // Hoare suggests optimized sort-3 or sort-4 algorithms here,
            // but does not provide an algorithm.
            }

            // Hoare stresses picking a bound in a way to avoid worst case
            // behavior, but offers no suggestions other than picking a
            // random element.  A function call to get a random number is
            // relatively expensive, so the method used here is to simply
            // choose the middle element.  This at least avoids worst case
            // behavior for the obvious common case of an already sorted list.
            bx := (upper + lower) / 2
            b := a[bx]  // b = Hoare's "bound" (aka "pivot")
            lp := lower // lp = Hoare's "lower pointer"
            up := upper // up = Hoare's "upper pointer"
        outer:
            for {
                // use < operator to respect strict weak order
                for lp < upper && !(b < a[lp]) {
                    lp++
                }
                for {
                    if lp > up {
                        // "pointers crossed!"
                        break outer
                    }
                    // < operator for strict weak order
                    if a[up] < b {
                        break // inner
                    }
                    up--
                }
                // exchange
                a[lp], a[up] = a[up], a[lp]
                lp++
                up--
            }
            // segment boundary is between up and lp, but lp-up might be
            // 1 or 2, so just call segment boundary between lp-1 and lp.
            if bx < lp {
                // bound was in lower segment
                if bx < lp-1 {
                    // exchange bx with lp-1
                    a[bx], a[lp-1] = a[lp-1], b
                }
                up = lp - 2
            } else {
                // bound was in upper segment
                if bx > lp {
                    // exchange
                    a[bx], a[lp] = a[lp], b
                }
                up = lp - 1
                lp++
            }
            // "postpone the larger of the two segments" = recurse on
            // the smaller segment, then iterate on the remaining one.
            if up-lower < upper-lp {
                pex(lower, up)
                lower = lp
            } else {
                pex(lp, upper)
                upper = up
            }
        }
    }
    pex(0, len(a)-1)
}
