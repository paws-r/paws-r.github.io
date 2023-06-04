<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_get_identity_notification_attributes</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Given a list of verified identities (email addresses and/or domains), returns a structure describing identity notification attributes

### Description

Given a list of verified identities (email addresses and/or domains),
returns a structure describing identity notification attributes.

This operation is throttled at one request per second and can only get
notification attributes for up to 100 identities at a time.

For more information about using notifications with Amazon SES, see the
[Amazon SES Developer
Guide](https://docs.aws.amazon.com/ses/latest/dg/Welcome.html).

### Usage

    ses_get_identity_notification_attributes(Identities)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ses_get_identity_notification_attributes_:_Identities">Identities</code></td>
<td><p>[required] A list of one or more identities. You can specify an
identity by using its name or by using its Amazon Resource Name (ARN).
Examples: <code>user@example.com</code>, <code>example.com</code>,
<code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      NotificationAttributes = list(
        list(
          BounceTopic = "string",
          ComplaintTopic = "string",
          DeliveryTopic = "string",
          ForwardingEnabled = TRUE|FALSE,
          HeadersInBounceNotificationsEnabled = TRUE|FALSE,
          HeadersInComplaintNotificationsEnabled = TRUE|FALSE,
          HeadersInDeliveryNotificationsEnabled = TRUE|FALSE
        )
      )
    )

### Request syntax

    svc$get_identity_notification_attributes(
      Identities = list(
        "string"
      )
    )

### Examples

    ## Not run: 
    # The following example returns the notification attributes for an
    # identity:
    svc$get_identity_notification_attributes(
      Identities = list(
        "example.com"
      )
    )

    ## End(Not run)
