from simplecalc.logic import compute_sum


def test_compute_sum_ints():
    assert compute_sum([1, 2, 3]) == 6.0


def test_compute_sum_strs_and_floats():
    assert compute_sum(["1", "2.5"]) == 3.5
