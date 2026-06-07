from typing import List

from simplecalc.logic import compute_sum


def run(argv: List[str]) -> str:
    """CLI entry point that accepts list of number strings and returns the sum as string."""
    if not argv:
        return "0"
    total = compute_sum(argv)
    if float(total).is_integer():
        return str(int(total))
    return str(total)


if __name__ == "__main__":
    import sys

    print(run(sys.argv[1:]))
