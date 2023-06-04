<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>identitystore</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS SSO Identity Store

### Description

The Identity Store service used by AWS IAM Identity Center (successor to
AWS Single Sign-On) provides a single place to retrieve all of your
identities (users and groups). For more information, see the [IAM
Identity Center User
Guide](https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html).

     <note> <p>Although AWS Single Sign-On was renamed, the <code>sso</code> and <code>identitystore</code> API namespaces will continue to retain their original name for backward compatibility purposes. For more information, see <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html#renamed">IAM Identity Center rename</a>.</p> </note> <p>This reference guide describes the identity store operations that you can call programatically and includes detailed information about data types and errors.</p> 

### Usage

    identitystore(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="identitystore_:_config">config</code></td>
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

    svc <- identitystore(
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
<td style="text-align: left;"><a href="../identitystore_create_group/"> create_group </a></td>
<td style="text-align: left;">Creates a group within the specified
identity store</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../identitystore_create_group_membership/"> create_group_membership </a></td>
<td style="text-align: left;">Creates a relationship between a member
and a group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../identitystore_create_user/"> create_user </a></td>
<td style="text-align: left;">Creates a user within the specified
identity store</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../identitystore_delete_group/"> delete_group </a></td>
<td style="text-align: left;">Delete a group within an identity store
given GroupId</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../identitystore_delete_group_membership/"> delete_group_membership </a></td>
<td style="text-align: left;">Delete a membership within a group given
MembershipId</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../identitystore_delete_user/"> delete_user </a></td>
<td style="text-align: left;">Deletes a user within an identity store
given UserId</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../identitystore_describe_group/"> describe_group </a></td>
<td style="text-align: left;">Retrieves the group metadata and
attributes from GroupId in an identity store</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../identitystore_describe_group_membership/"> describe_group_membership </a></td>
<td style="text-align: left;">Retrieves membership metadata and
attributes from MembershipId in an identity store</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../identitystore_describe_user/"> describe_user </a></td>
<td style="text-align: left;">Retrieves the user metadata and attributes
from the UserId in an identity store</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../identitystore_get_group_id/"> get_group_id </a></td>
<td style="text-align: left;">Retrieves GroupId in an identity
store</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../identitystore_get_group_membership_id/"> get_group_membership_id </a></td>
<td style="text-align: left;">Retrieves the MembershipId in an identity
store</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../identitystore_get_user_id/"> get_user_id </a></td>
<td style="text-align: left;">Retrieves the UserId in an identity
store</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../identitystore_is_member_in_groups/"> is_member_in_groups </a></td>
<td style="text-align: left;">Checks the user's membership in all
requested groups and returns if the member exists in all queried
groups</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../identitystore_list_group_memberships/"> list_group_memberships </a></td>
<td style="text-align: left;">For the specified group in the specified
identity store, returns the list of all GroupMembership objects and
returns results in paginated form</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../identitystore_list_group_memberships_for_member/"> list_group_memberships_for_member </a></td>
<td style="text-align: left;">For the specified member in the specified
identity store, returns the list of all GroupMembership objects and
returns results in paginated form</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../identitystore_list_groups/"> list_groups </a></td>
<td style="text-align: left;">Lists all groups in the identity
store</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../identitystore_list_users/"> list_users </a></td>
<td style="text-align: left;">Lists all users in the identity store</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../identitystore_update_group/"> update_group </a></td>
<td style="text-align: left;">For the specified group in the specified
identity store, updates the group metadata and attributes</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../identitystore_update_user/"> update_user </a></td>
<td style="text-align: left;">For the specified user in the specified
identity store, updates the user metadata and attributes</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- identitystore()
    svc$create_group(
      Foo = 123
    )

    ## End(Not run)
