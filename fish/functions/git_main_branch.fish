function git_main_branch
    command git rev-parse --git-dir &>/dev/null; or return

    set -l ref
    for ref in refs/heads/main refs/heads/trunk refs/heads/mainline refs/heads/default refs/heads/stable refs/heads/master \
                  refs/remotes/origin/main refs/remotes/origin/trunk refs/remotes/origin/mainline refs/remotes/origin/default refs/remotes/origin/stable refs/remotes/origin/master \
                  refs/remotes/upstream/main refs/remotes/upstream/trunk refs/remotes/upstream/mainline refs/remotes/upstream/default refs/remotes/upstream/stable refs/remotes/upstream/master
        if command git show-ref -q --verify $ref
            echo (basename $ref)
            return 0
        end
    end

    # If no main branch was found, fall back to master but return error
    echo master
    return 1
end

