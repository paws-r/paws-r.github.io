<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_send_bulk_email</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Composes an email message to multiple destinations

### Description

Composes an email message to multiple destinations.

### Usage

    sesv2_send_bulk_email(FromEmailAddress, FromEmailAddressIdentityArn,
      ReplyToAddresses, FeedbackForwardingEmailAddress,
      FeedbackForwardingEmailAddressIdentityArn, DefaultEmailTags,
      DefaultContent, BulkEmailEntries, ConfigurationSetName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_send_bulk_email_:_FromEmailAddress">FromEmailAddress</code></td>
<td><p>The email address to use as the "From" address for the email. The
address that you specify has to be verified.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_send_bulk_email_:_FromEmailAddressIdentityArn">FromEmailAddressIdentityArn</code></td>
<td><p>This parameter is used only for sending authorization. It is the
ARN of the identity that is associated with the sending authorization
policy that permits you to use the email address specified in the
<code>FromEmailAddress</code> parameter.</p>
<p>For example, if the owner of example.com (which has ARN
arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a
policy to it that authorizes you to use sender@example.com, then you
would specify the <code>FromEmailAddressIdentityArn</code> to be
arn:aws:ses:us-east-1:123456789012:identity/example.com, and the
<code>FromEmailAddress</code> to be sender@example.com.</p>
<p>For more information about sending authorization, see the <a
href="https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html">Amazon
SES Developer Guide</a>.</p></td>
</tr>
<tr class="odd">
<td><code
id="sesv2_send_bulk_email_:_ReplyToAddresses">ReplyToAddresses</code></td>
<td><p>The "Reply-to" email addresses for the message. When the
recipient replies to the message, each Reply-to address receives the
reply.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_send_bulk_email_:_FeedbackForwardingEmailAddress">FeedbackForwardingEmailAddress</code></td>
<td><p>The address that you want bounce and complaint notifications to
be sent to.</p></td>
</tr>
<tr class="odd">
<td><code
id="sesv2_send_bulk_email_:_FeedbackForwardingEmailAddressIdentityArn">FeedbackForwardingEmailAddressIdentityArn</code></td>
<td><p>This parameter is used only for sending authorization. It is the
ARN of the identity that is associated with the sending authorization
policy that permits you to use the email address specified in the
<code>FeedbackForwardingEmailAddress</code> parameter.</p>
<p>For example, if the owner of example.com (which has ARN
arn:aws:ses:us-east-1:123456789012:identity/example.com) attaches a
policy to it that authorizes you to use feedback@example.com, then you
would specify the <code>FeedbackForwardingEmailAddressIdentityArn</code>
to be arn:aws:ses:us-east-1:123456789012:identity/example.com, and the
<code>FeedbackForwardingEmailAddress</code> to be
feedback@example.com.</p>
<p>For more information about sending authorization, see the <a
href="https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html">Amazon
SES Developer Guide</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_send_bulk_email_:_DefaultEmailTags">DefaultEmailTags</code></td>
<td><p>A list of tags, in the form of name/value pairs, to apply to an
email that you send using the <code>send_email</code> operation. Tags
correspond to characteristics of the email that you define, so that you
can publish email sending events.</p></td>
</tr>
<tr class="odd">
<td><code
id="sesv2_send_bulk_email_:_DefaultContent">DefaultContent</code></td>
<td><p>[required] An object that contains the body of the message. You
can specify a template message.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_send_bulk_email_:_BulkEmailEntries">BulkEmailEntries</code></td>
<td><p>[required] The list of bulk email entry objects.</p></td>
</tr>
<tr class="odd">
<td><code
id="sesv2_send_bulk_email_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>The name of the configuration set to use when sending the
email.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      BulkEmailEntryResults = list(
        list(
          Status = "SUCCESS"|"MESSAGE_REJECTED"|"MAIL_FROM_DOMAIN_NOT_VERIFIED"|"CONFIGURATION_SET_NOT_FOUND"|"TEMPLATE_NOT_FOUND"|"ACCOUNT_SUSPENDED"|"ACCOUNT_THROTTLED"|"ACCOUNT_DAILY_QUOTA_EXCEEDED"|"INVALID_SENDING_POOL_NAME"|"ACCOUNT_SENDING_PAUSED"|"CONFIGURATION_SET_SENDING_PAUSED"|"INVALID_PARAMETER"|"TRANSIENT_FAILURE"|"FAILED",
          Error = "string",
          MessageId = "string"
        )
      )
    )

### Request syntax

    svc$send_bulk_email(
      FromEmailAddress = "string",
      FromEmailAddressIdentityArn = "string",
      ReplyToAddresses = list(
        "string"
      ),
      FeedbackForwardingEmailAddress = "string",
      FeedbackForwardingEmailAddressIdentityArn = "string",
      DefaultEmailTags = list(
        list(
          Name = "string",
          Value = "string"
        )
      ),
      DefaultContent = list(
        Template = list(
          TemplateName = "string",
          TemplateArn = "string",
          TemplateData = "string"
        )
      ),
      BulkEmailEntries = list(
        list(
          Destination = list(
            ToAddresses = list(
              "string"
            ),
            CcAddresses = list(
              "string"
            ),
            BccAddresses = list(
              "string"
            )
          ),
          ReplacementTags = list(
            list(
              Name = "string",
              Value = "string"
            )
          ),
          ReplacementEmailContent = list(
            ReplacementTemplate = list(
              ReplacementTemplateData = "string"
            )
          )
        )
      ),
      ConfigurationSetName = "string"
    )
