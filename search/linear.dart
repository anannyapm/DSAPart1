int search(List<int> arr, int searchval)
{
    int i;
    int len=arr.length;
    for (i = 0; i < len; i++)
        if (arr[i] == searchval)
            return i;
    return -1;
}
 
// Driver code
void main()
{
    List<int> arr = [ 2, 3, 4, 10, 40 ];
    int value = 10;
    
 
    // Function call
    int result = search(arr, value);
    (result == -1)
        ? print("Element is not present in array")
        : print("Element is present at index $result");
  
}