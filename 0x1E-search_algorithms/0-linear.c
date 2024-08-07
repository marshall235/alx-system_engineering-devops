#include "search_algos.h"

/**
 * linear_search - implement linear search algorithm
 * @array: given array to search in
 * @size: size of the array
 * @value: value to search for
 * Return: First index or -1
 */
int linear_search(int *array, size_t size, int value)
{
	size_t i;

	if (array == NULL)
		return (-1);
	for (i = 0; i < size; i++)
	{
		printf("Value of checked array[%lu] = [%d]\n", i, array[i]);
		if (array[i] == value)
			return (i);
	}
	return (-1);
}
