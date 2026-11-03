# Module 4 Unit 10 - dbt Packages

- A package distributes reusable dbt macros, generic tests, or models for other projects to install.
- `dbt deps` installs the packages declared in `packages.yml` into the downloaded `dbt_packages` directory.
- Commit `packages.yml` and `package-lock.yml`, but ignore the downloaded package directory.
- The lockfile pins resolved versions so every environment installs identical code, while the download is reproducible build output.
- This project declares `dbt_utils` and `codegen`.
- `int_trips` calls `dbt_utils.generate_surrogate_key`, and the expanded expression is only visible after compilation.
- A hashed surrogate key is consistent for its input fields but does not prove those fields identify distinct real-world trips.
- Review adapter and dbt version compatibility before changing package constraints, because a hub listing is not a security guarantee.
- Routine dependency installation and deliberate version upgrades should stay as separate changes.
