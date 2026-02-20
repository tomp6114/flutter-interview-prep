// Day 1 — Two Sum (#1 LeetCode)
// Approach: HashMap — O(n) time, O(n) space
// For every number, check if its complement already exists in the map

List<int> twoSum(List<int> nums, int target) {
  Map<int, int> map = {}; // stores number → index

  for (int i = 0; i < nums.length; i++) {
    int complement = target - nums[i];

    if (map.containsKey(complement)) {
      return [map[complement]!, i];
    }

    map[nums[i]] = i;
  }

  return [];
}

void main() {
  print(twoSum([2, 7, 11, 15], 9));  // [0, 1]
  print(twoSum([3, 2, 4], 6));       // [1, 2]
  print(twoSum([3, 3], 6));          // [0, 1]
}