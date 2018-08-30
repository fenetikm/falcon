// From http://rosettacode.org/wiki/Sorting_algorithms
public static <E extends Comparable<? super E>> List<E> quickSort(List<E> arr) {
    if (arr.isEmpty())
        return arr;
    else {
        E pivot = arr.get(0);

        List<E> less = new LinkedList<E>();
        List<E> pivotList = new LinkedList<E>();
        List<E> more = new LinkedList<E>();

        // Partition
        for (E i: arr) {
            if (i.compareTo(pivot) < 0)
                less.add(i);
            else if (i.compareTo(pivot) > 0)
                more.add(i);
            else
                pivotList.add(i);
        }

        // Recursively sort sublists
        less = quickSort(less);
        more = quickSort(more);

        // Concatenate results
        less.addAll(pivotList);
        less.addAll(more);
        return less;
    }
}
