<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>organizations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Organizations

### Description

Organizations is a web service that enables you to consolidate your
multiple Amazon Web Services accounts into an *organization* and
centrally manage your accounts and their resources.

This guide provides descriptions of the Organizations operations. For
more information about using this service, see the [Organizations User
Guide](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html).

**Support and feedback for Organizations**

We welcome your feedback. Send your comments to
<feedback-awsorganizations@amazon.com> or post your feedback and
questions in the Organizations support forum. For more information about
the Amazon Web Services support forums, see Forums Help.

**Endpoint to call When using the CLI or the Amazon Web Services SDK**

For the current release of Organizations, specify the `us-east-1` region
for all Amazon Web Services API and CLI calls made from the commercial
Amazon Web Services Regions outside of China. If calling from one of the
Amazon Web Services Regions in China, then specify `cn-northwest-1`. You
can do this in the CLI by using these parameters and commands:

-   Use the following parameter with each command to specify both the
    endpoint and its region:

    `⁠--endpoint-url https://organizations.us-east-1.amazonaws.com⁠`
    *(from commercial Amazon Web Services Regions outside of China)*

    or

    `⁠--endpoint-url https://organizations.cn-northwest-1.amazonaws.com.cn⁠`
    *(from Amazon Web Services Regions in China)*

-   Use the default endpoint, but configure your default region with
    this command:

    `⁠aws configure set default.region us-east-1⁠` *(from commercial
    Amazon Web Services Regions outside of China)*

    or

    `⁠aws configure set default.region cn-northwest-1⁠` *(from Amazon Web
    Services Regions in China)*

-   Use the following parameter with each command to specify the
    endpoint:

    `⁠--region us-east-1⁠` *(from commercial Amazon Web Services Regions
    outside of China)*

    or

    `⁠--region cn-northwest-1⁠` *(from Amazon Web Services Regions in
    China)*

**Recording API Requests**

