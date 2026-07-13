param(
    [string]$Message = "Update HomeOps documentation"
)

git status
git add README.md .gitignore .env.example docker docs examples scripts
git commit -m "$Message"
git push
