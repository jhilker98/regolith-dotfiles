from powerline_shell.themes.default import DefaultColor


class Color(DefaultColor):
    """Basic theme which only uses colors in 0-15 range"""
    USERNAME_FG = 15
    USERNAME_BG = 2
    USERNAME_ROOT_BG = 2

    HOSTNAME_FG = 15
    HOSTNAME_BG = 2

    HOME_SPECIAL_DISPLAY = False
    PATH_BG = 2  # dark grey
    PATH_FG = 7  # light grey
    CWD_FG = 15  # white
    SEPARATOR_FG = 15

    READONLY_BG = 2
    READONLY_FG = 15

    REPO_CLEAN_BG = 4   # green
    REPO_CLEAN_FG = 15   # black
    REPO_DIRTY_BG = 4   # red
    REPO_DIRTY_FG = 15  # white

    JOBS_FG = 15
    JOBS_BG = 7

    CMD_PASSED_BG = 4
    CMD_PASSED_FG = 15
    CMD_FAILED_BG = 1
    CMD_FAILED_FG = 15

    BATTERY_NORMAL_BG = 2
    BATTERY_NORMAL_FG = 15
    BATTERY_LOW_FG = 15
    BATTERY_LOW_BG = 9

    SVN_CHANGES_BG = REPO_DIRTY_BG
    SVN_CHANGES_FG = REPO_DIRTY_FG

    VIRTUAL_ENV_BG = 2
    VIRTUAL_ENV_FG = 0

    AWS_PROFILE_FG = 14
    AWS_PROFILE_BG = 2

    TIME_FG = 7 
    TIME_BG = 2

    GIT_AHEAD_BG = 2
    GIT_AHEAD_FG = 15
    GIT_BEHIND_BG = 2
    GIT_BEHIND_FG = 15
    GIT_STAGED_BG = 2
    GIT_STAGED_FG = 15
    GIT_NOTSTAGED_BG = 2
    GIT_NOTSTAGED_FG = 15
    GIT_UNTRACKED_BG = 2
    GIT_UNTRACKED_FG = 15
    GIT_CONFLICTED_BG = 2
    GIT_CONFLICTED_FG = 15
    GIT_STASH_BG = 2
    GIT_STASH_FG = 15
