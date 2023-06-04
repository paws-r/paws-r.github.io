<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmail</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon WorkMail

### Description

WorkMail is a secure, managed business email and calendaring service
with support for existing desktop and mobile email clients. You can
access your email, contacts, and calendars using Microsoft Outlook, your
browser, or other native iOS and Android email applications. You can
integrate WorkMail with your existing corporate directory and control
both the keys that encrypt your data and the location in which your data
is stored.

The WorkMail API is designed for the following scenarios:

-   Listing and describing organizations

-   Managing users

-   Managing groups

-   Managing resources

All WorkMail API operations are Amazon-authenticated and
certificate-signed. They not only require the use of the AWS SDK, but
also allow for the exclusive use of AWS Identity and Access Management
users and roles to help facilitate access, trust, and permission
policies. By creating a role and allowing an IAM user to access the
WorkMail site, the IAM user gains full administrative visibility into
the entire WorkMail organization (or as set in the IAM policy). This
includes, but is not limited to, the ability to create, update, and
delete users, groups, and resources. This allows developers to perform
the scenarios listed above, as well as give users the ability to grant
access on a selective basis using the IAM model.

### Usage

    workmail(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="workmail_:_config">config</code></td>
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

    svc <- workmail(
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
<td style="text-align: left;"><a href="../workmail_associate_delegate_to_resource/"> associate_delegate_to_resource </a></td>
<td style="text-align: left;">Adds a member (user or group) to the
resource's set of delegates</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_associate_member_to_group/"> associate_member_to_group </a></td>
<td style="text-align: left;">Adds a member (user or group) to the
group's set</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_assume_impersonation_role/"> assume_impersonation_role </a></td>
<td style="text-align: left;">Assumes an impersonation role for the
given WorkMail organization</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_cancel_mailbox_export_job/"> cancel_mailbox_export_job </a></td>
<td style="text-align: left;">Cancels a mailbox export job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_create_alias/"> create_alias </a></td>
<td style="text-align: left;">Adds an alias to the set of a given member
(user or group) of WorkMail</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_create_availability_configuration/"> create_availability_configuration </a></td>
<td style="text-align: left;">Creates an AvailabilityConfiguration for
the given WorkMail organization and domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_create_group/"> create_group </a></td>
<td style="text-align: left;">Creates a group that can be used in
WorkMail by calling the RegisterToWorkMail operation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_create_impersonation_role/"> create_impersonation_role </a></td>
<td style="text-align: left;">Creates an impersonation role for the
given WorkMail organization</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_create_mobile_device_access_rule/"> create_mobile_device_access_rule </a></td>
<td style="text-align: left;">Creates a new mobile device access rule
for the specified WorkMail organization</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_create_organization/"> create_organization </a></td>
<td style="text-align: left;">Creates a new WorkMail organization</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_create_resource/"> create_resource </a></td>
<td style="text-align: left;">Creates a new WorkMail resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_create_user/"> create_user </a></td>
<td style="text-align: left;">Creates a user who can be used in WorkMail
by calling the RegisterToWorkMail operation</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_delete_access_control_rule/"> delete_access_control_rule </a></td>
<td style="text-align: left;">Deletes an access control rule for the
specified WorkMail organization</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_delete_alias/"> delete_alias </a></td>
<td style="text-align: left;">Remove one or more specified aliases from
a set of aliases for a given user</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_delete_availability_configuration/"> delete_availability_configuration </a></td>
<td style="text-align: left;">Deletes the AvailabilityConfiguration for
the given WorkMail organization and domain</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_delete_email_monitoring_configuration/"> delete_email_monitoring_configuration </a></td>
<td style="text-align: left;">Deletes the email monitoring configuration
for a specified organization</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_delete_group/"> delete_group </a></td>
<td style="text-align: left;">Deletes a group from WorkMail</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_delete_impersonation_role/"> delete_impersonation_role </a></td>
<td style="text-align: left;">Deletes an impersonation role for the
given WorkMail organization</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_delete_mailbox_permissions/"> delete_mailbox_permissions </a></td>
<td style="text-align: left;">Deletes permissions granted to a member
(user or group)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_delete_mobile_device_access_override/"> delete_mobile_device_access_override </a></td>
<td style="text-align: left;">Deletes the mobile device access override
for the given WorkMail organization, user, and device</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_delete_mobile_device_access_rule/"> delete_mobile_device_access_rule </a></td>
<td style="text-align: left;">Deletes a mobile device access rule for
the specified WorkMail organization</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_delete_organization/"> delete_organization </a></td>
<td style="text-align: left;">Deletes an WorkMail organization and all
underlying AWS resources managed by WorkMail as part of the
organization</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_delete_resource/"> delete_resource </a></td>
<td style="text-align: left;">Deletes the specified resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_delete_retention_policy/"> delete_retention_policy </a></td>
<td style="text-align: left;">Deletes the specified retention policy
from the specified organization</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_delete_user/"> delete_user </a></td>
<td style="text-align: left;">Deletes a user from WorkMail and all
subsequent systems</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_deregister_from_work_mail/"> deregister_from_work_mail </a></td>
<td style="text-align: left;">Mark a user, group, or resource as no
longer used in WorkMail</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_deregister_mail_domain/"> deregister_mail_domain </a></td>
<td style="text-align: left;">Removes a domain from WorkMail, stops
email routing to WorkMail, and removes the authorization allowing
WorkMail use</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../workmail_describe_email_monitoring_configuration/"> describe_email_monitoring_configuration </a></td>
<td style="text-align: left;">Describes the current email monitoring
configuration for a specified organization</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_describe_group/"> describe_group </a></td>
<td style="text-align: left;">Returns the data available for the
group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_describe_inbound_dmarc_settings/"> describe_inbound_dmarc_settings </a></td>
<td style="text-align: left;">Lists the settings in a DMARC policy for a
specified organization</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_describe_mailbox_export_job/"> describe_mailbox_export_job </a></td>
<td style="text-align: left;">Describes the current status of a mailbox
export job</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_describe_organization/"> describe_organization </a></td>
<td style="text-align: left;">Provides more information regarding a
given organization based on its identifier</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_describe_resource/"> describe_resource </a></td>
<td style="text-align: left;">Returns the data available for the
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_describe_user/"> describe_user </a></td>
<td style="text-align: left;">Provides information regarding the
user</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_disassociate_delegate_from_resource/"> disassociate_delegate_from_resource </a></td>
<td style="text-align: left;">Removes a member from the resource's set
of delegates</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_disassociate_member_from_group/"> disassociate_member_from_group </a></td>
<td style="text-align: left;">Removes a member from a group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_get_access_control_effect/"> get_access_control_effect </a></td>
<td style="text-align: left;">Gets the effects of an organization's
access control rules as they apply to a specified IPv4 address, access
protocol action, and user ID or impersonation role ID</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_get_default_retention_policy/"> get_default_retention_policy </a></td>
<td style="text-align: left;">Gets the default retention policy details
for the specified organization</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_get_impersonation_role/"> get_impersonation_role </a></td>
<td style="text-align: left;">Gets the impersonation role details for
the given WorkMail organization</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_get_impersonation_role_effect/"> get_impersonation_role_effect </a></td>
<td style="text-align: left;">Tests whether the given impersonation role
can impersonate a target user</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_get_mailbox_details/"> get_mailbox_details </a></td>
<td style="text-align: left;">Requests a user's mailbox details for a
specified organization and user</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_get_mail_domain/"> get_mail_domain </a></td>
<td style="text-align: left;">Gets details for a mail domain, including
domain records required to configure your domain with recommended
security</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_get_mobile_device_access_effect/"> get_mobile_device_access_effect </a></td>
<td style="text-align: left;">Simulates the effect of the mobile device
access rules for the given attributes of a sample access event</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_get_mobile_device_access_override/"> get_mobile_device_access_override </a></td>
<td style="text-align: left;">Gets the mobile device access override for
the given WorkMail organization, user, and device</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_list_access_control_rules/"> list_access_control_rules </a></td>
<td style="text-align: left;">Lists the access control rules for the
specified organization</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_list_aliases/"> list_aliases </a></td>
<td style="text-align: left;">Creates a paginated call to list the
aliases associated with a given entity</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_list_availability_configurations/"> list_availability_configurations </a></td>
<td style="text-align: left;">List all the AvailabilityConfiguration's
for the given WorkMail organization</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_list_group_members/"> list_group_members </a></td>
<td style="text-align: left;">Returns an overview of the members of a
group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_list_groups/"> list_groups </a></td>
<td style="text-align: left;">Returns summaries of the organization's
groups</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_list_impersonation_roles/"> list_impersonation_roles </a></td>
<td style="text-align: left;">Lists all the impersonation roles for the
given WorkMail organization</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_list_mailbox_export_jobs/"> list_mailbox_export_jobs </a></td>
<td style="text-align: left;">Lists the mailbox export jobs started for
the specified organization within the last seven days</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_list_mailbox_permissions/"> list_mailbox_permissions </a></td>
<td style="text-align: left;">Lists the mailbox permissions associated
with a user, group, or resource mailbox</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_list_mail_domains/"> list_mail_domains </a></td>
<td style="text-align: left;">Lists the mail domains in a given WorkMail
organization</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_list_mobile_device_access_overrides/"> list_mobile_device_access_overrides </a></td>
<td style="text-align: left;">Lists all the mobile device access
overrides for any given combination of WorkMail organization, user, or
device</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_list_mobile_device_access_rules/"> list_mobile_device_access_rules </a></td>
<td style="text-align: left;">Lists the mobile device access rules for
the specified WorkMail organization</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_list_organizations/"> list_organizations </a></td>
<td style="text-align: left;">Returns summaries of the customer's
organizations</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_list_resource_delegates/"> list_resource_delegates </a></td>
<td style="text-align: left;">Lists the delegates associated with a
resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_list_resources/"> list_resources </a></td>
<td style="text-align: left;">Returns summaries of the organization's
resources</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Lists the tags applied to an WorkMail
organization resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_list_users/"> list_users </a></td>
<td style="text-align: left;">Returns summaries of the organization's
users</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_put_access_control_rule/"> put_access_control_rule </a></td>
<td style="text-align: left;">Adds a new access control rule for the
specified organization</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_put_email_monitoring_configuration/"> put_email_monitoring_configuration </a></td>
<td style="text-align: left;">Creates or updates the email monitoring
configuration for a specified organization</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_put_inbound_dmarc_settings/"> put_inbound_dmarc_settings </a></td>
<td style="text-align: left;">Enables or disables a DMARC policy for a
given organization</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_put_mailbox_permissions/"> put_mailbox_permissions </a></td>
<td style="text-align: left;">Sets permissions for a user, group, or
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_put_mobile_device_access_override/"> put_mobile_device_access_override </a></td>
<td style="text-align: left;">Creates or updates a mobile device access
override for the given WorkMail organization, user, and device</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_put_retention_policy/"> put_retention_policy </a></td>
<td style="text-align: left;">Puts a retention policy to the specified
organization</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_register_mail_domain/"> register_mail_domain </a></td>
<td style="text-align: left;">Registers a new domain in WorkMail and
SES, and configures it for use by WorkMail</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_register_to_work_mail/"> register_to_work_mail </a></td>
<td style="text-align: left;">Registers an existing and disabled user,
group, or resource for WorkMail use by associating a mailbox and
calendaring capabilities</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_reset_password/"> reset_password </a></td>
<td style="text-align: left;">Allows the administrator to reset the
password for a user</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_start_mailbox_export_job/"> start_mailbox_export_job </a></td>
<td style="text-align: left;">Starts a mailbox export job to export
MIME-format email messages and calendar items from the specified mailbox
to the specified Amazon Simple Storage Service (Amazon S3) bucket</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Applies the specified tags to the
specified WorkMailorganization resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_test_availability_configuration/"> test_availability_configuration </a></td>
<td style="text-align: left;">Performs a test on an availability
provider to ensure that access is allowed</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Untags the specified tags from the
specified WorkMail organization resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_update_availability_configuration/"> update_availability_configuration </a></td>
<td style="text-align: left;">Updates an existing
AvailabilityConfiguration for the given WorkMail organization and
domain</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_update_default_mail_domain/"> update_default_mail_domain </a></td>
<td style="text-align: left;">Updates the default mail domain for an
organization</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_update_impersonation_role/"> update_impersonation_role </a></td>
<td style="text-align: left;">Updates an impersonation role for the
given WorkMail organization</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_update_mailbox_quota/"> update_mailbox_quota </a></td>
<td style="text-align: left;">Updates a user's current mailbox quota for
a specified organization and user</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_update_mobile_device_access_rule/"> update_mobile_device_access_rule </a></td>
<td style="text-align: left;">Updates a mobile device access rule for
the specified WorkMail organization</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../workmail_update_primary_email_address/"> update_primary_email_address </a></td>
<td style="text-align: left;">Updates the primary email for a user,
group, or resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../workmail_update_resource/"> update_resource </a></td>
<td style="text-align: left;">Updates data for the resource</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- workmail()
    svc$associate_delegate_to_resource(
      Foo = 123
    )

    ## End(Not run)
