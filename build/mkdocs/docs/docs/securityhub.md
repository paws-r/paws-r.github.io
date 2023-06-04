<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS SecurityHub

### Description

Security Hub provides you with a comprehensive view of the security
state of your Amazon Web Services environment and resources. It also
provides you with the readiness status of your environment based on
controls from supported security standards. Security Hub collects
security data from Amazon Web Services accounts, services, and
integrated third-party products and helps you analyze security trends in
your environment to identify the highest priority security issues. For
more information about Security Hub, see the [Security HubUser
Guide](https://docs.aws.amazon.com/securityhub/latest/userguide/what-is-securityhub.html).

When you use operations in the Security Hub API, the requests are
executed only in the Amazon Web Services Region that is currently active
or in the specific Amazon Web Services Region that you specify in your
request. Any configuration or settings change that results from the
operation is applied only to that Region. To make the same change in
other Regions, run the same command for each Region in which you want to
apply the change.

For example, if your Region is set to `us-west-2`, when you use
`create_members` to add a member account to Security Hub, the
association of the member account with the administrator account is
created only in the `us-west-2` Region. Security Hub must be enabled for
the member account in the same Region that the invitation was sent from.

The following throttling limits apply to using Security Hub API
operations.

-   `batch_enable_standards` - `RateLimit` of 1 request per second.
    `BurstLimit` of 1 request per second.

-   `get_findings` - `RateLimit` of 3 requests per second. `BurstLimit`
    of 6 requests per second.

-   `batch_import_findings` - `RateLimit` of 10 requests per second.
    `BurstLimit` of 30 requests per second.

-   `batch_update_findings` - `RateLimit` of 10 requests per second.
    `BurstLimit` of 30 requests per second.

-   `update_standards_control` - `RateLimit` of 1 request per second.
    `BurstLimit` of 5 requests per second.

-   All other operations - `RateLimit` of 10 requests per second.
    `BurstLimit` of 30 requests per second.

### Usage

    securityhub(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="securityhub_:_config">config</code></td>
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

    svc <- securityhub(
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
<td style="text-align: left;"><a href="../securityhub_accept_administrator_invitation/"> accept_administrator_invitation </a></td>
<td style="text-align: left;">Accepts the invitation to be a member
account and be monitored by the Security Hub administrator account that
the invitation was sent from</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../securityhub_accept_invitation/"> accept_invitation </a></td>
<td style="text-align: left;">This method is deprecated</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../securityhub_batch_disable_standards/"> batch_disable_standards </a></td>
<td style="text-align: left;">Disables the standards specified by the
provided StandardsSubscriptionArns</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../securityhub_batch_enable_standards/"> batch_enable_standards </a></td>
<td style="text-align: left;">Enables the standards specified by the
provided StandardsArn</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../securityhub_batch_get_security_controls/"> batch_get_security_controls </a></td>
<td style="text-align: left;">Provides details about a batch of security
controls for the current Amazon Web Services account and Amazon Web
Services Region</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../securityhub_batch_get_standards_control_associations/"> batch_get_standards_control_associations </a></td>
<td style="text-align: left;">For a batch of security controls and
standards, identifies whether each control is currently enabled or
disabled in a standard</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../securityhub_batch_import_findings/"> batch_import_findings </a></td>
<td style="text-align: left;">Imports security findings generated by a
finding provider into Security Hub</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../securityhub_batch_update_findings/"> batch_update_findings </a></td>
<td style="text-align: left;">Used by Security Hub customers to update
information about their investigation into a finding</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../securityhub_batch_update_standards_control_associations/"> batch_update_standards_control_associations </a></td>
<td style="text-align: left;">For a batch of security controls and
standards, this operation updates the enablement status of a control in
a standard</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../securityhub_create_action_target/"> create_action_target </a></td>
<td style="text-align: left;">Creates a custom action target in Security
Hub</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../securityhub_create_finding_aggregator/"> create_finding_aggregator </a></td>
<td style="text-align: left;">Used to enable finding aggregation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../securityhub_create_insight/"> create_insight </a></td>
<td style="text-align: left;">Creates a custom insight in Security
Hub</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../securityhub_create_members/"> create_members </a></td>
<td style="text-align: left;">Creates a member association in Security
Hub between the specified accounts and the account used to make the
request, which is the administrator account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../securityhub_decline_invitations/"> decline_invitations </a></td>
<td style="text-align: left;">Declines invitations to become a member
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../securityhub_delete_action_target/"> delete_action_target </a></td>
<td style="text-align: left;">Deletes a custom action target from
Security Hub</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../securityhub_delete_finding_aggregator/"> delete_finding_aggregator </a></td>
<td style="text-align: left;">Deletes a finding aggregator</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../securityhub_delete_insight/"> delete_insight </a></td>
<td style="text-align: left;">Deletes the insight specified by the
InsightArn</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../securityhub_delete_invitations/"> delete_invitations </a></td>
<td style="text-align: left;">Deletes invitations received by the Amazon
Web Services account to become a member account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../securityhub_delete_members/"> delete_members </a></td>
<td style="text-align: left;">Deletes the specified member accounts from
Security Hub</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../securityhub_describe_action_targets/"> describe_action_targets </a></td>
<td style="text-align: left;">Returns a list of the custom action
targets in Security Hub in your account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../securityhub_describe_hub/"> describe_hub </a></td>
<td style="text-align: left;">Returns details about the Hub resource in
your account, including the HubArn and the time when you enabled
Security Hub</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../securityhub_describe_organization_configuration/"> describe_organization_configuration </a></td>
<td style="text-align: left;">Returns information about the
Organizations configuration for Security Hub</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../securityhub_describe_products/"> describe_products </a></td>
<td style="text-align: left;">Returns information about product
integrations in Security Hub</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../securityhub_describe_standards/"> describe_standards </a></td>
<td style="text-align: left;">Returns a list of the available standards
in Security Hub</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../securityhub_describe_standards_controls/"> describe_standards_controls </a></td>
<td style="text-align: left;">Returns a list of security standards
controls</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../securityhub_disable_import_findings_for_product/"> disable_import_findings_for_product </a></td>
<td style="text-align: left;">Disables the integration of the specified
product with Security Hub</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../securityhub_disable_organization_admin_account/"> disable_organization_admin_account </a></td>
<td style="text-align: left;">Disables a Security Hub administrator
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../securityhub_disable_security_hub/"> disable_security_hub </a></td>
<td style="text-align: left;">Disables Security Hub in your account only
in the current Region</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../securityhub_disassociate_from_administrator_account/"> disassociate_from_administrator_account </a></td>
<td style="text-align: left;">Disassociates the current Security Hub
member account from the associated administrator account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../securityhub_disassociate_from_master_account/"> disassociate_from_master_account </a></td>
<td style="text-align: left;">This method is deprecated</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../securityhub_disassociate_members/"> disassociate_members </a></td>
<td style="text-align: left;">Disassociates the specified member
accounts from the associated administrator account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../securityhub_enable_import_findings_for_product/"> enable_import_findings_for_product </a></td>
<td style="text-align: left;">Enables the integration of a partner
product with Security Hub</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../securityhub_enable_organization_admin_account/"> enable_organization_admin_account </a></td>
<td style="text-align: left;">Designates the Security Hub administrator
account for an organization</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../securityhub_enable_security_hub/"> enable_security_hub </a></td>
<td style="text-align: left;">Enables Security Hub for your account in
the current Region or the Region you specify in the request</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../securityhub_get_administrator_account/"> get_administrator_account </a></td>
<td style="text-align: left;">Provides the details for the Security Hub
administrator account for the current member account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../securityhub_get_enabled_standards/"> get_enabled_standards </a></td>
<td style="text-align: left;">Returns a list of the standards that are
currently enabled</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../securityhub_get_finding_aggregator/"> get_finding_aggregator </a></td>
<td style="text-align: left;">Returns the current finding aggregation
configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../securityhub_get_finding_history/"> get_finding_history </a></td>
<td style="text-align: left;">Returns history for a Security Hub finding
in the last 90 days</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../securityhub_get_findings/"> get_findings </a></td>
<td style="text-align: left;">Returns a list of findings that match the
specified criteria</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../securityhub_get_insight_results/"> get_insight_results </a></td>
<td style="text-align: left;">Lists the results of the Security Hub
insight specified by the insight ARN</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../securityhub_get_insights/"> get_insights </a></td>
<td style="text-align: left;">Lists and describes insights for the
specified insight ARNs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../securityhub_get_invitations_count/"> get_invitations_count </a></td>
<td style="text-align: left;">Returns the count of all Security Hub
membership invitations that were sent to the current member account, not
including the currently accepted invitation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../securityhub_get_master_account/"> get_master_account </a></td>
<td style="text-align: left;">This method is deprecated</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../securityhub_get_members/"> get_members </a></td>
<td style="text-align: left;">Returns the details for the Security Hub
member accounts for the specified account IDs</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../securityhub_invite_members/"> invite_members </a></td>
<td style="text-align: left;">Invites other Amazon Web Services accounts
to become member accounts for the Security Hub administrator account
that the invitation is sent from</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../securityhub_list_enabled_products_for_import/"> list_enabled_products_for_import </a></td>
<td style="text-align: left;">Lists all findings-generating solutions
(products) that you are subscribed to receive findings from in Security
Hub</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../securityhub_list_finding_aggregators/"> list_finding_aggregators </a></td>
<td style="text-align: left;">If finding aggregation is enabled, then
ListFindingAggregators returns the ARN of the finding aggregator</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../securityhub_list_invitations/"> list_invitations </a></td>
<td style="text-align: left;">Lists all Security Hub membership
invitations that were sent to the current Amazon Web Services
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../securityhub_list_members/"> list_members </a></td>
<td style="text-align: left;">Lists details about all member accounts
for the current Security Hub administrator account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../securityhub_list_organization_admin_accounts/"> list_organization_admin_accounts </a></td>
<td style="text-align: left;">Lists the Security Hub administrator
accounts</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../securityhub_list_security_control_definitions/"> list_security_control_definitions </a></td>
<td style="text-align: left;">Lists all of the security controls that
apply to a specified standard</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../securityhub_list_standards_control_associations/"> list_standards_control_associations </a></td>
<td style="text-align: left;">Specifies whether a control is currently
enabled or disabled in each enabled standard in the calling account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../securityhub_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Returns a list of tags associated with a
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../securityhub_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds one or more tags to a resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../securityhub_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes one or more tags from a
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../securityhub_update_action_target/"> update_action_target </a></td>
<td style="text-align: left;">Updates the name and description of a
custom action target in Security Hub</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../securityhub_update_finding_aggregator/"> update_finding_aggregator </a></td>
<td style="text-align: left;">Updates the finding aggregation
configuration</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../securityhub_update_findings/"> update_findings </a></td>
<td style="text-align: left;">UpdateFindings is deprecated</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../securityhub_update_insight/"> update_insight </a></td>
<td style="text-align: left;">Updates the Security Hub insight
identified by the specified insight ARN</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../securityhub_update_organization_configuration/"> update_organization_configuration </a></td>
<td style="text-align: left;">Used to update the configuration related
to Organizations</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../securityhub_update_security_hub_configuration/"> update_security_hub_configuration </a></td>
<td style="text-align: left;">Updates configuration options for Security
Hub</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../securityhub_update_standards_control/"> update_standards_control </a></td>
<td style="text-align: left;">Used to control whether an individual
security standard control is enabled or disabled</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- securityhub()
    # The following example demonstrates how an account can accept an
    # invitation from the Security Hub administrator account to be a member
    # account. This operation is applicable only to member accounts that are
    # not added through AWS Organizations.
    svc$accept_administrator_invitation(
      AdministratorId = "123456789012",
      InvitationId = "7ab938c5d52d7904ad09f9e7c20cc4eb"
    )

    ## End(Not run)
