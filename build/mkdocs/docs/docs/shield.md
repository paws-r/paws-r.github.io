<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>shield</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## AWS Shield

### Description

Shield Advanced

This is the *Shield Advanced API Reference*. This guide is for
developers who need detailed information about the Shield Advanced API
actions, data types, and errors. For detailed information about WAF and
Shield Advanced features and an overview of how to use the WAF and
Shield Advanced APIs, see the [WAF and Shield Developer
Guide](https://docs.aws.amazon.com/waf/latest/developerguide/).

### Usage

    shield(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="shield_:_config">config</code></td>
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

    svc <- shield(
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
<td style="text-align: left;"><a href="../shield_associate_drt_log_bucket/"> associate_drt_log_bucket </a></td>
<td style="text-align: left;">Authorizes the Shield Response Team (SRT)
to access the specified Amazon S3 bucket containing log data such as
Application Load Balancer access logs, CloudFront logs, or logs from
third party sources</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../shield_associate_drt_role/"> associate_drt_role </a></td>
<td style="text-align: left;">Authorizes the Shield Response Team (SRT)
using the specified role, to access your Amazon Web Services account to
assist with DDoS attack mitigation during potential attacks</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../shield_associate_health_check/"> associate_health_check </a></td>
<td style="text-align: left;">Adds health-based detection to the Shield
Advanced protection for a resource</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../shield_associate_proactive_engagement_details/"> associate_proactive_engagement_details </a></td>
<td style="text-align: left;">Initializes proactive engagement and sets
the list of contacts for the Shield Response Team (SRT) to use</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../shield_create_protection/"> create_protection </a></td>
<td style="text-align: left;">Enables Shield Advanced for a specific
Amazon Web Services resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../shield_create_protection_group/"> create_protection_group </a></td>
<td style="text-align: left;">Creates a grouping of protected resources
so they can be handled as a collective</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../shield_create_subscription/"> create_subscription </a></td>
<td style="text-align: left;">Activates Shield Advanced for an
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../shield_delete_protection/"> delete_protection </a></td>
<td style="text-align: left;">Deletes an Shield Advanced Protection</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../shield_delete_protection_group/"> delete_protection_group </a></td>
<td style="text-align: left;">Removes the specified protection
group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../shield_delete_subscription/"> delete_subscription </a></td>
<td style="text-align: left;">Removes Shield Advanced from an
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../shield_describe_attack/"> describe_attack </a></td>
<td style="text-align: left;">Describes the details of a DDoS
attack</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../shield_describe_attack_statistics/"> describe_attack_statistics </a></td>
<td style="text-align: left;">Provides information about the number and
type of attacks Shield has detected in the last year for all resources
that belong to your account, regardless of whether you've defined Shield
protections for them</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../shield_describe_drt_access/"> describe_drt_access </a></td>
<td style="text-align: left;">Returns the current role and list of
Amazon S3 log buckets used by the Shield Response Team (SRT) to access
your Amazon Web Services account while assisting with attack
mitigation</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../shield_describe_emergency_contact_settings/"> describe_emergency_contact_settings </a></td>
<td style="text-align: left;">A list of email addresses and phone
numbers that the Shield Response Team (SRT) can use to contact you if
you have proactive engagement enabled, for escalations to the SRT and to
initiate proactive customer support</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../shield_describe_protection/"> describe_protection </a></td>
<td style="text-align: left;">Lists the details of a Protection
object</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../shield_describe_protection_group/"> describe_protection_group </a></td>
<td style="text-align: left;">Returns the specification for the
specified protection group</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../shield_describe_subscription/"> describe_subscription </a></td>
<td style="text-align: left;">Provides details about the Shield Advanced
subscription for an account</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../shield_disable_application_layer_automatic_response/"> disable_application_layer_automatic_response </a></td>
<td style="text-align: left;">Disable the Shield Advanced automatic
application layer DDoS mitigation feature for the protected
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../shield_disable_proactive_engagement/"> disable_proactive_engagement </a></td>
<td style="text-align: left;">Removes authorization from the Shield
Response Team (SRT) to notify contacts about escalations to the SRT and
to initiate proactive customer support</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../shield_disassociate_drt_log_bucket/"> disassociate_drt_log_bucket </a></td>
<td style="text-align: left;">Removes the Shield Response Team's (SRT)
access to the specified Amazon S3 bucket containing the logs that you
shared previously</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../shield_disassociate_drt_role/"> disassociate_drt_role </a></td>
<td style="text-align: left;">Removes the Shield Response Team's (SRT)
access to your Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../shield_disassociate_health_check/"> disassociate_health_check </a></td>
<td style="text-align: left;">Removes health-based detection from the
Shield Advanced protection for a resource</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../shield_enable_application_layer_automatic_response/"> enable_application_layer_automatic_response </a></td>
<td style="text-align: left;">Enable the Shield Advanced automatic
application layer DDoS mitigation for the protected resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../shield_enable_proactive_engagement/"> enable_proactive_engagement </a></td>
<td style="text-align: left;">Authorizes the Shield Response Team (SRT)
to use email and phone to notify contacts about escalations to the SRT
and to initiate proactive customer support</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../shield_get_subscription_state/"> get_subscription_state </a></td>
<td style="text-align: left;">Returns the SubscriptionState, either
Active or Inactive</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../shield_list_attacks/"> list_attacks </a></td>
<td style="text-align: left;">Returns all ongoing DDoS attacks or all
DDoS attacks during a specified time period</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../shield_list_protection_groups/"> list_protection_groups </a></td>
<td style="text-align: left;">Retrieves ProtectionGroup objects for the
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../shield_list_protections/"> list_protections </a></td>
<td style="text-align: left;">Retrieves Protection objects for the
account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../shield_list_resources_in_protection_group/"> list_resources_in_protection_group </a></td>
<td style="text-align: left;">Retrieves the resources that are included
in the protection group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../shield_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Gets information about Amazon Web Services
tags for a specified Amazon Resource Name (ARN) in Shield</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../shield_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds or updates tags for a resource in
Shield</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../shield_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes tags from a resource in
Shield</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../shield_update_application_layer_automatic_response/"> update_application_layer_automatic_response </a></td>
<td style="text-align: left;">Updates an existing Shield Advanced
automatic application layer DDoS mitigation configuration for the
specified resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../shield_update_emergency_contact_settings/"> update_emergency_contact_settings </a></td>
<td style="text-align: left;">Updates the details of the list of email
addresses and phone numbers that the Shield Response Team (SRT) can use
to contact you if you have proactive engagement enabled, for escalations
to the SRT and to initiate proactive customer support</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../shield_update_protection_group/"> update_protection_group </a></td>
<td style="text-align: left;">Updates an existing protection group</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../shield_update_subscription/"> update_subscription </a></td>
<td style="text-align: left;">Updates the details of an existing
subscription</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- shield()
    svc$associate_drt_log_bucket(
      Foo = 123
    )

    ## End(Not run)