Organizations supports CloudTrail, a service that records Amazon Web
Services API calls for your Amazon Web Services account and delivers log
files to an Amazon S3 bucket. By using information collected by
CloudTrail, you can determine which requests the Organizations service
received, who made the request and when, and so on. For more about
Organizations and its support for CloudTrail, see [Logging Organizations
Events with
CloudTrail](https://docs.aws.amazon.com/organizations/latest/userguide/#orgs_cloudtrail-integration)
in the *Organizations User Guide*. To learn more about CloudTrail,
including how to turn it on and find your log files, see the [CloudTrail
User
Guide](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-user-guide.html).

### Usage

    organizations(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="organizations_:_config">config</code></td>
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

    svc <- organizations(
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
<td style="text-align: left;"><a href="../organizations_accept_handshake/"> accept_handshake </a></td>
<td style="text-align: left;">Sends a response to the originator of a
handshake agreeing to the action proposed by the handshake request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../organizations_attach_policy/"> attach_policy </a></td>
<td style="text-align: left;">Attaches a policy to a root, an
organizational unit (OU), or an individual account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../organizations_cancel_handshake/"> cancel_handshake </a></td>
<td style="text-align: left;">Cancels a handshake</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../organizations_close_account/"> close_account </a></td>
<td style="text-align: left;">Closes an Amazon Web Services member
account within an organization</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../organizations_create_account/"> create_account </a></td>
<td style="text-align: left;">Creates an Amazon Web Services account
that is automatically a member of the organization whose credentials
made the request</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../organizations_create_gov_cloud_account/"> create_gov_cloud_account </a></td>
<td style="text-align: left;">This action is available if all of the
following are true:</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../organizations_create_organization/"> create_organization </a></td>
<td style="text-align: left;">Creates an Amazon Web Services
organization</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../organizations_create_organizational_unit/"> create_organizational_unit </a></td>
<td style="text-align: left;">Creates an organizational unit (OU) within
a root or parent OU</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../organizations_create_policy/"> create_policy </a></td>
<td style="text-align: left;">Creates a policy of a specified type that
you can attach to a root, an organizational unit (OU), or an individual
Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../organizations_decline_handshake/"> decline_handshake </a></td>
<td style="text-align: left;">Declines a handshake request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../organizations_delete_organization/"> delete_organization </a></td>
<td style="text-align: left;">Deletes the organization</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../organizations_delete_organizational_unit/"> delete_organizational_unit </a></td>
<td style="text-align: left;">Deletes an organizational unit (OU) from a
root or another OU</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../organizations_delete_policy/"> delete_policy </a></td>
<td style="text-align: left;">Deletes the specified policy from your
organization</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../organizations_delete_resource_policy/"> delete_resource_policy </a></td>
<td style="text-align: left;">Deletes the resource policy from your
organization</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../organizations_deregister_delegated_administrator/"> deregister_delegated_administrator </a></td>
<td style="text-align: left;">Removes the specified member Amazon Web
Services account as a delegated administrator for the specified Amazon
Web Services service</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../organizations_describe_account/"> describe_account </a></td>
<td style="text-align: left;">Retrieves Organizations-related
information about the specified account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../organizations_describe_create_account_status/"> describe_create_account_status </a></td>
<td style="text-align: left;">Retrieves the current status of an
asynchronous request to create an account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../organizations_describe_effective_policy/"> describe_effective_policy </a></td>
<td style="text-align: left;">Returns the contents of the effective
policy for specified policy type and account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../organizations_describe_handshake/"> describe_handshake </a></td>
<td style="text-align: left;">Retrieves information about a previously
requested handshake</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../organizations_describe_organization/"> describe_organization </a></td>
<td style="text-align: left;">Retrieves information about the
organization that the user's account belongs to</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../organizations_describe_organizational_unit/"> describe_organizational_unit </a></td>
<td style="text-align: left;">Retrieves information about an
organizational unit (OU)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../organizations_describe_policy/"> describe_policy </a></td>
<td style="text-align: left;">Retrieves information about a policy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../organizations_describe_resource_policy/"> describe_resource_policy </a></td>
<td style="text-align: left;">Retrieves information about a resource
policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../organizations_detach_policy/"> detach_policy </a></td>
<td style="text-align: left;">Detaches a policy from a target root,
organizational unit (OU), or account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../organizations_disable_aws_service_access/"> disable_aws_service_access </a></td>
<td style="text-align: left;">Disables the integration of an Amazon Web
Services service (the service that is specified by ServicePrincipal)
with Organizations</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../organizations_disable_policy_type/"> disable_policy_type </a></td>
<td style="text-align: left;">Disables an organizational policy type in
a root</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../organizations_enable_all_features/"> enable_all_features </a></td>
<td style="text-align: left;">Enables all features in an
organization</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../organizations_enable_aws_service_access/"> enable_aws_service_access </a></td>
<td style="text-align: left;">Enables the integration of an Amazon Web
Services service (the service that is specified by ServicePrincipal)
with Organizations</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../organizations_enable_policy_type/"> enable_policy_type </a></td>
<td style="text-align: left;">Enables a policy type in a root</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../organizations_invite_account_to_organization/"> invite_account_to_organization </a></td>
<td style="text-align: left;">Sends an invitation to another account to
join your organization as a member account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../organizations_leave_organization/"> leave_organization </a></td>
<td style="text-align: left;">Removes a member account from its parent
organization</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../organizations_list_accounts/"> list_accounts </a></td>
<td style="text-align: left;">Lists all the accounts in the
organization</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../organizations_list_accounts_for_parent/"> list_accounts_for_parent </a></td>
<td style="text-align: left;">Lists the accounts in an organization that
are contained by the specified target root or organizational unit
(OU)</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../organizations_list_aws_service_access_for_organization/"> list_aws_service_access_for_organization </a></td>
<td style="text-align: left;">Returns a list of the Amazon Web Services
services that you enabled to integrate with your organization</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../organizations_list_children/"> list_children </a></td>
<td style="text-align: left;">Lists all of the organizational units
(OUs) or accounts that are contained in the specified parent OU or
root</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../organizations_list_create_account_status/"> list_create_account_status </a></td>
<td style="text-align: left;">Lists the account creation requests that
match the specified status that is currently being tracked for the
organization</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../organizations_list_delegated_administrators/"> list_delegated_administrators </a></td>
<td style="text-align: left;">Lists the Amazon Web Services accounts
that are designated as delegated administrators in this
organization</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../organizations_list_delegated_services_for_account/"> list_delegated_services_for_account </a></td>
<td style="text-align: left;">List the Amazon Web Services services for
which the specified account is a delegated administrator</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../organizations_list_handshakes_for_account/"> list_handshakes_for_account </a></td>
<td style="text-align: left;">Lists the current handshakes that are
associated with the account of the requesting user</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../organizations_list_handshakes_for_organization/"> list_handshakes_for_organization </a></td>
<td style="text-align: left;">Lists the handshakes that are associated
with the organization that the requesting user is part of</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../organizations_list_organizational_units_for_parent/"> list_organizational_units_for_parent </a></td>
<td style="text-align: left;">Lists the organizational units (OUs) in a
parent organizational unit or root</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../organizations_list_parents/"> list_parents </a></td>
<td style="text-align: left;">Lists the root or organizational units
(OUs) that serve as the immediate parent of the specified child OU or
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../organizations_list_policies/"> list_policies </a></td>
<td style="text-align: left;">Retrieves the list of all policies in an
organization of a specified type</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../organizations_list_policies_for_target/"> list_policies_for_target </a></td>
<td style="text-align: left;">Lists the policies that are directly
attached to the specified target root, organizational unit (OU), or
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../organizations_list_roots/"> list_roots </a></td>
<td style="text-align: left;">Lists the roots that are defined in the
current organization</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../organizations_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists tags that are attached to the
specified resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../organizations_list_targets_for_policy/"> list_targets_for_policy </a></td>
<td style="text-align: left;">Lists all the roots, organizational units
(OUs), and accounts that the specified policy is attached to</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../organizations_move_account/"> move_account </a></td>
<td style="text-align: left;">Moves an account from its current source
parent root or organizational unit (OU) to the specified destination
parent root or OU</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../organizations_put_resource_policy/"> put_resource_policy </a></td>
<td style="text-align: left;">Creates or updates a resource policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../organizations_register_delegated_administrator/"> register_delegated_administrator </a></td>
<td style="text-align: left;">Enables the specified member account to
administer the Organizations features of the specified Amazon Web
Services service</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../organizations_remove_account_from_organization/"> remove_account_from_organization </a></td>
<td style="text-align: left;">Removes the specified account from the
organization</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../organizations_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds one or more tags to the specified
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../organizations_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes any tags with the specified keys
from the specified resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../organizations_update_organizational_unit/"> update_organizational_unit </a></td>
<td style="text-align: left;">Renames the specified organizational unit
(OU)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../organizations_update_policy/"> update_policy </a></td>
<td style="text-align: left;">Updates an existing policy with a new
name, description, or content</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- organizations()
    # Bill is the owner of an organization, and he invites Juan's account
    # (222222222222) to join his organization. The following example shows
    # Juan's account accepting the handshake and thus agreeing to the
    # invitation.
    svc$accept_handshake(
      HandshakeId = "h-examplehandshakeid111"
    )

    ## End(Not run)
