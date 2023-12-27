param (
    [Parameter(Mandatory=$true)][string]$commit
    )

Copy-Item -R _book/* .

git clean -fx _book

git add .

git commit -m $commit

git push