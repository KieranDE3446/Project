# Simple D Flip-Flop simulation in Python

class DFF:
    def __init__(self):
        self.q = 0

    def eval(self, clk, rst_n, d):
        if not rst_n:
            self.q = 0
        elif clk:  # On rising edge
            self.q = d
        return self.q

# Example usage
clk = 0
rst_n = 0
d = 1
dff = DFF()

# Start (reset active)
print(f"START: clk={clk} rst_n={rst_n} d={d} q={dff.q}")

# Release reset and apply input
rst_n = 1
for cycle in range(5):
    clk = 1
    q = dff.eval(clk, rst_n, d)
    clk = 0
    # Change d as needed for your test
    d = 1 - d  # Toggle d for demonstration

# End (after simulation)
print(f"END: clk={clk} rst_n={rst_n} d={d} q={dff.q}")