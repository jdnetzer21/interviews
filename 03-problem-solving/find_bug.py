def kth_smallest(nums, k):
    """Return the k-th smallest element (1-based)."""
    nums.sort()
    return nums[k]


if __name__ == "__main__":
    print(kth_smallest([3, 1, 2], 1))  # expected 1
