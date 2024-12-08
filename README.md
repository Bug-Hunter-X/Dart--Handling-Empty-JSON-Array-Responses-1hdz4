# Dart: Handling Empty JSON Array Responses

This repository demonstrates a common error in Dart when handling JSON array responses from APIs. The code attempts to access the first element of a JSON array without first checking if the array is empty, leading to an `IndexOutOfBoundsException`. The solution provides a more robust way to handle such cases.

## Bug Description
The provided Dart code fetches data from an API and parses the JSON response. The problem lies in accessing the first element of the JSON array directly without checking for emptiness. If the API returns an empty array, this will lead to an `IndexOutOfBoundsException`.

## Solution
The solution addresses this issue by checking the length of the JSON array before attempting to access its elements. If the array is empty, it handles the scenario gracefully and prevents the exception.