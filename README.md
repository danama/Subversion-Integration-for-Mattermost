# Subversion Integration for Mattermost (Linux Version + optional Redmine link)

Forked from https://github.com/bitbackofen/Subversion-Integration-for-Mattermost

Thanks @Elpatron68 for your very good job !

Base installation information can be found on the original repository and adapted for linux

The python part is untouched !

## Linux Install

- The original "post-commit.bat" is now adapted for linux as "post-commit.sh" (The 'sh' extension is not necessary (give the good permissions to the file) but it's a better visual here)
- Optionally, for those who use Redmine like me, you can uncomment a piece of the script and fill it with your information to add 2 links in your message to mattermost.
  - one link for the revision page in redmine
  - one link for the diff page in redmine too.
