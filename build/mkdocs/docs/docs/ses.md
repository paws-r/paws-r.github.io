<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Simple Email Service

### Description

This document contains reference information for the [Amazon Simple
Email Service](https://aws.amazon.com/ses/) (Amazon SES) API, version
2010-12-01. This document is best used in conjunction with the [Amazon
SES Developer
Guide](https://docs.aws.amazon.com/ses/latest/dg/Welcome.html).

For a list of Amazon SES endpoints to use in service requests, see
[Regions and Amazon
SES](https://docs.aws.amazon.com/ses/latest/dg/regions.html) in the
[Amazon SES Developer
Guide](https://docs.aws.amazon.com/ses/latest/dg/Welcome.html).

### Usage

    ses(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ses_:_config">config</code></td>
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

    svc <- ses(
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
<td style="text-align: left;"><a href="../ses_clone_receipt_rule_set/"> clone_receipt_rule_set </a></td>
<td style="text-align: left;">Creates a receipt rule set by cloning an
existing one</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ses_create_configuration_set/"> create_configuration_set </a></td>
<td style="text-align: left;">Creates a configuration set</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ses_create_configuration_set_event_destination/"> create_configuration_set_event_destination </a></td>
<td style="text-align: left;">Creates a configuration set event
destination</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ses_create_configuration_set_tracking_options/"> create_configuration_set_tracking_options </a></td>
<td style="text-align: left;">Creates an association between a
configuration set and a custom domain for open and click event
tracking</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ses_create_custom_verification_email_template/"> create_custom_verification_email_template </a></td>
<td style="text-align: left;">Creates a new custom verification email
template</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ses_create_receipt_filter/"> create_receipt_filter </a></td>
<td style="text-align: left;">Creates a new IP address filter</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ses_create_receipt_rule/"> create_receipt_rule </a></td>
<td style="text-align: left;">Creates a receipt rule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ses_create_receipt_rule_set/"> create_receipt_rule_set </a></td>
<td style="text-align: left;">Creates an empty receipt rule set</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ses_create_template/"> create_template </a></td>
<td style="text-align: left;">Creates an email template</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ses_delete_configuration_set/"> delete_configuration_set </a></td>
<td style="text-align: left;">Deletes a configuration set</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ses_delete_configuration_set_event_destination/"> delete_configuration_set_event_destination </a></td>
<td style="text-align: left;">Deletes a configuration set event
destination</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ses_delete_configuration_set_tracking_options/"> delete_configuration_set_tracking_options </a></td>
<td style="text-align: left;">Deletes an association between a
configuration set and a custom domain for open and click event
tracking</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ses_delete_custom_verification_email_template/"> delete_custom_verification_email_template </a></td>
<td style="text-align: left;">Deletes an existing custom verification
email template</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ses_delete_identity/"> delete_identity </a></td>
<td style="text-align: left;">Deletes the specified identity (an email
address or a domain) from the list of verified identities</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ses_delete_identity_policy/"> delete_identity_policy </a></td>
<td style="text-align: left;">Deletes the specified sending
authorization policy for the given identity (an email address or a
domain)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ses_delete_receipt_filter/"> delete_receipt_filter </a></td>
<td style="text-align: left;">Deletes the specified IP address
filter</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ses_delete_receipt_rule/"> delete_receipt_rule </a></td>
<td style="text-align: left;">Deletes the specified receipt rule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ses_delete_receipt_rule_set/"> delete_receipt_rule_set </a></td>
<td style="text-align: left;">Deletes the specified receipt rule set and
all of the receipt rules it contains</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ses_delete_template/"> delete_template </a></td>
<td style="text-align: left;">Deletes an email template</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ses_delete_verified_email_address/"> delete_verified_email_address </a></td>
<td style="text-align: left;">Deprecated</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ses_describe_active_receipt_rule_set/"> describe_active_receipt_rule_set </a></td>
<td style="text-align: left;">Returns the metadata and receipt rules for
the receipt rule set that is currently active</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ses_describe_configuration_set/"> describe_configuration_set </a></td>
<td style="text-align: left;">Returns the details of the specified
configuration set</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ses_describe_receipt_rule/"> describe_receipt_rule </a></td>
<td style="text-align: left;">Returns the details of the specified
receipt rule</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ses_describe_receipt_rule_set/"> describe_receipt_rule_set </a></td>
<td style="text-align: left;">Returns the details of the specified
receipt rule set</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ses_get_account_sending_enabled/"> get_account_sending_enabled </a></td>
<td style="text-align: left;">Returns the email sending status of the
Amazon SES account for the current region</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ses_get_custom_verification_email_template/"> get_custom_verification_email_template </a></td>
<td style="text-align: left;">Returns the custom email verification
template for the template name you specify</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ses_get_identity_dkim_attributes/"> get_identity_dkim_attributes </a></td>
<td style="text-align: left;">Returns the current status of Easy DKIM
signing for an entity</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ses_get_identity_mail_from_domain_attributes/"> get_identity_mail_from_domain_attributes </a></td>
<td style="text-align: left;">Returns the custom MAIL FROM attributes
for a list of identities (email addresses : domains)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ses_get_identity_notification_attributes/"> get_identity_notification_attributes </a></td>
<td style="text-align: left;">Given a list of verified identities (email
addresses and/or domains), returns a structure describing identity
notification attributes</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ses_get_identity_policies/"> get_identity_policies </a></td>
<td style="text-align: left;">Returns the requested sending
authorization policies for the given identity (an email address or a
domain)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ses_get_identity_verification_attributes/"> get_identity_verification_attributes </a></td>
<td style="text-align: left;">Given a list of identities (email
addresses and/or domains), returns the verification status and (for
domain identities) the verification token for each identity</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ses_get_send_quota/"> get_send_quota </a></td>
<td style="text-align: left;">Provides the sending limits for the Amazon
SES account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ses_get_send_statistics/"> get_send_statistics </a></td>
<td style="text-align: left;">Provides sending statistics for the
current AWS Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ses_get_template/"> get_template </a></td>
<td style="text-align: left;">Displays the template object (which
includes the Subject line, HTML part and text part) for the template you
specify</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ses_list_configuration_sets/"> list_configuration_sets </a></td>
<td style="text-align: left;">Provides a list of the configuration sets
associated with your Amazon SES account in the current AWS Region</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ses_list_custom_verification_email_templates/"> list_custom_verification_email_templates </a></td>
<td style="text-align: left;">Lists the existing custom verification
email templates for your account in the current AWS Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ses_list_identities/"> list_identities </a></td>
<td style="text-align: left;">Returns a list containing all of the
identities (email addresses and domains) for your AWS account in the
current AWS Region, regardless of verification status</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ses_list_identity_policies/"> list_identity_policies </a></td>
<td style="text-align: left;">Returns a list of sending authorization
policies that are attached to the given identity (an email address or a
domain)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ses_list_receipt_filters/"> list_receipt_filters </a></td>
<td style="text-align: left;">Lists the IP address filters associated
with your AWS account in the current AWS Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ses_list_receipt_rule_sets/"> list_receipt_rule_sets </a></td>
<td style="text-align: left;">Lists the receipt rule sets that exist
under your AWS account in the current AWS Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ses_list_templates/"> list_templates </a></td>
<td style="text-align: left;">Lists the email templates present in your
Amazon SES account in the current AWS Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ses_list_verified_email_addresses/"> list_verified_email_addresses </a></td>
<td style="text-align: left;">Deprecated</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ses_put_configuration_set_delivery_options/"> put_configuration_set_delivery_options </a></td>
<td style="text-align: left;">Adds or updates the delivery options for a
configuration set</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ses_put_identity_policy/"> put_identity_policy </a></td>
<td style="text-align: left;">Adds or updates a sending authorization
policy for the specified identity (an email address or a domain)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ses_reorder_receipt_rule_set/"> reorder_receipt_rule_set </a></td>
<td style="text-align: left;">Reorders the receipt rules within a
receipt rule set</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ses_send_bounce/"> send_bounce </a></td>
<td style="text-align: left;">Generates and sends a bounce message to
the sender of an email you received through Amazon SES</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ses_send_bulk_templated_email/"> send_bulk_templated_email </a></td>
<td style="text-align: left;">Composes an email message to multiple
destinations</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ses_send_custom_verification_email/"> send_custom_verification_email </a></td>
<td style="text-align: left;">Adds an email address to the list of
identities for your Amazon SES account in the current AWS Region and
attempts to verify it</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ses_send_email/"> send_email </a></td>
<td style="text-align: left;">Composes an email message and immediately
queues it for sending</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ses_send_raw_email/"> send_raw_email </a></td>
<td style="text-align: left;">Composes an email message and immediately
queues it for sending</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ses_send_templated_email/"> send_templated_email </a></td>
<td style="text-align: left;">Composes an email message using an email
template and immediately queues it for sending</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ses_set_active_receipt_rule_set/"> set_active_receipt_rule_set </a></td>
<td style="text-align: left;">Sets the specified receipt rule set as the
active receipt rule set</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ses_set_identity_dkim_enabled/"> set_identity_dkim_enabled </a></td>
<td style="text-align: left;">Enables or disables Easy DKIM signing of
email sent from an identity</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ses_set_identity_feedback_forwarding_enabled/"> set_identity_feedback_forwarding_enabled </a></td>
<td style="text-align: left;">Given an identity (an email address or a
domain), enables or disables whether Amazon SES forwards bounce and
complaint notifications as email</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ses_set_identity_headers_in_notifications_enabled/"> set_identity_headers_in_notifications_enabled </a></td>
<td style="text-align: left;">Given an identity (an email address or a
domain), sets whether Amazon SES includes the original email headers in
the Amazon Simple Notification Service (Amazon SNS) notifications of a
specified type</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ses_set_identity_mail_from_domain/"> set_identity_mail_from_domain </a></td>
<td style="text-align: left;">Enables or disables the custom MAIL FROM
domain setup for a verified identity (an email address or a domain)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ses_set_identity_notification_topic/"> set_identity_notification_topic </a></td>
<td style="text-align: left;">Sets an Amazon Simple Notification Service
(Amazon SNS) topic to use when delivering notifications</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ses_set_receipt_rule_position/"> set_receipt_rule_position </a></td>
<td style="text-align: left;">Sets the position of the specified receipt
rule in the receipt rule set</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ses_test_render_template/"> test_render_template </a></td>
<td style="text-align: left;">Creates a preview of the MIME content of
an email when provided with a template and a set of replacement
data</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ses_update_account_sending_enabled/"> update_account_sending_enabled </a></td>
<td style="text-align: left;">Enables or disables email sending across
your entire Amazon SES account in the current AWS Region</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ses_update_configuration_set_event_destination/"> update_configuration_set_event_destination </a></td>
<td style="text-align: left;">Updates the event destination of a
configuration set</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ses_update_configuration_set_reputation_metrics_enabled/"> update_configuration_set_reputation_metrics_enabled </a></td>
<td style="text-align: left;">Enables or disables the publishing of
reputation metrics for emails sent using a specific configuration set in
a given AWS Region</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ses_update_configuration_set_sending_enabled/"> update_configuration_set_sending_enabled </a></td>
<td style="text-align: left;">Enables or disables email sending for
messages sent using a specific configuration set in a given AWS
Region</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../ses_update_configuration_set_tracking_options/"> update_configuration_set_tracking_options </a></td>
<td style="text-align: left;">Modifies an association between a
configuration set and a custom domain for open and click event
tracking</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../ses_update_custom_verification_email_template/"> update_custom_verification_email_template </a></td>
<td style="text-align: left;">Updates an existing custom verification
email template</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ses_update_receipt_rule/"> update_receipt_rule </a></td>
<td style="text-align: left;">Updates a receipt rule</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ses_update_template/"> update_template </a></td>
<td style="text-align: left;">Updates an email template</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ses_verify_domain_dkim/"> verify_domain_dkim </a></td>
<td style="text-align: left;">Returns a set of DKIM tokens for a domain
identity</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ses_verify_domain_identity/"> verify_domain_identity </a></td>
<td style="text-align: left;">Adds a domain to the list of identities
for your Amazon SES account in the current AWS Region and attempts to
verify it</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../ses_verify_email_address/"> verify_email_address </a></td>
<td style="text-align: left;">Deprecated</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../ses_verify_email_identity/"> verify_email_identity </a></td>
<td style="text-align: left;">Adds an email address to the list of
identities for your Amazon SES account in the current AWS region and
attempts to verify it</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- ses()
    # The following example creates a receipt rule set by cloning an existing
    # one:
    svc$clone_receipt_rule_set(
      OriginalRuleSetName = "RuleSetToClone",
      RuleSetName = "RuleSetToCreate"
    )

    ## End(Not run)
