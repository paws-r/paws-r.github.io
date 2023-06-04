<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_send_email</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Composes an email message and immediately queues it for sending

### Description

Composes an email message and immediately queues it for sending. In
order to send email using the `send_email` operation, your message must
meet the following requirements:

-   The message must be sent from a verified email address or domain. If
    you attempt to send email using a non-verified address or domain,
    the operation will result in an "Email address not verified" error.

-   If your account is still in the Amazon SES sandbox, you may only
    send to verified addresses or domains, or to email addresses
    associated with the Amazon SES Mailbox Simulator. For more
    information, see [Verifying Email Addresses and
    Domains](https://docs.aws.amazon.com/ses/latest/dg/verify-addresses-and-domains.html)
    in the *Amazon SES Developer Guide.*

-   The maximum message size is 10 MB.

-   The message must include at least one recipient email address. The
    recipient address can be a To: address, a CC: address, or a BCC:
    address. If a recipient email address is invalid (that is, it is not
    in the format *UserName@\[SubDomain.\]Domain.TopLevelDomain*), the
    entire message will be rejected, even if the message contains other
    recipients that are valid.

-   The message may not include more than 50 recipients, across the To:,
    CC: and BCC: fields. If you need to send an email message to a
    larger audience, you can divide your recipient list into groups of
    50 or fewer, and then call the `send_email` operation several times
    to send the message to each group.

For every message that you send, the total number of recipients
(including each recipient in the To:, CC: and BCC: fields) is counted
against the maximum number of emails you can send in a 24-hour period
(your *sending quota*). For more information about sending quotas in
Amazon SES, see [Managing Your Amazon SES Sending
Limits](https://docs.aws.amazon.com/ses/latest/dg/Welcome.html) in the
*Amazon SES Developer Guide.*

### Usage

    ses_send_email(Source, Destination, Message, ReplyToAddresses,
      ReturnPath, SourceArn, ReturnPathArn, Tags, ConfigurationSetName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ses_send_email_:_Source">Source</code></td>
<td><p>[required] The email address that is sending the email. This
email address must be either individually verified with Amazon SES, or
from a domain that has been verified with Amazon SES. For information
about verifying identities, see the <a
href="https://docs.aws.amazon.com/ses/latest/dg/verify-addresses-and-domains.html">Amazon
SES Developer Guide</a>.</p>
<p>If you are sending on behalf of another user and have been permitted
to do so by a sending authorization policy, then you must also specify
the <code>SourceArn</code> parameter. For more information about sending
authorization, see the <a
href="https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html">Amazon
SES Developer Guide</a>.</p>
<p>Amazon SES does not support the SMTPUTF8 extension, as described in
<a href="https://datatracker.ietf.org/doc/html/rfc6531">RFC6531</a>. For
this reason, the <em>local part</em> of a source email address (the part
of the email address that precedes the @ sign) may only contain <a
href="https://en.wikipedia.org/wiki/Email_address#Local-part">7-bit
ASCII characters</a>. If the <em>domain part</em> of an address (the
part after the @ sign) contains non-ASCII characters, they must be
encoded using Punycode, as described in <a
href="https://datatracker.ietf.org/doc/html/rfc3492.html">RFC3492</a>.
The sender name (also known as the <em>friendly name</em>) may contain
non-ASCII characters. These characters must be encoded using MIME
encoded-word syntax, as described in <a
href="https://datatracker.ietf.org/doc/html/rfc2047">RFC 2047</a>. MIME
encoded-word syntax uses the following form: <code
style="white-space: pre;">⁠=?charset?encoding?encoded-text?=⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code id="ses_send_email_:_Destination">Destination</code></td>
<td><p>[required] The destination for this email, composed of To:, CC:,
and BCC: fields.</p></td>
</tr>
<tr class="odd">
<td><code id="ses_send_email_:_Message">Message</code></td>
<td><p>[required] The message to be sent.</p></td>
</tr>
<tr class="even">
<td><code
id="ses_send_email_:_ReplyToAddresses">ReplyToAddresses</code></td>
<td><p>The reply-to email address(es) for the message. If the recipient
replies to the message, each reply-to address will receive the
reply.</p></td>
</tr>
<tr class="odd">
<td><code id="ses_send_email_:_ReturnPath">ReturnPath</code></td>
<td><p>The email address that bounces and complaints will be forwarded
to when feedback forwarding is enabled. If the message cannot be
delivered to the recipient, then an error message will be returned from
the recipient's ISP; this message will then be forwarded to the email
address specified by the <code>ReturnPath</code> parameter. The
<code>ReturnPath</code> parameter is never overwritten. This email
address must be either individually verified with Amazon SES, or from a
domain that has been verified with Amazon SES.</p></td>
</tr>
<tr class="even">
<td><code id="ses_send_email_:_SourceArn">SourceArn</code></td>
<td><p>This parameter is used only for sending authorization. It is the
ARN of the identity that is associated with the sending authorization
policy that permits you to send for the email address specified in the
<code>Source</code> parameter.</p>
<p>For example, if the owner of <code>example.com</code> (which has ARN
<code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>)
attaches a policy to it that authorizes you to send from
<code>user@example.com</code>, then you would specify the
<code>SourceArn</code> to be
<code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>,
and the <code>Source</code> to be <code>user@example.com</code>.</p>
<p>For more information about sending authorization, see the <a
href="https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html">Amazon
SES Developer Guide</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="ses_send_email_:_ReturnPathArn">ReturnPathArn</code></td>
<td><p>This parameter is used only for sending authorization. It is the
ARN of the identity that is associated with the sending authorization
policy that permits you to use the email address specified in the
<code>ReturnPath</code> parameter.</p>
<p>For example, if the owner of <code>example.com</code> (which has ARN
<code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>)
attaches a policy to it that authorizes you to use
<code>feedback@example.com</code>, then you would specify the
<code>ReturnPathArn</code> to be
<code>arn:aws:ses:us-east-1:123456789012:identity/example.com</code>,
and the <code>ReturnPath</code> to be
<code>feedback@example.com</code>.</p>
<p>For more information about sending authorization, see the <a
href="https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html">Amazon
SES Developer Guide</a>.</p></td>
</tr>
<tr class="even">
<td><code id="ses_send_email_:_Tags">Tags</code></td>
<td><p>A list of tags, in the form of name/value pairs, to apply to an
email that you send using <code>send_email</code>. Tags correspond to
characteristics of the email that you define, so that you can publish
email sending events.</p></td>
</tr>
<tr class="odd">
<td><code
id="ses_send_email_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>The name of the configuration set to use when you send an email
using <code>send_email</code>.</p></td>
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
      Source = "string",
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
      Message = list(
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
      ReplyToAddresses = list(
        "string"
      ),
      ReturnPath = "string",
      SourceArn = "string",
      ReturnPathArn = "string",
      Tags = list(
        list(
          Name = "string",
          Value = "string"
        )
      ),
      ConfigurationSetName = "string"
    )

### Examples

    ## Not run: 
    # The following example sends a formatted email:
    svc$send_email(
      Destination = list(
        BccAddresses = list(),
        CcAddresses = list(
          "recipient3@example.com"
        ),
        ToAddresses = list(
          "recipient1@example.com",
          "recipient2@example.com"
        )
      ),
      Message = list(
        Body = list(
          Html = list(
            Charset = "UTF-8",
            Data = "This message body contains HTML formatting. It can, for exa..."
          ),
          Text = list(
            Charset = "UTF-8",
            Data = "This is the message body in text format."
          )
        ),
        Subject = list(
          Charset = "UTF-8",
          Data = "Test email"
        )
      ),
      ReplyToAddresses = list(),
      ReturnPath = "",
      ReturnPathArn = "",
      Source = "sender@example.com",
      SourceArn = ""
    )

    ## End(Not run)
