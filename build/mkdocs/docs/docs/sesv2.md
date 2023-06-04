<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Simple Email Service

### Description

Amazon SES API v2

[Amazon SES](https://aws.amazon.com/ses/) is an Amazon Web Services
service that you can use to send email messages to your customers.

If you're new to Amazon SES API v2, you might find it helpful to review
the [Amazon Simple Email Service Developer
Guide](https://docs.aws.amazon.com/ses/latest/dg/Welcome.html). The
*Amazon SES Developer Guide* provides information and code samples that
demonstrate how to use Amazon SES API v2 features programmatically.

### Usage

    sesv2(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sesv2_:_config">config</code></td>
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

    svc <- sesv2(
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
<td style="text-align: left;"><a href="../sesv2_batch_get_metric_data/"> batch_get_metric_data </a></td>
<td style="text-align: left;">Retrieves batches of metric data collected
based on your sending activity</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sesv2_create_configuration_set/"> create_configuration_set </a></td>
<td style="text-align: left;">Create a configuration set</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../sesv2_create_configuration_set_event_destination/"> create_configuration_set_event_destination </a></td>
<td style="text-align: left;">Create an event destination</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sesv2_create_contact/"> create_contact </a></td>
<td style="text-align: left;">Creates a contact, which is an end-user
who is receiving the email, and adds them to a contact list</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sesv2_create_contact_list/"> create_contact_list </a></td>
<td style="text-align: left;">Creates a contact list</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../sesv2_create_custom_verification_email_template/"> create_custom_verification_email_template </a></td>
<td style="text-align: left;">Creates a new custom verification email
template</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sesv2_create_dedicated_ip_pool/"> create_dedicated_ip_pool </a></td>
<td style="text-align: left;">Create a new pool of dedicated IP
addresses</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sesv2_create_deliverability_test_report/"> create_deliverability_test_report </a></td>
<td style="text-align: left;">Create a new predictive inbox placement
test</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sesv2_create_email_identity/"> create_email_identity </a></td>
<td style="text-align: left;">Starts the process of verifying an email
identity</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sesv2_create_email_identity_policy/"> create_email_identity_policy </a></td>
<td style="text-align: left;">Creates the specified sending
authorization policy for the given identity (an email address or a
domain)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sesv2_create_email_template/"> create_email_template </a></td>
<td style="text-align: left;">Creates an email template</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sesv2_create_import_job/"> create_import_job </a></td>
<td style="text-align: left;">Creates an import job for a data
destination</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sesv2_delete_configuration_set/"> delete_configuration_set </a></td>
<td style="text-align: left;">Delete an existing configuration set</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../sesv2_delete_configuration_set_event_destination/"> delete_configuration_set_event_destination </a></td>
<td style="text-align: left;">Delete an event destination</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sesv2_delete_contact/"> delete_contact </a></td>
<td style="text-align: left;">Removes a contact from a contact list</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sesv2_delete_contact_list/"> delete_contact_list </a></td>
<td style="text-align: left;">Deletes a contact list and all of the
contacts on that list</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../sesv2_delete_custom_verification_email_template/"> delete_custom_verification_email_template </a></td>
<td style="text-align: left;">Deletes an existing custom verification
email template</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sesv2_delete_dedicated_ip_pool/"> delete_dedicated_ip_pool </a></td>
<td style="text-align: left;">Delete a dedicated IP pool</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sesv2_delete_email_identity/"> delete_email_identity </a></td>
<td style="text-align: left;">Deletes an email identity</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sesv2_delete_email_identity_policy/"> delete_email_identity_policy </a></td>
<td style="text-align: left;">Deletes the specified sending
authorization policy for the given identity (an email address or a
domain)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sesv2_delete_email_template/"> delete_email_template </a></td>
<td style="text-align: left;">Deletes an email template</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sesv2_delete_suppressed_destination/"> delete_suppressed_destination </a></td>
<td style="text-align: left;">Removes an email address from the
suppression list for your account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sesv2_get_account/"> get_account </a></td>
<td style="text-align: left;">Obtain information about the email-sending
status and capabilities of your Amazon SES account in the current Amazon
Web Services Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sesv2_get_blacklist_reports/"> get_blacklist_reports </a></td>
<td style="text-align: left;">Retrieve a list of the blacklists that
your dedicated IP addresses appear on</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sesv2_get_configuration_set/"> get_configuration_set </a></td>
<td style="text-align: left;">Get information about an existing
configuration set, including the dedicated IP pool that it's associated
with, whether or not it's enabled for sending email, and more</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../sesv2_get_configuration_set_event_destinations/"> get_configuration_set_event_destinations </a></td>
<td style="text-align: left;">Retrieve a list of event destinations that
are associated with a configuration set</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sesv2_get_contact/"> get_contact </a></td>
<td style="text-align: left;">Returns a contact from a contact list</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sesv2_get_contact_list/"> get_contact_list </a></td>
<td style="text-align: left;">Returns contact list metadata</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../sesv2_get_custom_verification_email_template/"> get_custom_verification_email_template </a></td>
<td style="text-align: left;">Returns the custom email verification
template for the template name you specify</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sesv2_get_dedicated_ip/"> get_dedicated_ip </a></td>
<td style="text-align: left;">Get information about a dedicated IP
address, including the name of the dedicated IP pool that it's
associated with, as well information about the automatic warm-up process
for the address</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sesv2_get_dedicated_ip_pool/"> get_dedicated_ip_pool </a></td>
<td style="text-align: left;">Retrieve information about the dedicated
pool</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sesv2_get_dedicated_ips/"> get_dedicated_ips </a></td>
<td style="text-align: left;">List the dedicated IP addresses that are
associated with your Amazon Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sesv2_get_deliverability_dashboard_options/"> get_deliverability_dashboard_options </a></td>
<td style="text-align: left;">Retrieve information about the status of
the Deliverability dashboard for your account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sesv2_get_deliverability_test_report/"> get_deliverability_test_report </a></td>
<td style="text-align: left;">Retrieve the results of a predictive inbox
placement test</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sesv2_get_domain_deliverability_campaign/"> get_domain_deliverability_campaign </a></td>
<td style="text-align: left;">Retrieve all the deliverability data for a
specific campaign</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sesv2_get_domain_statistics_report/"> get_domain_statistics_report </a></td>
<td style="text-align: left;">Retrieve inbox placement and engagement
rates for the domains that you use to send email</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sesv2_get_email_identity/"> get_email_identity </a></td>
<td style="text-align: left;">Provides information about a specific
identity, including the identity's verification status, sending
authorization policies, its DKIM authentication status, and its custom
Mail-From settings</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sesv2_get_email_identity_policies/"> get_email_identity_policies </a></td>
<td style="text-align: left;">Returns the requested sending
authorization policies for the given identity (an email address or a
domain)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sesv2_get_email_template/"> get_email_template </a></td>
<td style="text-align: left;">Displays the template object (which
includes the subject line, HTML part and text part) for the template you
specify</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sesv2_get_import_job/"> get_import_job </a></td>
<td style="text-align: left;">Provides information about an import
job</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sesv2_get_suppressed_destination/"> get_suppressed_destination </a></td>
<td style="text-align: left;">Retrieves information about a specific
email address that's on the suppression list for your account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sesv2_list_configuration_sets/"> list_configuration_sets </a></td>
<td style="text-align: left;">List all of the configuration sets
associated with your account in the current region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sesv2_list_contact_lists/"> list_contact_lists </a></td>
<td style="text-align: left;">Lists all of the contact lists
available</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sesv2_list_contacts/"> list_contacts </a></td>
<td style="text-align: left;">Lists the contacts present in a specific
contact list</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../sesv2_list_custom_verification_email_templates/"> list_custom_verification_email_templates </a></td>
<td style="text-align: left;">Lists the existing custom verification
email templates for your account in the current Amazon Web Services
Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sesv2_list_dedicated_ip_pools/"> list_dedicated_ip_pools </a></td>
<td style="text-align: left;">List all of the dedicated IP pools that
exist in your Amazon Web Services account in the current Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sesv2_list_deliverability_test_reports/"> list_deliverability_test_reports </a></td>
<td style="text-align: left;">Show a list of the predictive inbox
placement tests that you've performed, regardless of their statuses</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sesv2_list_domain_deliverability_campaigns/"> list_domain_deliverability_campaigns </a></td>
<td style="text-align: left;">Retrieve deliverability data for all the
campaigns that used a specific domain to send email during a specified
time range</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sesv2_list_email_identities/"> list_email_identities </a></td>
<td style="text-align: left;">Returns a list of all of the email
identities that are associated with your Amazon Web Services
account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sesv2_list_email_templates/"> list_email_templates </a></td>
<td style="text-align: left;">Lists the email templates present in your
Amazon SES account in the current Amazon Web Services Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sesv2_list_import_jobs/"> list_import_jobs </a></td>
<td style="text-align: left;">Lists all of the import jobs</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sesv2_list_recommendations/"> list_recommendations </a></td>
<td style="text-align: left;">Lists the recommendations present in your
Amazon SES account in the current Amazon Web Services Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sesv2_list_suppressed_destinations/"> list_suppressed_destinations </a></td>
<td style="text-align: left;">Retrieves a list of email addresses that
are on the suppression list for your account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sesv2_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Retrieve a list of the tags (keys and
values) that are associated with a specified resource</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../sesv2_put_account_dedicated_ip_warmup_attributes/"> put_account_dedicated_ip_warmup_attributes </a></td>
<td style="text-align: left;">Enable or disable the automatic warm-up
feature for dedicated IP addresses</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sesv2_put_account_details/"> put_account_details </a></td>
<td style="text-align: left;">Update your Amazon SES account
details</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sesv2_put_account_sending_attributes/"> put_account_sending_attributes </a></td>
<td style="text-align: left;">Enable or disable the ability of your
account to send email</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sesv2_put_account_suppression_attributes/"> put_account_suppression_attributes </a></td>
<td style="text-align: left;">Change the settings for the account-level
suppression list</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sesv2_put_account_vdm_attributes/"> put_account_vdm_attributes </a></td>
<td style="text-align: left;">Update your Amazon SES account VDM
attributes</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../sesv2_put_configuration_set_delivery_options/"> put_configuration_set_delivery_options </a></td>
<td style="text-align: left;">Associate a configuration set with a
dedicated IP pool</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../sesv2_put_configuration_set_reputation_options/"> put_configuration_set_reputation_options </a></td>
<td style="text-align: left;">Enable or disable collection of reputation
metrics for emails that you send using a particular configuration set in
a specific Amazon Web Services Region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sesv2_put_configuration_set_sending_options/"> put_configuration_set_sending_options </a></td>
<td style="text-align: left;">Enable or disable email sending for
messages that use a particular configuration set in a specific Amazon
Web Services Region</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../sesv2_put_configuration_set_suppression_options/"> put_configuration_set_suppression_options </a></td>
<td style="text-align: left;">Specify the account suppression list
preferences for a configuration set</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../sesv2_put_configuration_set_tracking_options/"> put_configuration_set_tracking_options </a></td>
<td style="text-align: left;">Specify a custom domain to use for open
and click tracking elements in email that you send</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sesv2_put_configuration_set_vdm_options/"> put_configuration_set_vdm_options </a></td>
<td style="text-align: left;">Specify VDM preferences for email that you
send using the configuration set</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sesv2_put_dedicated_ip_in_pool/"> put_dedicated_ip_in_pool </a></td>
<td style="text-align: left;">Move a dedicated IP address to an existing
dedicated IP pool</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../sesv2_put_dedicated_ip_pool_scaling_attributes/"> put_dedicated_ip_pool_scaling_attributes </a></td>
<td style="text-align: left;">Used to convert a dedicated IP pool to a
different scaling mode</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sesv2_put_dedicated_ip_warmup_attributes/"> put_dedicated_ip_warmup_attributes </a></td>
<td style="text-align: left;">Put dedicated ip warmup attributes</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sesv2_put_deliverability_dashboard_option/"> put_deliverability_dashboard_option </a></td>
<td style="text-align: left;">Enable or disable the Deliverability
dashboard</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../sesv2_put_email_identity_configuration_set_attributes/"> put_email_identity_configuration_set_attributes </a></td>
<td style="text-align: left;">Used to associate a configuration set with
an email identity</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sesv2_put_email_identity_dkim_attributes/"> put_email_identity_dkim_attributes </a></td>
<td style="text-align: left;">Used to enable or disable DKIM
authentication for an email identity</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../sesv2_put_email_identity_dkim_signing_attributes/"> put_email_identity_dkim_signing_attributes </a></td>
<td style="text-align: left;">Used to configure or change the DKIM
authentication settings for an email domain identity</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../sesv2_put_email_identity_feedback_attributes/"> put_email_identity_feedback_attributes </a></td>
<td style="text-align: left;">Used to enable or disable feedback
forwarding for an identity</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../sesv2_put_email_identity_mail_from_attributes/"> put_email_identity_mail_from_attributes </a></td>
<td style="text-align: left;">Used to enable or disable the custom
Mail-From domain configuration for an email identity</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sesv2_put_suppressed_destination/"> put_suppressed_destination </a></td>
<td style="text-align: left;">Adds an email address to the suppression
list for your account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sesv2_send_bulk_email/"> send_bulk_email </a></td>
<td style="text-align: left;">Composes an email message to multiple
destinations</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sesv2_send_custom_verification_email/"> send_custom_verification_email </a></td>
<td style="text-align: left;">Adds an email address to the list of
identities for your Amazon SES account in the current Amazon Web
Services Region and attempts to verify it</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sesv2_send_email/"> send_email </a></td>
<td style="text-align: left;">Sends an email message</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sesv2_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Add one or more tags (keys and values) to
a specified resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sesv2_test_render_email_template/"> test_render_email_template </a></td>
<td style="text-align: left;">Creates a preview of the MIME content of
an email when provided with a template and a set of replacement
data</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sesv2_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Remove one or more tags (keys and values)
from a specified resource</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../sesv2_update_configuration_set_event_destination/"> update_configuration_set_event_destination </a></td>
<td style="text-align: left;">Update the configuration of an event
destination for a configuration set</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sesv2_update_contact/"> update_contact </a></td>
<td style="text-align: left;">Updates a contact's preferences for a
list</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sesv2_update_contact_list/"> update_contact_list </a></td>
<td style="text-align: left;">Updates contact list metadata</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../sesv2_update_custom_verification_email_template/"> update_custom_verification_email_template </a></td>
<td style="text-align: left;">Updates an existing custom verification
email template</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sesv2_update_email_identity_policy/"> update_email_identity_policy </a></td>
<td style="text-align: left;">Updates the specified sending
authorization policy for the given identity (an email address or a
domain)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sesv2_update_email_template/"> update_email_template </a></td>
<td style="text-align: left;">Updates an email template</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- sesv2()
    # This example converts a dedicated IP pool from STANDARD to MANAGED.
    svc$put_dedicated_ip_pool_scaling_attributes(
      PoolName = "sample-ses-pool",
      ScalingMode = "MANAGED"
    )

    ## End(Not run)
