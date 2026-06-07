from setuptools import setup, find_packages

setup(
    name="simplecalc",
    version="0.1.0",
    package_dir={"": "src"},
    packages=find_packages(where="src"),
    python_requires=">=3.9",
    install_requires=[],
)
