# Student Repository Template

This repository is a template for homework submissions. At the same time,
it serves as an upstream repository for homework and seminar assignments.

## Fork

If you already have your fork of this repository, named `pb071`, skip this step.

1. In the top right corner of the Project page, click _Fork_.
2. Change _Project Name_ to `PB071`.
3. Change _Project Slug_ to `pb071` (lower-case letters are required).
4. Change _Visibility_ to _Private_ (**THIS STEP IS CRUCIAL**).
5. You may select _Only the default branch_ option.
5. Click _Fork_.

## Clone and setup

Each time you clone your repository (you may wish to use one repository
on Aisa server, and one for your personal computer), set it up like this:

1. Clone and enter the repository.

      ```sh
      git clone $REPOSITORY_URL
      cd pb071
      ```

2. Set up your name and e-mail.

      ```sh
      git config user.email "‹FACULTY LOGIN›@fi.muni.cz"
      git config user.name "‹FIRST NAME› ‹LAST NAME›"
      ```

3. Set up Git Hooks.

      ```sh
      etc/install-hooks.sh
      ```

Repeat these steps **every time** you `git clone` this repository.


## References

Full tutorials on use of this repository (in Czech) can be found
in the [course web page](https://www.fi.muni.cz/pb071/info/gitlab.html).
Specifically,

* [How to set up the repository](https://www.fi.muni.cz/pb071/info/gitlab.html#zalozeni-repozitare)
* [Download a homework assignment](https://www.fi.muni.cz/pb071/info/gitlab.html#hw)
* [Download a seminar assignment](https://www.fi.muni.cz/pb071/info/gitlab.html#cviceni)
