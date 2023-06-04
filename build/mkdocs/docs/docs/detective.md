<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>detective</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Detective

### Description

Detective uses machine learning and purpose-built visualizations to help
you to analyze and investigate security issues across your Amazon Web
Services (Amazon Web Services) workloads. Detective automatically
extracts time-based events such as login attempts, API calls, and
network traffic from CloudTrail and Amazon Virtual Private Cloud (Amazon
VPC) flow logs. It also extracts findings detected by Amazon GuardDuty.

The Detective API primarily supports the creation and management of
behavior graphs. A behavior graph contains the extracted data from a set
of member accounts, and is created and managed by an administrator
account.

To add a member account to the behavior graph, the administrator account
sends an invitation to the account. When the account accepts the
invitation, it becomes a member account in the behavior graph.

Detective is also integrated with Organizations. The organization
management account designates the Detective administrator account for
the organization. That account becomes the administrator account for the
organization behavior graph. The Detective administrator account is also
the delegated administrator account for Detective in Organizations.

The Detective administrator account can enable any organization account
as a member account in the organization behavior graph. The organization
accounts do not receive invitations. The Detective administrator account
can also invite other accounts to the organization behavior graph.

Every behavior graph is specific to a Region. You can only use the API
to manage behavior graphs that belong to the Region that is associated
with the currently selected endpoint.

The administrator account for a behavior graph can use the Detective API
to do the following:

-   Enable and disable Detective. Enabling Detective creates a new
    behavior graph.

-   View the list of member accounts in a behavior graph.

-   Add member accounts to a behavior graph.

-   Remove member accounts from a behavior graph.

-   Apply tags to a behavior graph.

The organization management account can use the Detective API to select
the delegated administrator for Detective.

The Detective administrator account for an organization can use the
Detective API to do the following:

-   Perform all of the functions of an administrator account.

-   Determine whether to automatically enable new organization accounts
    as member accounts in the organization behavior graph.

An invited member account can use the Detective API to do the following:

-   View the list of behavior graphs that they are invited to.

-   Accept an invitation to contribute to a behavior graph.

-   Decline an invitation to contribute to a behavior graph.

-   Remove their account from a behavior graph.

All API actions are logged as CloudTrail events. See [Logging Detective
API Calls with
CloudTrail](https://docs.aws.amazon.com/detective/latest/adminguide/logging-using-cloudtrail.html).

We replaced the term "master account" with the term "administrator
account." An administrator account is used to centrally manage multiple
accounts. In the case of Detective, the administrator account manages
the accounts in their behavior graph.

### Usage

    detective(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="detective_:_config">config</code></td>
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

    svc <- detective(
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
<td style="text-align: left;"><a href="../detective_accept_invitation/"> accept_invitation </a></td>
<td style="text-align: left;">Accepts an invitation for the member
account to contribute data to a behavior graph</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../detective_batch_get_graph_member_datasources/"> batch_get_graph_member_datasources </a></td>
<td style="text-align: left;">Gets data source package information for
the behavior graph</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../detective_batch_get_membership_datasources/"> batch_get_membership_datasources </a></td>
<td style="text-align: left;">Gets information on the data source
package history for an account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../detective_create_graph/"> create_graph </a></td>
<td style="text-align: left;">Creates a new behavior graph for the
calling account, and sets that account as the administrator account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../detective_create_members/"> create_members </a></td>
<td style="text-align: left;">CreateMembers is used to send invitations
to accounts</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../detective_delete_graph/"> delete_graph </a></td>
<td style="text-align: left;">Disables the specified behavior graph and
queues it to be deleted</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../detective_delete_members/"> delete_members </a></td>
<td style="text-align: left;">Removes the specified member accounts from
the behavior graph</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../detective_describe_organization_configuration/"> describe_organization_configuration </a></td>
<td style="text-align: left;">Returns information about the
configuration for the organization behavior graph</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../detective_disable_organization_admin_account/"> disable_organization_admin_account </a></td>
<td style="text-align: left;">Removes the Detective administrator
account in the current Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../detective_disassociate_membership/"> disassociate_membership </a></td>
<td style="text-align: left;">Removes the member account from the
specified behavior graph</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../detective_enable_organization_admin_account/"> enable_organization_admin_account </a></td>
<td style="text-align: left;">Designates the Detective administrator
account for the organization in the current Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../detective_get_members/"> get_members </a></td>
<td style="text-align: left;">Returns the membership details for
specified member accounts for a behavior graph</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../detective_list_datasource_packages/"> list_datasource_packages </a></td>
<td style="text-align: left;">Lists data source packages in the behavior
graph</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../detective_list_graphs/"> list_graphs </a></td>
<td style="text-align: left;">Returns the list of behavior graphs that
the calling account is an administrator account of</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../detective_list_invitations/"> list_invitations </a></td>
<td style="text-align: left;">Retrieves the list of open and accepted
behavior graph invitations for the member account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../detective_list_members/"> list_members </a></td>
<td style="text-align: left;">Retrieves the list of member accounts for
a behavior graph</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../detective_list_organization_admin_accounts/"> list_organization_admin_accounts </a></td>
<td style="text-align: left;">Returns information about the Detective
administrator account for an organization</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../detective_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Returns the tag values that are assigned
to a behavior graph</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../detective_reject_invitation/"> reject_invitation </a></td>
<td style="text-align: left;">Rejects an invitation to contribute the
account data to a behavior graph</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../detective_start_monitoring_member/"> start_monitoring_member </a></td>
<td style="text-align: left;">Sends a request to enable data ingest for
a member account that has a status of ACCEPTED_BUT_DISABLED</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../detective_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Applies tag values to a behavior
graph</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../detective_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes tags from a behavior graph</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../detective_update_datasource_packages/"> update_datasource_packages </a></td>
<td style="text-align: left;">Starts a data source packages for the
behavior graph</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../detective_update_organization_configuration/"> update_organization_configuration </a></td>
<td style="text-align: left;">Updates the configuration for the
Organizations integration in the current Region</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- detective()
    svc$accept_invitation(
      Foo = 123
    )

    ## End(Not run)
