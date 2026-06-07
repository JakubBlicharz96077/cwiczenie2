from simplecalc.cli import run


def test_cli_no_args():
    assert run([]) == "0"


def test_cli_ints():
    assert run(["1", "2", "3"]) == "6"


def test_cli_floats_normalized():
    assert run(["1.5", "2.5"]) == "4"
