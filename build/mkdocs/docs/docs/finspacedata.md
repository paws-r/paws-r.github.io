<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>finspacedata</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## FinSpace Public API

### Description

The FinSpace APIs let you take actions inside the FinSpace.

### Usage

    finspacedata(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="finspacedata_:_config">config</code></td>
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

    svc <- finspacedata(
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
<td style="text-align: left;"><a href="../finspacedata_associate_user_to_permission_group/"> associate_user_to_permission_group </a></td>
<td style="text-align: left;">Adds a user account to a permission group
to grant permissions for actions a user can perform in FinSpace</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../finspacedata_create_changeset/"> create_changeset </a></td>
<td style="text-align: left;">Creates a new Changeset in a FinSpace
Dataset</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../finspacedata_create_dataset/"> create_dataset </a></td>
<td style="text-align: left;">Creates a new FinSpace Dataset</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../finspacedata_create_data_view/"> create_data_view </a></td>
<td style="text-align: left;">Creates a Dataview for a Dataset</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../finspacedata_create_permission_group/"> create_permission_group </a></td>
<td style="text-align: left;">Creates a group of permissions for various
actions that a user can perform in FinSpace</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../finspacedata_create_user/"> create_user </a></td>
<td style="text-align: left;">Creates a new user in FinSpace</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../finspacedata_delete_dataset/"> delete_dataset </a></td>
<td style="text-align: left;">Deletes a FinSpace Dataset</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../finspacedata_delete_permission_group/"> delete_permission_group </a></td>
<td style="text-align: left;">Deletes a permission group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../finspacedata_disable_user/"> disable_user </a></td>
<td style="text-align: left;">Denies access to the FinSpace web
application and API for the specified user</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../finspacedata_disassociate_user_from_permission_group/"> disassociate_user_from_permission_group </a></td>
<td style="text-align: left;">Removes a user account from a permission
group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../finspacedata_enable_user/"> enable_user </a></td>
<td style="text-align: left;">Allows the specified user to access the
FinSpace web application and API</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../finspacedata_get_changeset/"> get_changeset </a></td>
<td style="text-align: left;">Get information about a Changeset</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../finspacedata_get_dataset/"> get_dataset </a></td>
<td style="text-align: left;">Returns information about a Dataset</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../finspacedata_get_data_view/"> get_data_view </a></td>
<td style="text-align: left;">Gets information about a Dataview</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../finspacedata_get_external_data_view_access_details/"> get_external_data_view_access_details </a></td>
<td style="text-align: left;">Returns the credentials to access the
external Dataview from an S3 location</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../finspacedata_get_permission_group/"> get_permission_group </a></td>
<td style="text-align: left;">Retrieves the details of a specific
permission group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../finspacedata_get_programmatic_access_credentials/"> get_programmatic_access_credentials </a></td>
<td style="text-align: left;">Request programmatic credentials to use
with FinSpace SDK</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../finspacedata_get_user/"> get_user </a></td>
<td style="text-align: left;">Retrieves details for a specific user</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../finspacedata_get_working_location/"> get_working_location </a></td>
<td style="text-align: left;">A temporary Amazon S3 location, where you
can copy your files from a source location to stage or use as a scratch
space in FinSpace notebook</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../finspacedata_list_changesets/"> list_changesets </a></td>
<td style="text-align: left;">Lists the FinSpace Changesets for a
Dataset</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../finspacedata_list_datasets/"> list_datasets </a></td>
<td style="text-align: left;">Lists all of the active Datasets that a
user has access to</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../finspacedata_list_data_views/"> list_data_views </a></td>
<td style="text-align: left;">Lists all available Dataviews for a
Dataset</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../finspacedata_list_permission_groups/"> list_permission_groups </a></td>
<td style="text-align: left;">Lists all available permission groups in
FinSpace</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../finspacedata_list_permission_groups_by_user/"> list_permission_groups_by_user </a></td>
<td style="text-align: left;">Lists all the permission groups that are
associated with a specific user account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../finspacedata_list_users/"> list_users </a></td>
<td style="text-align: left;">Lists all available user accounts in
FinSpace</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../finspacedata_list_users_by_permission_group/"> list_users_by_permission_group </a></td>
<td style="text-align: left;">Lists details of all the users in a
specific permission group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../finspacedata_reset_user_password/"> reset_user_password </a></td>
<td style="text-align: left;">Resets the password for a specified user
ID and generates a temporary one</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../finspacedata_update_changeset/"> update_changeset </a></td>
<td style="text-align: left;">Updates a FinSpace Changeset</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../finspacedata_update_dataset/"> update_dataset </a></td>
<td style="text-align: left;">Updates a FinSpace Dataset</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../finspacedata_update_permission_group/"> update_permission_group </a></td>
<td style="text-align: left;">Modifies the details of a permission
group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../finspacedata_update_user/"> update_user </a></td>
<td style="text-align: left;">Modifies the details of the specified user
account</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- finspacedata()
    svc$associate_user_to_permission_group(
      Foo = 123
    )

    ## End(Not run)
