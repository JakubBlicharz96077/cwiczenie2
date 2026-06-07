from typing import Iterable


def compute_sum(values: Iterable[float]) -> float:
    """Compute sum of values."""
    total = 0.0
    for v in values:
        total += float(v)
    return total
