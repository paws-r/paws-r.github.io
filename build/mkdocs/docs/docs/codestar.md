<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestar</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS CodeStar

### Description

This is the API reference for AWS CodeStar. This reference provides
descriptions of the operations and data types for the AWS CodeStar API
along with usage examples.

You can use the AWS CodeStar API to work with:

Projects and their resources, by calling the following:

-   `delete_project`, which deletes a project.

-   `describe_project`, which lists the attributes of a project.

-   `list_projects`, which lists all projects associated with your AWS
    account.

-   `list_resources`, which lists the resources associated with a
    project.

-   `list_tags_for_project`, which lists the tags associated with a
    project.

-   `tag_project`, which adds tags to a project.

-   `untag_project`, which removes tags from a project.

-   `update_project`, which updates the attributes of a project.

Teams and team members, by calling the following:

-   `associate_team_member`, which adds an IAM user to the team for a
    project.

-   `disassociate_team_member`, which removes an IAM user from the team
    for a project.

-   `list_team_members`, which lists all the IAM users in the team for a
    project, including their roles and attributes.

-   `update_team_member`, which updates a team member's attributes in a
    project.

Users, by calling the following:

-   `create_user_profile`, which creates a user profile that contains
    data associated with the user across all projects.

-   `delete_user_profile`, which deletes all user profile information
    across all projects.

-   `describe_user_profile`, which describes the profile of a user.

-   `list_user_profiles`, which lists all user profiles.

-   `update_user_profile`, which updates the profile for a user.

### Usage

    codestar(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="codestar_:_config">config</code></td>
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

    svc <- codestar(
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
<td style="text-align: left;"><a href="../codestar_associate_team_member/"> associate_team_member </a></td>
<td style="text-align: left;">Adds an IAM user to the team for an AWS
CodeStar project</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codestar_create_project/"> create_project </a></td>
<td style="text-align: left;">Creates a project, including project
resources</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codestar_create_user_profile/"> create_user_profile </a></td>
<td style="text-align: left;">Creates a profile for a user that includes
user preferences, such as the display name and email address assocciated
with the user, in AWS CodeStar</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codestar_delete_project/"> delete_project </a></td>
<td style="text-align: left;">Deletes a project, including project
resources</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codestar_delete_user_profile/"> delete_user_profile </a></td>
<td style="text-align: left;">Deletes a user profile in AWS CodeStar,
including all personal preference data associated with that profile,
such as display name and email address</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codestar_describe_project/"> describe_project </a></td>
<td style="text-align: left;">Describes a project and its resources</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codestar_describe_user_profile/"> describe_user_profile </a></td>
<td style="text-align: left;">Describes a user in AWS CodeStar and the
user attributes across all projects</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codestar_disassociate_team_member/"> disassociate_team_member </a></td>
<td style="text-align: left;">Removes a user from a project</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codestar_list_projects/"> list_projects </a></td>
<td style="text-align: left;">Lists all projects in AWS CodeStar
associated with your AWS account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codestar_list_resources/"> list_resources </a></td>
<td style="text-align: left;">Lists resources associated with a project
in AWS CodeStar</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codestar_list_tags_for_project/"> list_tags_for_project </a></td>
<td style="text-align: left;">Gets the tags for a project</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codestar_list_team_members/"> list_team_members </a></td>
<td style="text-align: left;">Lists all team members associated with a
project</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codestar_list_user_profiles/"> list_user_profiles </a></td>
<td style="text-align: left;">Lists all the user profiles configured for
your AWS account in AWS CodeStar</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codestar_tag_project/"> tag_project </a></td>
<td style="text-align: left;">Adds tags to a project</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codestar_untag_project/"> untag_project </a></td>
<td style="text-align: left;">Removes tags from a project</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codestar_update_project/"> update_project </a></td>
<td style="text-align: left;">Updates a project in AWS CodeStar</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../codestar_update_team_member/"> update_team_member </a></td>
<td style="text-align: left;">Updates a team member's attributes in an
AWS CodeStar project</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../codestar_update_user_profile/"> update_user_profile </a></td>
<td style="text-align: left;">Updates a user's profile in AWS
CodeStar</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- codestar()
    svc$associate_team_member(
      Foo = 123
    )

    ## End(Not run)
