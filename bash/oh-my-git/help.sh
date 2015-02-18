DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source ${DIR}/symbols.sh

echo "Git Symbols:"
echo "${violet}${is_a_git_repo_symbol}${reset}  within a Git repo"
echo "${yellow}${has_stashes_symbol}${reset}  stashes present"
echo "${red}${has_untracked_files_symbol}${reset}  untracked files"
echo "${yellow}${has_adds_symbol}${reset}  new files staged"
echo "${red}${has_deletions_symbol}${reset}  deletions"
echo "${yellow}${has_deletions_cached_symbol}${reset}  deletions staged"
echo "${red}${has_modifications_symbol}${reset}  modifications"
echo "${yellow}${has_modifications_cached_symbol}${reset}  modifications staged"
echo "${green}${ready_to_commit_symbol}${reset}  ready to commit"
echo "${red}${detached_symbol}${reset} detached head"
echo "${red}${no_upstream_symbol}${reset}  no upstream"
echo "${yellow}${is_on_a_tag_symbol}${reset}  on a tag"
echo "${needs_to_merge_symbol}${reset} needs merge"
echo "${can_fast_forward_symbol}${reset}  can fast forward"
echo "${has_diverged_symbol}${reset}  has diverged"
echo "${rebase_tracking_branch_symbol}${reset}  will rebase tracking branch"
echo "${merge_tracking_branch_symbol}${reset} will merge tracking branch"
echo "${should_push_symbol}${reset}  should push"
