int binarySearch(List<int> arr, int left, int right, int searchval)
{
    if (right >= left) {
        int mid = (left + right )~/ 2;
 
        if (arr[mid] == searchval)
            return mid;
 
        if (arr[mid] > searchval)
            return binarySearch(arr, left, mid - 1, searchval);
 
        return binarySearch(arr, mid + 1, right, searchval);
    }

    return -1;
}
 
void main()
{
    List<int> array = [1,55,3,2,44,9,10,22];
    
    int search = 22;
    int result = binarySearch(array, 0, array.length-1, search);
    (result == -1)
        ? print("Element is not present in array")
        : print("Element is present at index $result");
   
}