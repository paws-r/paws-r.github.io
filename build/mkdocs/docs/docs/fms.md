<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>fms</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Firewall Management Service

### Description

This is the *Firewall Manager API Reference*. This guide is for
developers who need detailed information about the Firewall Manager API
actions, data types, and errors. For detailed information about Firewall
Manager features, see the [Firewall Manager Developer
Guide](https://docs.aws.amazon.com/waf/latest/developerguide/fms-chapter.html).

Some API actions require explicit resource permissions. For information,
see the developer guide topic [Service roles for Firewall
Manager](https://docs.aws.amazon.com/waf/latest/developerguide/fms-security_iam_service-with-iam.html#fms-security_iam_service-with-iam-roles-service).

### Usage

    fms(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="fms_:_config">config</code></td>
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

    svc <- fms(
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
<td style="text-align: left;"><a href="../fms_associate_admin_account/"> associate_admin_account </a></td>
<td style="text-align: left;">Sets a Firewall Manager default
administrator account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fms_associate_third_party_firewall/"> associate_third_party_firewall </a></td>
<td style="text-align: left;">Sets the Firewall Manager policy
administrator as a tenant administrator of a third-party firewall
service</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fms_batch_associate_resource/"> batch_associate_resource </a></td>
<td style="text-align: left;">Associate resources to a Firewall Manager
resource set</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fms_batch_disassociate_resource/"> batch_disassociate_resource </a></td>
<td style="text-align: left;">Disassociates resources from a Firewall
Manager resource set</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fms_delete_apps_list/"> delete_apps_list </a></td>
<td style="text-align: left;">Permanently deletes an Firewall Manager
applications list</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fms_delete_notification_channel/"> delete_notification_channel </a></td>
<td style="text-align: left;">Deletes an Firewall Manager association
with the IAM role and the Amazon Simple Notification Service (SNS) topic
that is used to record Firewall Manager SNS logs</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fms_delete_policy/"> delete_policy </a></td>
<td style="text-align: left;">Permanently deletes an Firewall Manager
policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fms_delete_protocols_list/"> delete_protocols_list </a></td>
<td style="text-align: left;">Permanently deletes an Firewall Manager
protocols list</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fms_delete_resource_set/"> delete_resource_set </a></td>
<td style="text-align: left;">Deletes the specified ResourceSet</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fms_disassociate_admin_account/"> disassociate_admin_account </a></td>
<td style="text-align: left;">Disassociates an Firewall Manager
administrator account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fms_disassociate_third_party_firewall/"> disassociate_third_party_firewall </a></td>
<td style="text-align: left;">Disassociates a Firewall Manager policy
administrator from a third-party firewall tenant</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fms_get_admin_account/"> get_admin_account </a></td>
<td style="text-align: left;">Returns the Organizations account that is
associated with Firewall Manager as the Firewall Manager default
administrator</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fms_get_admin_scope/"> get_admin_scope </a></td>
<td style="text-align: left;">Returns information about the specified
account's administrative scope</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fms_get_apps_list/"> get_apps_list </a></td>
<td style="text-align: left;">Returns information about the specified
Firewall Manager applications list</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fms_get_compliance_detail/"> get_compliance_detail </a></td>
<td style="text-align: left;">Returns detailed compliance information
about the specified member account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fms_get_notification_channel/"> get_notification_channel </a></td>
<td style="text-align: left;">Information about the Amazon Simple
Notification Service (SNS) topic that is used to record Firewall Manager
SNS logs</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fms_get_policy/"> get_policy </a></td>
<td style="text-align: left;">Returns information about the specified
Firewall Manager policy</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fms_get_protection_status/"> get_protection_status </a></td>
<td style="text-align: left;">If you created a Shield Advanced policy,
returns policy-level attack summary information in the event of a
potential DDoS attack</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fms_get_protocols_list/"> get_protocols_list </a></td>
<td style="text-align: left;">Returns information about the specified
Firewall Manager protocols list</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fms_get_resource_set/"> get_resource_set </a></td>
<td style="text-align: left;">Gets information about a specific resource
set</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../fms_get_third_party_firewall_association_status/"> get_third_party_firewall_association_status </a></td>
<td style="text-align: left;">The onboarding status of a Firewall
Manager admin account to third-party firewall vendor tenant</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fms_get_violation_details/"> get_violation_details </a></td>
<td style="text-align: left;">Retrieves violations for a resource based
on the specified Firewall Manager policy and Amazon Web Services
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fms_list_admin_accounts_for_organization/"> list_admin_accounts_for_organization </a></td>
<td style="text-align: left;">Returns a AdminAccounts object that lists
the Firewall Manager administrators within the organization that are
onboarded to Firewall Manager by AssociateAdminAccount</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fms_list_admins_managing_account/"> list_admins_managing_account </a></td>
<td style="text-align: left;">Lists the accounts that are managing the
specified Organizations member account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fms_list_apps_lists/"> list_apps_lists </a></td>
<td style="text-align: left;">Returns an array of AppsListDataSummary
objects</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fms_list_compliance_status/"> list_compliance_status </a></td>
<td style="text-align: left;">Returns an array of PolicyComplianceStatus
objects</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fms_list_discovered_resources/"> list_discovered_resources </a></td>
<td style="text-align: left;">Returns an array of resources in the
organization's accounts that are available to be associated with a
resource set</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fms_list_member_accounts/"> list_member_accounts </a></td>
<td style="text-align: left;">Returns a MemberAccounts object that lists
the member accounts in the administrator's Amazon Web Services
organization</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fms_list_policies/"> list_policies </a></td>
<td style="text-align: left;">Returns an array of PolicySummary
objects</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fms_list_protocols_lists/"> list_protocols_lists </a></td>
<td style="text-align: left;">Returns an array of
ProtocolsListDataSummary objects</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fms_list_resource_set_resources/"> list_resource_set_resources </a></td>
<td style="text-align: left;">Returns an array of resources that are
currently associated to a resource set</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fms_list_resource_sets/"> list_resource_sets </a></td>
<td style="text-align: left;">Returns an array of ResourceSetSummary
objects</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fms_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Retrieves the list of tags for the
specified Amazon Web Services resource</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../fms_list_third_party_firewall_firewall_policies/"> list_third_party_firewall_firewall_policies </a></td>
<td style="text-align: left;">Retrieves a list of all of the third-party
firewall policies that are associated with the third-party firewall
administrator's account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fms_put_admin_account/"> put_admin_account </a></td>
<td style="text-align: left;">Creates or updates an Firewall Manager
administrator account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fms_put_apps_list/"> put_apps_list </a></td>
<td style="text-align: left;">Creates an Firewall Manager applications
list</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fms_put_notification_channel/"> put_notification_channel </a></td>
<td style="text-align: left;">Designates the IAM role and Amazon Simple
Notification Service (SNS) topic that Firewall Manager uses to record
SNS logs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fms_put_policy/"> put_policy </a></td>
<td style="text-align: left;">Creates an Firewall Manager policy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fms_put_protocols_list/"> put_protocols_list </a></td>
<td style="text-align: left;">Creates an Firewall Manager protocols
list</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fms_put_resource_set/"> put_resource_set </a></td>
<td style="text-align: left;">Creates the resource set</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../fms_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds one or more tags to an Amazon Web
Services resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../fms_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes one or more tags from an Amazon
Web Services resource</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- fms()
    svc$associate_admin_account(
      Foo = 123
    )

    ## End(Not run)
