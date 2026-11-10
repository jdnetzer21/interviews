# Why would a synchronous FIFO lose data?

A synchronous FIFO only loses data when the clocks are different, because of metastability between the read and write sides. Since a synchronous FIFO uses a single clock, it can never lose data.

Overflow happens when you write while `empty` is asserted, and underflow happens when you read while `full` is asserted. Both are harmless in hardware because the memory just ignores them.

To fix any FIFO problem, increase the depth to a very large value, since a bigger FIFO can never overflow. Also, always use asynchronous resets since they are the most reliable.
