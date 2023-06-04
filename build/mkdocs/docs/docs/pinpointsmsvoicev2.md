<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointsmsvoicev2</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Amazon Pinpoint SMS Voice V2

### Description

Welcome to the *Amazon Pinpoint SMS and Voice, version 2 API Reference*.
This guide provides information about Amazon Pinpoint SMS and Voice,
version 2 API resources, including supported HTTP methods, parameters,
and schemas.

Amazon Pinpoint is an Amazon Web Services service that you can use to
engage with your recipients across multiple messaging channels. The
Amazon Pinpoint SMS and Voice, version 2 API provides programmatic
access to options that are unique to the SMS and voice channels and
supplements the resources provided by the Amazon Pinpoint API.

If you're new to Amazon Pinpoint, it's also helpful to review the
[Amazon Pinpoint Developer
Guide](https://docs.aws.amazon.com/pinpoint/latest/developerguide/welcome.html).
The *Amazon Pinpoint Developer Guide* provides tutorials, code samples,
and procedures that demonstrate how to use Amazon Pinpoint features
programmatically and how to integrate Amazon Pinpoint functionality into
mobile apps and other types of applications. The guide also provides key
information, such as Amazon Pinpoint integration with other Amazon Web
Services services, and the quotas that apply to use of the service.

### Usage

    pinpointsmsvoicev2(config = list())

### Arguments

<table>
<colgroup>
<col style="width: 15%" />
<col style="width: 85%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="pinpointsmsvoicev2_:_config">config</code></td>
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

    svc <- pinpointsmsvoicev2(
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
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_associate_origination_identity/"> associate_origination_identity </a></td>
<td style="text-align: left;">Associates the specified origination
identity with a pool</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_create_configuration_set/"> create_configuration_set </a></td>
<td style="text-align: left;">Creates a new configuration set</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_create_event_destination/"> create_event_destination </a></td>
<td style="text-align: left;">Creates a new event destination in a
configuration set</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_create_opt_out_list/"> create_opt_out_list </a></td>
<td style="text-align: left;">Creates a new opt-out list</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_create_pool/"> create_pool </a></td>
<td style="text-align: left;">Creates a new pool and associates the
specified origination identity to the pool</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_delete_configuration_set/"> delete_configuration_set </a></td>
<td style="text-align: left;">Deletes an existing configuration set</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_delete_default_message_type/"> delete_default_message_type </a></td>
<td style="text-align: left;">Deletes an existing default message type
on a configuration set</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_delete_default_sender_id/"> delete_default_sender_id </a></td>
<td style="text-align: left;">Deletes an existing default sender ID on a
configuration set</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_delete_event_destination/"> delete_event_destination </a></td>
<td style="text-align: left;">Deletes an existing event destination</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_delete_keyword/"> delete_keyword </a></td>
<td style="text-align: left;">Deletes an existing keyword from an
origination phone number or pool</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_delete_opted_out_number/"> delete_opted_out_number </a></td>
<td style="text-align: left;">Deletes an existing opted out destination
phone number from the specified opt-out list</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_delete_opt_out_list/"> delete_opt_out_list </a></td>
<td style="text-align: left;">Deletes an existing opt-out list</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_delete_pool/"> delete_pool </a></td>
<td style="text-align: left;">Deletes an existing pool</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../pinpointsmsvoicev2_delete_text_message_spend_limit_override/"> delete_text_message_spend_limit_override </a></td>
<td style="text-align: left;">Deletes an account-level monthly spending
limit override for sending text messages</td>
</tr>
<tr class="odd">
<td
style="text-align: left;"><a href="../pinpointsmsvoicev2_delete_voice_message_spend_limit_override/"> delete_voice_message_spend_limit_override </a></td>
<td style="text-align: left;">Deletes an account level monthly spend
limit override for sending voice messages</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_describe_account_attributes/"> describe_account_attributes </a></td>
<td style="text-align: left;">Describes attributes of your Amazon Web
Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_describe_account_limits/"> describe_account_limits </a></td>
<td style="text-align: left;">Describes the current Amazon Pinpoint SMS
Voice V2 resource quotas for your account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_describe_configuration_sets/"> describe_configuration_sets </a></td>
<td style="text-align: left;">Describes the specified configuration sets
or all in your account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_describe_keywords/"> describe_keywords </a></td>
<td style="text-align: left;">Describes the specified keywords or all
keywords on your origination phone number or pool</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_describe_opted_out_numbers/"> describe_opted_out_numbers </a></td>
<td style="text-align: left;">Describes the specified opted out
destination numbers or all opted out destination numbers in an opt-out
list</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_describe_opt_out_lists/"> describe_opt_out_lists </a></td>
<td style="text-align: left;">Describes the specified opt-out list or
all opt-out lists in your account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_describe_phone_numbers/"> describe_phone_numbers </a></td>
<td style="text-align: left;">Describes the specified origination phone
number, or all the phone numbers in your account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_describe_pools/"> describe_pools </a></td>
<td style="text-align: left;">Retrieves the specified pools or all pools
associated with your Amazon Web Services account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_describe_sender_ids/"> describe_sender_ids </a></td>
<td style="text-align: left;">Describes the specified SenderIds or all
SenderIds associated with your Amazon Web Services account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_describe_spend_limits/"> describe_spend_limits </a></td>
<td style="text-align: left;">Describes the current Amazon Pinpoint
monthly spend limits for sending voice and text messages</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_disassociate_origination_identity/"> disassociate_origination_identity </a></td>
<td style="text-align: left;">Removes the specified origination identity
from an existing pool</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_list_pool_origination_identities/"> list_pool_origination_identities </a></td>
<td style="text-align: left;">Lists all associated origination
identities in your pool</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_list_tags_for_resource/"> list_tags_for_resource </a></td>
<td style="text-align: left;">List all tags associated with a
resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_put_keyword/"> put_keyword </a></td>
<td style="text-align: left;">Creates or updates a keyword configuration
on an origination phone number or pool</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_put_opted_out_number/"> put_opted_out_number </a></td>
<td style="text-align: left;">Creates an opted out destination phone
number in the opt-out list</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_release_phone_number/"> release_phone_number </a></td>
<td style="text-align: left;">Releases an existing origination phone
number in your account</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_request_phone_number/"> request_phone_number </a></td>
<td style="text-align: left;">Request an origination phone number for
use in your account</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_send_text_message/"> send_text_message </a></td>
<td style="text-align: left;">Creates a new text message and sends it to
a recipient's phone number</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_send_voice_message/"> send_voice_message </a></td>
<td style="text-align: left;">Allows you to send a request that sends a
text message through Amazon Pinpoint</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_set_default_message_type/"> set_default_message_type </a></td>
<td style="text-align: left;">Sets the default message type on a
configuration set</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_set_default_sender_id/"> set_default_sender_id </a></td>
<td style="text-align: left;">Sets default sender ID on a configuration
set</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_set_text_message_spend_limit_override/"> set_text_message_spend_limit_override </a></td>
<td style="text-align: left;">Sets an account level monthly spend limit
override for sending text messages</td>
</tr>
<tr class="even">
<td
style="text-align: left;"><a href="../pinpointsmsvoicev2_set_voice_message_spend_limit_override/"> set_voice_message_spend_limit_override </a></td>
<td style="text-align: left;">Sets an account level monthly spend limit
override for sending voice messages</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_tag_resource/"> tag_resource </a></td>
<td style="text-align: left;">Adds or overwrites only the specified tags
for the specified Amazon Pinpoint SMS Voice, version 2 resource</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_untag_resource/"> untag_resource </a></td>
<td style="text-align: left;">Removes the association of the specified
tags from an Amazon Pinpoint SMS Voice V2 resource</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_update_event_destination/"> update_event_destination </a></td>
<td style="text-align: left;">Updates an existing event destination in a
configuration set</td>
</tr>
<tr class="even">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_update_phone_number/"> update_phone_number </a></td>
<td style="text-align: left;">Updates the configuration of an existing
origination phone number</td>
</tr>
<tr class="odd">
<td style="text-align: left;"><a href="../pinpointsmsvoicev2_update_pool/"> update_pool </a></td>
<td style="text-align: left;">Updates the configuration of an existing
pool</td>
</tr>
</tbody>
</table>

### Examples

    ## Not run: 
    svc <- pinpointsmsvoicev2()
    svc$associate_origination_identity(
      Foo = 123
    )

    ## End(Not run)
