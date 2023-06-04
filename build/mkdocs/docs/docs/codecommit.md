<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codecommit</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS CodeCommit

### Description

This is the *AWS CodeCommit API Reference*. This reference provides
descriptions of the operations and data types for AWS CodeCommit API
along with usage examples.

You can use the AWS CodeCommit API to work with the following objects:

Repositories, by calling the following:

-   `batch_get_repositories`, which returns information about one or
    more repositories associated with your AWS account.

-   `create_repository`, which creates an AWS CodeCommit repository.

-   `delete_repository`, which deletes an AWS CodeCommit repository.

-   `get_repository`, which returns information about a specified
    repository.

-   `list_repositories`, which lists all AWS CodeCommit repositories
    associated with your AWS account.

-   `update_repository_description`, which sets or updates the
    description of the repository.

-   `update_repository_name`, which changes the name of the repository.
    If you change the name of a repository, no other users of that
    repository can access it until you send them the new HTTPS or SSH
    URL to use.

Branches, by calling the following:

-   `create_branch`, which creates a branch in a specified repository.

-   `delete_branch`, which deletes the specified branch in a repository
    unless it is the default branch.

-   `get_branch`, which returns information about a specified branch.

-   `list_branches`, which lists all branches for a specified
    repository.

-   `update_default_branch`, which changes the default branch for a
    repository.

Files, by calling the following:

-   `delete_file`, which deletes the content of a specified file from a
    specified branch.

-   `get_blob`, which returns the base-64 encoded content of an
    individual Git blob object in a repository.

-   `get_file`, which returns the base-64 encoded content of a specified
    file.

-   `get_folder`, which returns the contents of a specified folder or
    directory.

-   `put_file`, which adds or modifies a single file in a specified
    repository and branch.

Commits, by calling the following:

-   `batch_get_commits`, which returns information about one or more
    commits in a repository.

-   `create_commit`, which creates a commit for changes to a repository.

-   `get_commit`, which returns information about a commit, including
    commit messages and author and committer information.

-   `get_differences`, which returns information about the differences
    in a valid commit specifier (such as a branch, tag, HEAD, commit ID,
    or other fully qualified reference).

Merges, by calling the following:

-   `batch_describe_merge_conflicts`, which returns information about
    conflicts in a merge between commits in a repository.

-   `create_unreferenced_merge_commit`, which creates an unreferenced
    commit between two branches or commits for the purpose of comparing
    them and identifying any potential conflicts.

-   `describe_merge_conflicts`, which returns information about merge
    conflicts between the base, source, and destination versions of a
    file in a potential merge.

-   `get_merge_commit`, which returns information about the merge
    between a source and destination commit.

-   `get_merge_conflicts`, which returns information about merge
    conflicts between the source and destination branch in a pull
    request.

-   `get_merge_options`, which returns information about the available
    merge options between two branches or commit specifiers.

-   `merge_branches_by_fast_forward`, which merges two branches using
    the fast-forward merge option.

-   `merge_branches_by_squash`, which merges two branches using the
    squash merge option.

-   `merge_branches_by_three_way`, which merges two branches using the
    three-way merge option.

Pull requests, by calling the following:

-   `create_pull_request`, which creates a pull request in a specified
    repository.

-   `create_pull_request_approval_rule`, which creates an approval rule
    for a specified pull request.

-   `delete_pull_request_approval_rule`, which deletes an approval rule
    for a specified pull request.

-   `describe_pull_request_events`, which returns information about one
    or more pull request events.

-   `evaluate_pull_request_approval_rules`, which evaluates whether a
    pull request has met all the conditions specified in its associated
    approval rules.

-   `get_comments_for_pull_request`, which returns information about
    comments on a specified pull request.

-   `get_pull_request`, which returns information about a specified pull
    request.

-   `get_pull_request_approval_states`, which returns information about
    the approval states for a specified pull request.

