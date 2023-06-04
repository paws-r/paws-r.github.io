<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>pinpointemail_send_email</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Sends an email message

### Description

Sends an email message. You can use the Amazon Pinpoint Email API to
send two types of messages:

-   **Simple** – A standard email message. When you create this type of
    message, you specify the sender, the recipient, and the message
    body, and Amazon Pinpoint assembles the message for you.

-   **Raw** – A raw, MIME-formatted email message. When you send this
    type of email, you have to specify all of the message headers, as
    well as the message body. You can use this message type to send
    messages that contain attachments. The message that you specify has
    to be a valid MIME message.

### Usage

    pinpointemail_send_email(FromEmailAddress, Destination,
      ReplyToAddresses, FeedbackForwardingEmailAddress, Content, EmailTags,
      ConfigurationSetName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="pinpointemail_send_email_:_FromEmailAddress">FromEmailAddress</code></td>
<td><p>The email address that you want to use as the "From" address for
the email. The address that you specify has to be verified.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointemail_send_email_:_Destination">Destination</code></td>
<td><p>[required] An object that contains the recipients of the email
message.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointemail_send_email_:_ReplyToAddresses">ReplyToAddresses</code></td>
<td><p>The "Reply-to" email addresses for the message. When the
recipient replies to the message, each Reply-to address receives the
reply.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointemail_send_email_:_FeedbackForwardingEmailAddress">FeedbackForwardingEmailAddress</code></td>
<td><p>The address that Amazon Pinpoint should send bounce and complaint
notifications to.</p></td>
</tr>
<tr class="odd">
<td><code id="pinpointemail_send_email_:_Content">Content</code></td>
<td><p>[required] An object that contains the body of the message. You
can send either a Simple message or a Raw message.</p></td>
</tr>
<tr class="even">
<td><code
id="pinpointemail_send_email_:_EmailTags">EmailTags</code></td>
<td><p>A list of tags, in the form of name/value pairs, to apply to an
email that you send using the <code>send_email</code> operation. Tags
correspond to characteristics of the email that you define, so that you
can publish email sending events.</p></td>
</tr>
<tr class="odd">
<td><code
id="pinpointemail_send_email_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>The name of the configuration set that you want to use when
sending the email.</p></td>
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
      ConfigurationSetName = "string"
    )
