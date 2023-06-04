<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>sesv2_send_email</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sends an email message

### Description

Sends an email message. You can use the Amazon SES API v2 to send the
following types of messages:

-   **Simple** – A standard email message. When you create this type of
    message, you specify the sender, the recipient, and the message
    body, and Amazon SES assembles the message for you.

-   **Raw** – A raw, MIME-formatted email message. When you send this
    type of email, you have to specify all of the message headers, as
    well as the message body. You can use this message type to send
    messages that contain attachments. The message that you specify has
    to be a valid MIME message.

-   **Templated** – A message that contains personalization tags. When
    you send this type of email, Amazon SES API v2 automatically
    replaces the tags with values that you specify.

### Usage

    sesv2_send_email(FromEmailAddress, FromEmailAddressIdentityArn,
      Destination, ReplyToAddresses, FeedbackForwardingEmailAddress,
      FeedbackForwardingEmailAddressIdentityArn, Content, EmailTags,
      ConfigurationSetName, ListManagementOptions)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="sesv2_send_email_:_FromEmailAddress">FromEmailAddress</code></td>
<td><p>The email address to use as the "From" address for the email. The
address that you specify has to be verified.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_send_email_:_FromEmailAddressIdentityArn">FromEmailAddressIdentityArn</code></td>
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
SES Developer Guide</a>.</p>
<p>For Raw emails, the <code>FromEmailAddressIdentityArn</code> value
overrides the X-SES-SOURCE-ARN and X-SES-FROM-ARN headers specified in
raw email message content.</p></td>
</tr>
<tr class="odd">
<td><code id="sesv2_send_email_:_Destination">Destination</code></td>
<td><p>An object that contains the recipients of the email
message.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_send_email_:_ReplyToAddresses">ReplyToAddresses</code></td>
<td><p>The "Reply-to" email addresses for the message. When the
recipient replies to the message, each Reply-to address receives the
reply.</p></td>
</tr>
<tr class="odd">
<td><code
id="sesv2_send_email_:_FeedbackForwardingEmailAddress">FeedbackForwardingEmailAddress</code></td>
<td><p>The address that you want bounce and complaint notifications to
be sent to.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_send_email_:_FeedbackForwardingEmailAddressIdentityArn">FeedbackForwardingEmailAddressIdentityArn</code></td>
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
<tr class="odd">
<td><code id="sesv2_send_email_:_Content">Content</code></td>
<td><p>[required] An object that contains the body of the message. You
can send either a Simple message Raw message or a template
Message.</p></td>
</tr>
<tr class="even">
<td><code id="sesv2_send_email_:_EmailTags">EmailTags</code></td>
<td><p>A list of tags, in the form of name/value pairs, to apply to an
email that you send using the <code>send_email</code> operation. Tags
correspond to characteristics of the email that you define, so that you
can publish email sending events.</p></td>
</tr>
<tr class="odd">
<td><code
id="sesv2_send_email_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>The name of the configuration set to use when sending the
email.</p></td>
</tr>
<tr class="even">
<td><code
id="sesv2_send_email_:_ListManagementOptions">ListManagementOptions</code></td>
<td><p>An object used to specify a list or topic to which an email
belongs, which will be used when a contact chooses to
unsubscribe.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MessageId = "string"
    )

### Request syntax

    svc$send_email(
      FromEmailAddress = "string",
      FromEmailAddressIdentityArn = "string",
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
      ReplyToAddresses = list(
        "string"
      ),
      FeedbackForwardingEmailAddress = "string",
      FeedbackForwardingEmailAddressIdentityArn = "string",
      Content = list(
        Simple = list(
          Subject = list(
            Data = "string",
            Charset = "string"
          ),
          Body = list(
            Text = list(
              Data = "string",
              Charset = "string"
            ),
            Html = list(
              Data = "string",
              Charset = "string"
            )
          )
        ),
        Raw = list(
          Data = raw
        ),
        Template = list(
          TemplateName = "string",
          TemplateArn = "string",
          TemplateData = "string"
        )
      ),
      EmailTags = list(
        list(
          Name = "string",
          Value = "string"
        )
      ),
      ConfigurationSetName = "string",
      ListManagementOptions = list(
        ContactListName = "string",
        TopicName = "string"
      )
    )