-   `get_pull_request_override_state`, which returns information about
    whether approval rules have been set aside (overriden) for a pull
    request, and if so, the Amazon Resource Name (ARN) of the user or
    identity that overrode the rules and their requirements for the pull
    request.

-   `list_pull_requests`, which lists all pull requests for a
    repository.

-   `merge_pull_request_by_fast_forward`, which merges the source
    destination branch of a pull request into the specified destination
    branch for that pull request using the fast-forward merge option.

-   `merge_pull_request_by_squash`, which merges the source destination
    branch of a pull request into the specified destination branch for
    that pull request using the squash merge option.

-   `merge_pull_request_by_three_way`. which merges the source
    destination branch of a pull request into the specified destination
    branch for that pull request using the three-way merge option.

-   `override_pull_request_approval_rules`, which sets aside all
    approval rule requirements for a pull request.

-   `post_comment_for_pull_request`, which posts a comment to a pull
    request at the specified line, file, or request.

-   `update_pull_request_approval_rule_content`, which updates the
    structure of an approval rule for a pull request.

-   `update_pull_request_approval_state`, which updates the state of an
    approval on a pull request.

-   `update_pull_request_description`, which updates the description of
    a pull request.

-   `update_pull_request_status`, which updates the status of a pull
    request.

-   `update_pull_request_title`, which updates the title of a pull
    request.

Approval rule templates, by calling the following:

-   `associate_approval_rule_template_with_repository`, which associates
    a template with a specified repository. After the template is
    associated with a repository, AWS CodeCommit creates approval rules
    that match the template conditions on every pull request created in
    the specified repository.

-   `batch_associate_approval_rule_template_with_repositories`, which
    associates a template with one or more specified repositories. After
    the template is associated with a repository, AWS CodeCommit creates
    approval rules that match the template conditions on every pull
    request created in the specified repositories.

-   `batch_disassociate_approval_rule_template_from_repositories`, which
    removes the association between a template and specified
    repositories so that approval rules based on the template are not
    automatically created when pull requests are created in those
    repositories.

-   `create_approval_rule_template`, which creates a template for
    approval rules that can then be associated with one or more
    repositories in your AWS account.

-   `delete_approval_rule_template`, which deletes the specified
    template. It does not remove approval rules on pull requests already
    created with the template.

-   `disassociate_approval_rule_template_from_repository`, which removes
    the association between a template and a repository so that approval
    rules based on the template are not automatically created when pull
    requests are created in the specified repository.

-   `get_approval_rule_template`, which returns information about an
    approval rule template.

-   `list_approval_rule_templates`, which lists all approval rule
    templates in the AWS Region in your AWS account.

-   `list_associated_approval_rule_templates_for_repository`, which
    lists all approval rule templates that are associated with a
    specified repository.

-   `list_repositories_for_approval_rule_template`, which lists all
    repositories associated with the specified approval rule template.

-   `update_approval_rule_template_description`, which updates the
    description of an approval rule template.

-   `update_approval_rule_template_name`, which updates the name of an
    approval rule template.

-   `update_approval_rule_template_content`, which updates the content
    of an approval rule template.

Comments in a repository, by calling the following:

-   `delete_comment_content`, which deletes the content of a comment on
    a commit in a repository.

-   `get_comment`, which returns information about a comment on a
    commit.

-   `get_comment_reactions`, which returns information about emoji
    reactions to comments.

-   `get_comments_for_compared_commit`, which returns information about
    comments on the comparison between two commit specifiers in a
    repository.

-   `post_comment_for_compared_commit`, which creates a comment on the
    comparison between two commit specifiers in a repository.

-   `post_comment_reply`, which creates a reply to a comment.

-   `put_comment_reaction`, which creates or updates an emoji reaction
    to a comment.

-   `update_comment`, which updates the content of a comment on a commit
    in a repository.

