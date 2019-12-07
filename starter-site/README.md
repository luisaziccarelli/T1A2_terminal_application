# Fork The Repo

1. In the top-right corner of the page, click Fork.

2. On GitHub, navigate to your fork of the starter-site repository

3. Under the repository name, click Clone or download.

4. Type git clone, and then paste the URL you copied earlier. It will look like this, with your GitHub username instead of YOUR-USERNAME

```
$ git clone https://github.com/YOUR-USERNAME/starter-site.git
```

# Sync my Repo

1. Head to https://github.com/abaulderstone/starter-site

2. Under the repository name, click Clone or download and copy the link

3. In terminal, navigate to the folder you cloned your fork of the app into.

4. Type git remote -v and press Enter. You'll see the current configured remote repository for your fork.

```
$ git remote -v
> origin  https://github.com/YOUR_USERNAME/YOUR_FORK.git (fetch)
> origin  https://github.com/YOUR_USERNAME/YOUR_FORK.git (push)
```

5. Type git remote add upstream, and then paste the URL you copied in Step 2 and press Enter. It will look like this:

```
$ git remote add upstream https://github.com/abaulderstone/starter-site
```

6. To verify the new upstream repository you've specified for your fork, type git remote -v again. You should see the URL for your fork as origin, and the URL for the original repository as upstream.

```
$ git remote -v
> origin    https://github.com/YOUR_USERNAME/YOUR_FORK.git (fetch)
> origin    https://github.com/YOUR_USERNAME/YOUR_FORK.git (push)
> upstream  https://github.com/ORIGINAL_OWNER/ORIGINAL_REPOSITORY.git (fetch)
> upstream  https://github.com/ORIGINAL_OWNER/ORIGINAL_REPOSITORY.git (push)
```

# Syncing your fork

1. Fetch from upstream

```
$ git fetch upstream
```

Commits to master will be stored in a local branch, upstream/master.

2. Check out your fork's local master branch

```
$ git checkout master
> Switched to branch 'master'
```

3. Merge the changes from upstream/master into your local master branch. This brings your fork's master branch into sync with the upstream repository, without losing your local changes.

```
$ git merge upstream/master
> Updating a422352..5fdff0f
> Fast-forward
>  README                    |    9 -------
>  README.md                 |    7 ++++++
>  2 files changed, 7 insertions(+), 9 deletions(-)
>  delete mode 100644 README
>  create mode 100644 README.md

```

If your local branch didn't have any unique commits, Git will instead perform a "fast-forward":

```
$ git merge upstream/master
> Updating 34e91da..16c56ad
> Fast-forward
>  README.md                 |    5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
```
