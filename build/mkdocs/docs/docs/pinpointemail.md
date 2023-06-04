<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointemail</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Pinpoint Email Service

### Description

Welcome to the *Amazon Pinpoint Email API Reference*. This guide
provides information about the Amazon Pinpoint Email API (version 1.0),
including supported operations, data types, parameters, and schemas.

[Amazon Pinpoint](https://aws.amazon.com/pinpoint/) is an AWS service
that you can use to engage with your customers across multiple messaging
channels. You can use Amazon Pinpoint to send email, SMS text messages,
voice messages, and push notifications. The Amazon Pinpoint Email API
provides programmatic access to options that are unique to the email
channel and supplement the options provided by the Amazon Pinpoint API.

If you're new to Amazon Pinpoint, you might find it helpful to also
review the [Amazon Pinpoint Developer
Guide](https://docs.aws.amazon.com/pinpoint/latest/developerguide/welcome.html).
The *Amazon Pinpoint Developer Guide* provides tutorials, code samples,
and procedures that demonstrate how to use Amazon Pinpoint features
programmatically and how to integrate Amazon Pinpoint functionality into
mobile apps and other types of applications. The guide also provides
information about key topics such as Amazon Pinpoint integration with
other AWS services and the limits that apply to using the service.

The Amazon Pinpoint Email API is available in several AWS Regions and it
provides an endpoint for each of these Regions. For a list of all the
Regions and endpoints where the API is currently available, see [AWS
Service
Endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#pinpoint_region)
in the *Amazon Web Services General Reference*. To learn more about AWS
Regions, see [Managing AWS
Regions](https://docs.aws.amazon.com/general/latest/gr/rande-manage.html)
in the *Amazon Web Services General Reference*.

In each Region, AWS maintains multiple Availability Zones. These
Availability Zones are physically isolated from each other, but are
united by private, low-latency, high-throughput, and highly redundant
network connections. These Availability Zones enable us to provide very
high levels of availability and redundancy, while also minimizing
latency. To learn more about the number of Availability Zones that are
available in each Region, see [AWS Global
Infrastructure](https://aws.amazon.com/about-aws/global-infrastructure/).

### Usage

    pinpointemail(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="pinpointemail_:_config">config</code></td>
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

    svc <- pinpointemail(
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
<td style="text-align: left;"><a href="../pinpointemail_create_configuration_set/"> create_configuration_set </a></td>
<td style="text-align: left;">Create a configuration set</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../pinpointemail_create_configuration_set_event_destination/"> create_configuration_set_event_destination </a></td>
<td style="text-align: left;">Create an event destination</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointemail_create_dedicated_ip_pool/"> create_dedicated_ip_pool </a></td>
<td style="text-align: left;">Create a new pool of dedicated IP
addresses</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpointemail_create_deliverability_test_report/"> create_deliverability_test_report </a></td>
<td style="text-align: left;">Create a new predictive inbox placement
test</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointemail_create_email_identity/"> create_email_identity </a></td>
<td style="text-align: left;">Verifies an email identity for use with
Amazon Pinpoint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpointemail_delete_configuration_set/"> delete_configuration_set </a></td>
<td style="text-align: left;">Delete an existing configuration set</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../pinpointemail_delete_configuration_set_event_destination/"> delete_configuration_set_event_destination </a></td>
<td style="text-align: left;">Delete an event destination</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpointemail_delete_dedicated_ip_pool/"> delete_dedicated_ip_pool </a></td>
<td style="text-align: left;">Delete a dedicated IP pool</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointemail_delete_email_identity/"> delete_email_identity </a></td>
<td style="text-align: left;">Deletes an email identity that you
previously verified for use with Amazon Pinpoint</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpointemail_get_account/"> get_account </a></td>
<td style="text-align: left;">Obtain information about the email-sending
status and capabilities of your Amazon Pinpoint account in the current
AWS Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointemail_get_blacklist_reports/"> get_blacklist_reports </a></td>
<td style="text-align: left;">Retrieve a list of the blacklists that
your dedicated IP addresses appear on</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpointemail_get_configuration_set/"> get_configuration_set </a></td>
<td style="text-align: left;">Get information about an existing
configuration set, including the dedicated IP pool that it's associated
with, whether or not it's enabled for sending email, and more</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../pinpointemail_get_configuration_set_event_destinations/"> get_configuration_set_event_destinations </a></td>
<td style="text-align: left;">Retrieve a list of event destinations that
are associated with a configuration set</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpointemail_get_dedicated_ip/"> get_dedicated_ip </a></td>
<td style="text-align: left;">Get information about a dedicated IP
address, including the name of the dedicated IP pool that it's
associated with, as well information about the automatic warm-up process
for the address</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointemail_get_dedicated_ips/"> get_dedicated_ips </a></td>
<td style="text-align: left;">List the dedicated IP addresses that are
associated with your Amazon Pinpoint account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpointemail_get_deliverability_dashboard_options/"> get_deliverability_dashboard_options </a></td>
<td style="text-align: left;">Retrieve information about the status of
the Deliverability dashboard for your Amazon Pinpoint account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointemail_get_deliverability_test_report/"> get_deliverability_test_report </a></td>
<td style="text-align: left;">Retrieve the results of a predictive inbox
placement test</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpointemail_get_domain_deliverability_campaign/"> get_domain_deliverability_campaign </a></td>
<td style="text-align: left;">Retrieve all the deliverability data for a
specific campaign</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointemail_get_domain_statistics_report/"> get_domain_statistics_report </a></td>
<td style="text-align: left;">Retrieve inbox placement and engagement
rates for the domains that you use to send email</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpointemail_get_email_identity/"> get_email_identity </a></td>
<td style="text-align: left;">Provides information about a specific
identity associated with your Amazon Pinpoint account, including the
identity's verification status, its DKIM authentication status, and its
custom Mail-From settings</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointemail_list_configuration_sets/"> list_configuration_sets </a></td>
<td style="text-align: left;">List all of the configuration sets
associated with your Amazon Pinpoint account in the current region</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpointemail_list_dedicated_ip_pools/"> list_dedicated_ip_pools </a></td>
<td style="text-align: left;">List all of the dedicated IP pools that
exist in your Amazon Pinpoint account in the current AWS Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointemail_list_deliverability_test_reports/"> list_deliverability_test_reports </a></td>
<td style="text-align: left;">Show a list of the predictive inbox
placement tests that you've performed, regardless of their statuses</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpointemail_list_domain_deliverability_campaigns/"> list_domain_deliverability_campaigns </a></td>
<td style="text-align: left;">Retrieve deliverability data for all the
campaigns that used a specific domain to send email during a specified
time range</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointemail_list_email_identities/"> list_email_identities </a></td>
<td style="text-align: left;">Returns a list of all of the email
identities that are associated with your Amazon Pinpoint account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpointemail_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">Retrieve a list of the tags (keys and
values) that are associated with a specified resource</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../pinpointemail_put_account_dedicated_ip_warmup_attributes/"> put_account_dedicated_ip_warmup_attributes </a></td>
<td style="text-align: left;">Enable or disable the automatic warm-up
feature for dedicated IP addresses</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpointemail_put_account_sending_attributes/"> put_account_sending_attributes </a></td>
<td style="text-align: left;">Enable or disable the ability of your
account to send email</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../pinpointemail_put_configuration_set_delivery_options/"> put_configuration_set_delivery_options </a></td>
<td style="text-align: left;">Associate a configuration set with a
dedicated IP pool</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../pinpointemail_put_configuration_set_reputation_options/"> put_configuration_set_reputation_options </a></td>
<td style="text-align: left;">Enable or disable collection of reputation
metrics for emails that you send using a particular configuration set in
a specific AWS Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointemail_put_configuration_set_sending_options/"> put_configuration_set_sending_options </a></td>
<td style="text-align: left;">Enable or disable email sending for
messages that use a particular configuration set in a specific AWS
Region</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../pinpointemail_put_configuration_set_tracking_options/"> put_configuration_set_tracking_options </a></td>
<td style="text-align: left;">Specify a custom domain to use for open
and click tracking elements in email that you send using Amazon
Pinpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointemail_put_dedicated_ip_in_pool/"> put_dedicated_ip_in_pool </a></td>
<td style="text-align: left;">Move a dedicated IP address to an existing
dedicated IP pool</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpointemail_put_dedicated_ip_warmup_attributes/"> put_dedicated_ip_warmup_attributes </a></td>
<td style="text-align: left;">Put dedicated ip warmup attributes</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointemail_put_deliverability_dashboard_option/"> put_deliverability_dashboard_option </a></td>
<td style="text-align: left;">Enable or disable the Deliverability
dashboard for your Amazon Pinpoint account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpointemail_put_email_identity_dkim_attributes/"> put_email_identity_dkim_attributes </a></td>
<td style="text-align: left;">Used to enable or disable DKIM
authentication for an email identity</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../pinpointemail_put_email_identity_feedback_attributes/"> put_email_identity_feedback_attributes </a></td>
<td style="text-align: left;">Used to enable or disable feedback
forwarding for an identity</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../pinpointemail_put_email_identity_mail_from_attributes/"> put_email_identity_mail_from_attributes </a></td>
<td style="text-align: left;">Used to enable or disable the custom
Mail-From domain configuration for an email identity</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointemail_send_email/"> send_email </a></td>
<td style="text-align: left;">Sends an email message</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpointemail_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Add one or more tags (keys and values) to
a specified resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointemail_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Remove one or more tags (keys and values)
from a specified resource</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../pinpointemail_update_configuration_set_event_destination/"> update_configuration_set_event_destination </a></td>
<td style="text-align: left;">Update the configuration of an event
destination for a configuration set</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- pinpointemail()
    svc$create_configuration_set(
      Foo = 123
    )

    ## End(Not run)