Tags used to tag resources in AWS CodeCommit (not Git tags), by calling
the following:

-   `list_tags_for_resource`, which gets information about AWS tags for
    a specified Amazon Resource Name (ARN) in AWS CodeCommit.

-   `tag_resource`, which adds or updates tags for a resource in AWS
    CodeCommit.

-   `untag_resource`, which removes tags for a resource in AWS
    CodeCommit.

Triggers, by calling the following:

-   `get_repository_triggers`, which returns information about triggers
    configured for a repository.

-   `put_repository_triggers`, which replaces all triggers for a
    repository and can be used to create or delete triggers.

-   `test_repository_triggers`, which tests the functionality of a
    repository trigger by sending data to the trigger target.

For information about how to use AWS CodeCommit, see the [AWS CodeCommit
User
Guide](https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html).

### Usage

    codecommit(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codecommit_:_config">config</code></td>
<td><p>Optional configuration of credentials, endpoint, and/or
region.</p>
<ul>
<li><p><strong>access_key_id</strong>: AWS access key ID</p></li>
<li><p><strong>secret_access_key</strong>: AWS secret access
key</p></li>
<li><p><strong>session_token</strong>: AWS temporary session
token</p></li>
<li><p><strong>profile</strong>: The name of a profile to use. If not
given, then the default profile is used.</p></li>
<li><p><strong>anonymous</strong>: Set anonymous credentials.</p></li>
<li><p><strong>endpoint</strong>: The complete URL to use for the
constructed client.</p></li>
<li><p><strong>region</strong>: The AWS Region used in instantiating the
client.</p></li>
<li><p><strong>close_connection</strong>: Immediately close all HTTP
connections.</p></li>
<li><p><strong>timeout</strong>: The time in seconds till a timeout
exception is thrown when attempting to make a connection. The default is
60 seconds.</p></li>
<li><p><strong>s3_force_path_style</strong>: Set this to
<code>true</code> to force the request to use path-style addressing,
i.e., <code
style="white-space: pre;">⁠http://s3.amazonaws.com/BUCKET/KEY⁠</code>.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A client for the service. You can call the service's operations using
syntax like `svc$operation(...)`, where `svc` is the name you've
assigned to the client. The available operations are listed in the
Operations section.

### Service syntax

    svc <- codecommit(
      config = list(
        credentials = list(
          creds = list(
            access_key_id = "string",
            secret_access_key = "string",
            session_token = "string"
          ),
          profile = "string",
          anonymous = "logical"
        ),
        endpoint = "string",
        region = "string",
        close_connection = "logical",
        timeout = "numeric",
        s3_force_path_style = "logical"
      )
    )

### Operations

<table>
<tbody>
<tr class="odd">
<td
style="text-align: left;"><a href="../codecommit_associate_approval_rule_template_with_repository/"> associate_approval_rule_template_with_repository </a></td>
<td style="text-align: left;">Creates an association between an approval
rule template and a specified repository</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../codecommit_batch_associate_approval_rule_template_with_repositories/"> batch_associate_approval_rule_template_with_repositories </a></td>
<td style="text-align: left;">Creates an association between an approval
rule template and one or more specified repositories</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codecommit_batch_describe_merge_conflicts/"> batch_describe_merge_conflicts </a></td>
<td style="text-align: left;">Returns information about one or more
merge conflicts in the attempted merge of two commit specifiers using
the squash or three-way merge strategy</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../codecommit_batch_disassociate_approval_rule_template_from_repositories/"> batch_disassociate_approval_rule_template_from_repositories </a></td>
<td style="text-align: left;">Removes the association between an
approval rule template and one or more specified repositories</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codecommit_batch_get_commits/"> batch_get_commits </a></td>
<td style="text-align: left;">Returns information about the contents of
one or more commits in a repository</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codecommit_batch_get_repositories/"> batch_get_repositories </a></td>
<td style="text-align: left;">Returns information about one or more
repositories</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codecommit_create_approval_rule_template/"> create_approval_rule_template </a></td>
<td style="text-align: left;">Creates a template for approval rules that
can then be associated with one or more repositories in your AWS
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codecommit_create_branch/"> create_branch </a></td>
<td style="text-align: left;">Creates a branch in a repository and
points the branch to a commit</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codecommit_create_commit/"> create_commit </a></td>
<td style="text-align: left;">Creates a commit for a repository on the
tip of a specified branch</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codecommit_create_pull_request/"> create_pull_request </a></td>
<td style="text-align: left;">Creates a pull request in the specified
repository</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codecommit_create_pull_request_approval_rule/"> create_pull_request_approval_rule </a></td>
<td style="text-align: left;">Creates an approval rule for a pull
request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codecommit_create_repository/"> create_repository </a></td>
<td style="text-align: left;">Creates a new, empty repository</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codecommit_create_unreferenced_merge_commit/"> create_unreferenced_merge_commit </a></td>
<td style="text-align: left;">Creates an unreferenced commit that
represents the result of merging two branches using a specified merge
strategy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codecommit_delete_approval_rule_template/"> delete_approval_rule_template </a></td>
<td style="text-align: left;">Deletes a specified approval rule
template</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codecommit_delete_branch/"> delete_branch </a></td>
<td style="text-align: left;">Deletes a branch from a repository, unless
that branch is the default branch for the repository</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codecommit_delete_comment_content/"> delete_comment_content </a></td>
<td style="text-align: left;">Deletes the content of a comment made on a
change, file, or commit in a repository</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codecommit_delete_file/"> delete_file </a></td>
<td style="text-align: left;">Deletes a specified file from a specified
branch</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codecommit_delete_pull_request_approval_rule/"> delete_pull_request_approval_rule </a></td>
<td style="text-align: left;">Deletes an approval rule from a specified
pull request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codecommit_delete_repository/"> delete_repository </a></td>
<td style="text-align: left;">Deletes a repository</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codecommit_describe_merge_conflicts/"> describe_merge_conflicts </a></td>
<td style="text-align: left;">Returns information about one or more
merge conflicts in the attempted merge of two commit specifiers using
the squash or three-way merge strategy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codecommit_describe_pull_request_events/"> describe_pull_request_events </a></td>
<td style="text-align: left;">Returns information about one or more pull
request events</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../codecommit_disassociate_approval_rule_template_from_repository/"> disassociate_approval_rule_template_from_repository </a></td>
<td style="text-align: left;">Removes the association between a template
and a repository so that approval rules based on the template are not
automatically created when pull requests are created in the specified
repository</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codecommit_evaluate_pull_request_approval_rules/"> evaluate_pull_request_approval_rules </a></td>
<td style="text-align: left;">Evaluates whether a pull request has met
all the conditions specified in its associated approval rules</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codecommit_get_approval_rule_template/"> get_approval_rule_template </a></td>
<td style="text-align: left;">Returns information about a specified
approval rule template</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codecommit_get_blob/"> get_blob </a></td>
<td style="text-align: left;">Returns the base-64 encoded content of an
individual blob in a repository</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codecommit_get_branch/"> get_branch </a></td>
<td style="text-align: left;">Returns information about a repository
branch, including its name and the last commit ID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codecommit_get_comment/"> get_comment </a></td>
<td style="text-align: left;">Returns the content of a comment made on a
change, file, or commit in a repository</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codecommit_get_comment_reactions/"> get_comment_reactions </a></td>
<td style="text-align: left;">Returns information about reactions to a
specified comment ID</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codecommit_get_comments_for_compared_commit/"> get_comments_for_compared_commit </a></td>
<td style="text-align: left;">Returns information about comments made on
the comparison between two commits</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codecommit_get_comments_for_pull_request/"> get_comments_for_pull_request </a></td>
<td style="text-align: left;">Returns comments made on a pull
request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codecommit_get_commit/"> get_commit </a></td>
<td style="text-align: left;">Returns information about a commit,
including commit message and committer information</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codecommit_get_differences/"> get_differences </a></td>
<td style="text-align: left;">Returns information about the differences
in a valid commit specifier (such as a branch, tag, HEAD, commit ID, or
other fully qualified reference)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codecommit_get_file/"> get_file </a></td>
<td style="text-align: left;">Returns the base-64 encoded contents of a
specified file and its metadata</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codecommit_get_folder/"> get_folder </a></td>
<td style="text-align: left;">Returns the contents of a specified folder
in a repository</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codecommit_get_merge_commit/"> get_merge_commit </a></td>
<td style="text-align: left;">Returns information about a specified
merge commit</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codecommit_get_merge_conflicts/"> get_merge_conflicts </a></td>
<td style="text-align: left;">Returns information about merge conflicts
between the before and after commit IDs for a pull request in a
repository</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codecommit_get_merge_options/"> get_merge_options </a></td>
<td style="text-align: left;">Returns information about the merge
options available for merging two specified branches</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codecommit_get_pull_request/"> get_pull_request </a></td>
<td style="text-align: left;">Gets information about a pull request in a
specified repository</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codecommit_get_pull_request_approval_states/"> get_pull_request_approval_states </a></td>
<td style="text-align: left;">Gets information about the approval states
for a specified pull request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codecommit_get_pull_request_override_state/"> get_pull_request_override_state </a></td>
<td style="text-align: left;">Returns information about whether approval
rules have been set aside (overridden) for a pull request, and if so,
the Amazon Resource Name (ARN) of the user or identity that overrode the
rules and their requirements for the pull request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codecommit_get_repository/"> get_repository </a></td>
<td style="text-align: left;">Returns information about a
repository</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codecommit_get_repository_triggers/"> get_repository_triggers </a></td>
<td style="text-align: left;">Gets information about triggers configured
for a repository</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codecommit_list_approval_rule_templates/"> list_approval_rule_templates </a></td>
<td style="text-align: left;">Lists all approval rule templates in the
specified AWS Region in your AWS account</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../codecommit_list_associated_approval_rule_templates_for_repository/"> list_associated_approval_rule_templates_for_repository </a></td>
<td style="text-align: left;">Lists all approval rule templates that are
associated with a specified repository</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codecommit_list_branches/"> list_branches </a></td>
<td style="text-align: left;">Gets information about one or more
branches in a repository</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codecommit_list_pull_requests/"> list_pull_requests </a></td>
<td style="text-align: left;">Returns a list of pull requests for a
specified repository</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codecommit_list_repositories/"> list_repositories </a></td>
<td style="text-align: left;">Gets information about one or more
repositories</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../codecommit_list_repositories_for_approval_rule_template/"> list_repositories_for_approval_rule_template </a></td>
<td style="text-align: left;">Lists all repositories associated with the
specified approval rule template</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codecommit_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Gets information about AWS tags for a
specified Amazon Resource Name (ARN) in AWS CodeCommit</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codecommit_merge_branches_by_fast_forward/"> merge_branches_by_fast_forward </a></td>
<td style="text-align: left;">Merges two branches using the fast-forward
merge strategy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codecommit_merge_branches_by_squash/"> merge_branches_by_squash </a></td>
<td style="text-align: left;">Merges two branches using the squash merge
strategy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codecommit_merge_branches_by_three_way/"> merge_branches_by_three_way </a></td>
<td style="text-align: left;">Merges two specified branches using the
three-way merge strategy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codecommit_merge_pull_request_by_fast_forward/"> merge_pull_request_by_fast_forward </a></td>
<td style="text-align: left;">Attempts to merge the source commit of a
pull request into the specified destination branch for that pull request
at the specified commit using the fast-forward merge strategy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codecommit_merge_pull_request_by_squash/"> merge_pull_request_by_squash </a></td>
<td style="text-align: left;">Attempts to merge the source commit of a
pull request into the specified destination branch for that pull request
at the specified commit using the squash merge strategy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codecommit_merge_pull_request_by_three_way/"> merge_pull_request_by_three_way </a></td>
<td style="text-align: left;">Attempts to merge the source commit of a
pull request into the specified destination branch for that pull request
at the specified commit using the three-way merge strategy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codecommit_override_pull_request_approval_rules/"> override_pull_request_approval_rules </a></td>
<td style="text-align: left;">Sets aside (overrides) all approval rule
requirements for a specified pull request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codecommit_post_comment_for_compared_commit/"> post_comment_for_compared_commit </a></td>
<td style="text-align: left;">Posts a comment on the comparison between
two commits</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codecommit_post_comment_for_pull_request/"> post_comment_for_pull_request </a></td>
<td style="text-align: left;">Posts a comment on a pull request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codecommit_post_comment_reply/"> post_comment_reply </a></td>
<td style="text-align: left;">Posts a comment in reply to an existing
comment on a comparison between commits or a pull request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codecommit_put_comment_reaction/"> put_comment_reaction </a></td>
<td style="text-align: left;">Adds or updates a reaction to a specified
comment for the user whose identity is used to make the request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codecommit_put_file/"> put_file </a></td>
<td style="text-align: left;">Adds or updates a file in a branch in an
AWS CodeCommit repository, and generates a commit for the addition in
the specified branch</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codecommit_put_repository_triggers/"> put_repository_triggers </a></td>
<td style="text-align: left;">Replaces all triggers for a
repository</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codecommit_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds or updates tags for a resource in AWS
CodeCommit</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codecommit_test_repository_triggers/"> test_repository_triggers </a></td>
<td style="text-align: left;">Tests the functionality of repository
triggers by sending information to the trigger target</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codecommit_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes tags for a resource in AWS
CodeCommit</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codecommit_update_approval_rule_template_content/"> update_approval_rule_template_content </a></td>
<td style="text-align: left;">Updates the content of an approval rule
template</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../codecommit_update_approval_rule_template_description/"> update_approval_rule_template_description </a></td>
<td style="text-align: left;">Updates the description for a specified
approval rule template</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codecommit_update_approval_rule_template_name/"> update_approval_rule_template_name </a></td>
<td style="text-align: left;">Updates the name of a specified approval
rule template</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codecommit_update_comment/"> update_comment </a></td>
<td style="text-align: left;">Replaces the contents of a comment</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codecommit_update_default_branch/"> update_default_branch </a></td>
<td style="text-align: left;">Sets or changes the default branch name
for the specified repository</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../codecommit_update_pull_request_approval_rule_content/"> update_pull_request_approval_rule_content </a></td>
<td style="text-align: left;">Updates the structure of an approval rule
created specifically for a pull request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codecommit_update_pull_request_approval_state/"> update_pull_request_approval_state </a></td>
<td style="text-align: left;">Updates the state of a user's approval on
a pull request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codecommit_update_pull_request_description/"> update_pull_request_description </a></td>
<td style="text-align: left;">Replaces the contents of the description
of a pull request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codecommit_update_pull_request_status/"> update_pull_request_status </a></td>
<td style="text-align: left;">Updates the status of a pull request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codecommit_update_pull_request_title/"> update_pull_request_title </a></td>
<td style="text-align: left;">Replaces the title of a pull request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codecommit_update_repository_description/"> update_repository_description </a></td>
<td style="text-align: left;">Sets or changes the comment or description
for a repository</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codecommit_update_repository_name/"> update_repository_name </a></td>
<td style="text-align: left;">Renames a repository</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- codecommit()
    svc$associate_approval_rule_template_with_repository(
      Foo = 123
    )

    ## End(Not run)
