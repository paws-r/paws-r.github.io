<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sns</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Simple Notification Service

### Description

Amazon Simple Notification Service (Amazon SNS) is a web service that
enables you to build distributed web-enabled applications. Applications
can use Amazon SNS to easily push real-time notification messages to
interested subscribers over multiple delivery protocols. For more
information about this product see the [Amazon SNS product
page](https://aws.amazon.com/sns/). For detailed information about
Amazon SNS features and their associated API calls, see the [Amazon SNS
Developer Guide](https://docs.aws.amazon.com/sns/latest/dg/).

For information on the permissions you need to use this API, see
[Identity and access management in Amazon
SNS](https://docs.aws.amazon.com/sns/latest/dg/) in the *Amazon SNS
Developer Guide.*

We also provide SDKs that enable you to access Amazon SNS from your
preferred programming language. The SDKs contain functionality that
automatically takes care of tasks such as: cryptographically signing
your service requests, retrying requests, and handling error responses.
For a list of available SDKs, go to [Tools for Amazon Web
Services](https://aws.amazon.com/developer/tools/).

### Usage

    sns(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="sns_:_config">config</code></td>
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

    svc <- sns(
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
<td style="text-align: left;"><a href="../sns_add_permission/"> add_permission </a></td>
<td style="text-align: left;">Adds a statement to a topic's access
control policy, granting access for the specified Amazon Web Services
accounts to the specified actions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sns_check_if_phone_number_is_opted_out/"> check_if_phone_number_is_opted_out </a></td>
<td style="text-align: left;">Accepts a phone number and indicates
whether the phone holder has opted out of receiving SMS messages from
your Amazon Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sns_confirm_subscription/"> confirm_subscription </a></td>
<td style="text-align: left;">Verifies an endpoint owner's intent to
receive messages by validating the token sent to the endpoint by an
earlier Subscribe action</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sns_create_platform_application/"> create_platform_application </a></td>
<td style="text-align: left;">Creates a platform application object for
one of the supported push notification services, such as APNS and GCM
(Firebase Cloud Messaging), to which devices and mobile apps may
register</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sns_create_platform_endpoint/"> create_platform_endpoint </a></td>
<td style="text-align: left;">Creates an endpoint for a device and
mobile app on one of the supported push notification services, such as
GCM (Firebase Cloud Messaging) and APNS</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sns_create_sms_sandbox_phone_number/"> create_sms_sandbox_phone_number </a></td>
<td style="text-align: left;">Adds a destination phone number to an
Amazon Web Services account in the SMS sandbox and sends a one-time
password (OTP) to that phone number</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sns_create_topic/"> create_topic </a></td>
<td style="text-align: left;">Creates a topic to which notifications can
be published</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sns_delete_endpoint/"> delete_endpoint </a></td>
<td style="text-align: left;">Deletes the endpoint for a device and
mobile app from Amazon SNS</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sns_delete_platform_application/"> delete_platform_application </a></td>
<td style="text-align: left;">Deletes a platform application object for
one of the supported push notification services, such as APNS and GCM
(Firebase Cloud Messaging)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sns_delete_sms_sandbox_phone_number/"> delete_sms_sandbox_phone_number </a></td>
<td style="text-align: left;">Deletes an Amazon Web Services account's
verified or pending phone number from the SMS sandbox</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sns_delete_topic/"> delete_topic </a></td>
<td style="text-align: left;">Deletes a topic and all its
subscriptions</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sns_get_data_protection_policy/"> get_data_protection_policy </a></td>
<td style="text-align: left;">Retrieves the specified inline
DataProtectionPolicy document that is stored in the specified Amazon SNS
topic</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sns_get_endpoint_attributes/"> get_endpoint_attributes </a></td>
<td style="text-align: left;">Retrieves the endpoint attributes for a
device on one of the supported push notification services, such as GCM
(Firebase Cloud Messaging) and APNS</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sns_get_platform_application_attributes/"> get_platform_application_attributes </a></td>
<td style="text-align: left;">Retrieves the attributes of the platform
application object for the supported push notification services, such as
APNS and GCM (Firebase Cloud Messaging)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sns_get_sms_attributes/"> get_sms_attributes </a></td>
<td style="text-align: left;">Returns the settings for sending SMS
messages from your Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sns_get_sms_sandbox_account_status/"> get_sms_sandbox_account_status </a></td>
<td style="text-align: left;">Retrieves the SMS sandbox status for the
calling Amazon Web Services account in the target Amazon Web Services
Region</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sns_get_subscription_attributes/"> get_subscription_attributes </a></td>
<td style="text-align: left;">Returns all of the properties of a
subscription</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sns_get_topic_attributes/"> get_topic_attributes </a></td>
<td style="text-align: left;">Returns all of the properties of a
topic</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../sns_list_endpoints_by_platform_application/"> list_endpoints_by_platform_application </a></td>
<td style="text-align: left;">Lists the endpoints and endpoint
attributes for devices in a supported push notification service, such as
GCM (Firebase Cloud Messaging) and APNS</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sns_list_origination_numbers/"> list_origination_numbers </a></td>
<td style="text-align: left;">Lists the calling Amazon Web Services
account's dedicated origination numbers and their metadata</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sns_list_phone_numbers_opted_out/"> list_phone_numbers_opted_out </a></td>
<td style="text-align: left;">Returns a list of phone numbers that are
opted out, meaning you cannot send SMS messages to them</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sns_list_platform_applications/"> list_platform_applications </a></td>
<td style="text-align: left;">Lists the platform application objects for
the supported push notification services, such as APNS and GCM (Firebase
Cloud Messaging)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sns_list_sms_sandbox_phone_numbers/"> list_sms_sandbox_phone_numbers </a></td>
<td style="text-align: left;">Lists the calling Amazon Web Services
account's current verified and pending destination phone numbers in the
SMS sandbox</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sns_list_subscriptions/"> list_subscriptions </a></td>
<td style="text-align: left;">Returns a list of the requester's
subscriptions</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sns_list_subscriptions_by_topic/"> list_subscriptions_by_topic </a></td>
<td style="text-align: left;">Returns a list of the subscriptions to a
specific topic</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sns_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">List all tags added to the specified
Amazon SNS topic</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sns_list_topics/"> list_topics </a></td>
<td style="text-align: left;">Returns a list of the requester's
topics</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sns_opt_in_phone_number/"> opt_in_phone_number </a></td>
<td style="text-align: left;">Use this request to opt in a phone number
that is opted out, which enables you to resume sending SMS messages to
the number</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sns_publish/"> publish </a></td>
<td style="text-align: left;">Sends a message to an Amazon SNS topic, a
text message (SMS message) directly to a phone number, or a message to a
mobile platform endpoint (when you specify the TargetArn)</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sns_publish_batch/"> publish_batch </a></td>
<td style="text-align: left;">Publishes up to ten messages to the
specified topic</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sns_put_data_protection_policy/"> put_data_protection_policy </a></td>
<td style="text-align: left;">Adds or updates an inline policy document
that is stored in the specified Amazon SNS topic</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sns_remove_permission/"> remove_permission </a></td>
<td style="text-align: left;">Removes a statement from a topic's access
control policy</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sns_set_endpoint_attributes/"> set_endpoint_attributes </a></td>
<td style="text-align: left;">Sets the attributes for an endpoint for a
device on one of the supported push notification services, such as GCM
(Firebase Cloud Messaging) and APNS</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sns_set_platform_application_attributes/"> set_platform_application_attributes </a></td>
<td style="text-align: left;">Sets the attributes of the platform
application object for the supported push notification services, such as
APNS and GCM (Firebase Cloud Messaging)</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sns_set_sms_attributes/"> set_sms_attributes </a></td>
<td style="text-align: left;">Use this request to set the default
settings for sending SMS messages and receiving daily SMS usage
reports</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sns_set_subscription_attributes/"> set_subscription_attributes </a></td>
<td style="text-align: left;">Allows a subscription owner to set an
attribute of the subscription to a new value</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sns_set_topic_attributes/"> set_topic_attributes </a></td>
<td style="text-align: left;">Allows a topic owner to set an attribute
of the topic to a new value</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sns_subscribe/"> subscribe </a></td>
<td style="text-align: left;">Subscribes an endpoint to an Amazon SNS
topic</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sns_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Add tags to the specified Amazon SNS
topic</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sns_unsubscribe/"> unsubscribe </a></td>
<td style="text-align: left;">Deletes a subscription</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../sns_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Remove tags from the specified Amazon SNS
topic</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../sns_verify_sms_sandbox_phone_number/"> verify_sms_sandbox_phone_number </a></td>
<td style="text-align: left;">Verifies a destination phone number with a
one-time password (OTP) for the calling Amazon Web Services account</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- sns()
    svc$add_permission(
      Foo = 123
    )

    ## End(Not run)
