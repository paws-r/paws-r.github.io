<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ses_send_raw_email</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Composes an email message and immediately queues it for sending

### Description

Composes an email message and immediately queues it for sending.

This operation is more flexible than the `send_email` API operation.
When you use the `send_raw_email` operation, you can specify the headers
of the message as well as its content. This flexibility is useful, for
example, when you want to send a multipart MIME email (such a message
that contains both a text and an HTML version). You can also use this
operation to send messages that include attachments.

The `send_raw_email` operation has the following requirements:

-   You can only send email from [verified email addresses or
    domains](https://docs.aws.amazon.com/ses/latest/dg/verify-addresses-and-domains.html).
    If you try to send email from an address that isn't verified, the
    operation results in an "Email address not verified" error.

-   If your account is still in the [Amazon SES
    sandbox](https://docs.aws.amazon.com/ses/latest/dg/request-production-access.html),
    you can only send email to other verified addresses in your account,
    or to addresses that are associated with the [Amazon SES mailbox
    simulator](https://docs.aws.amazon.com/ses/latest/dg/Welcome.html).

-   The maximum message size, including attachments, is 10 MB.

-   Each message has to include at least one recipient address. A
    recipient address includes any address on the To:, CC:, or BCC:
    lines.

-   If you send a single message to more than one recipient address, and
    one of the recipient addresses isn't in a valid format (that is,
    it's not in the format
    *UserName@\[SubDomain.\]Domain.TopLevelDomain*), Amazon SES rejects
    the entire message, even if the other addresses are valid.

-   Each message can include up to 50 recipient addresses across the
    To:, CC:, or BCC: lines. If you need to send a single message to
    more than 50 recipients, you have to split the list of recipient
    addresses into groups of less than 50 recipients, and send separate
    messages to each group.

-   Amazon SES allows you to specify 8-bit Content-Transfer-Encoding for
    MIME message parts. However, if Amazon SES has to modify the
    contents of your message (for example, if you use open and click
    tracking), 8-bit content isn't preserved. For this reason, we highly
    recommend that you encode all content that isn't 7-bit ASCII. For
    more information, see [MIME
    Encoding](https://docs.aws.amazon.com/ses/latest/dg/send-email-raw.html#send-email-mime-encoding)
    in the *Amazon SES Developer Guide*.

Additionally, keep the following considerations in mind when using the
`send_raw_email` operation:

-   Although you can customize the message headers when using the
    `send_raw_email` operation, Amazon SES will automatically apply its
    own `Message-ID` and `Date` headers; if you passed these headers
    when creating the message, they will be overwritten by the values
    that Amazon SES provides.

-   If you are using sending authorization to send on behalf of another
    user, `send_raw_email` enables you to specify the cross-account
    identity for the email's Source, From, and Return-Path parameters in
    one of two ways: you can pass optional parameters `SourceArn`,
    `FromArn`, and/or `ReturnPathArn` to the API, or you can include the
    following X-headers in the header of your raw email:

    -   `X-SES-SOURCE-ARN`

    -   `X-SES-FROM-ARN`

    -   `X-SES-RETURN-PATH-ARN`

    Don't include these X-headers in the DKIM signature. Amazon SES
    removes these before it sends the email.

    If you only specify the `SourceIdentityArn` parameter, Amazon SES
    sets the From and Return-Path addresses to the same identity that
    you specified.

    For more information about sending authorization, see the [Using
    Sending Authorization with Amazon
    SES](https://docs.aws.amazon.com/ses/latest/dg/sending-authorization.html)
    in the *Amazon SES Developer Guide.*

-   For every message that you send, the total number of recipients
    (including each recipient in the To:, CC: and BCC: fields) is
    counted against the maximum number of emails you can send in a
    24-hour period (your *sending quota*). For more information about
    sending quotas in Amazon SES, see [Managing Your Amazon SES Sending
    Limits](https://docs.aws.amazon.com/ses/latest/dg/Welcome.html) in
    the *Amazon SES Developer Guide.*

### Usage

    ses_send_raw_email(Source, Destinations, RawMessage, FromArn, SourceArn,
      ReturnPathArn, Tags, ConfigurationSetName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="ses_send_raw_email_:_Source">Source</code></td>
<td><p>The identity's email address. If you do not provide a value for
this parameter, you must specify a "From" address in the raw text of the
message. (You can also specify both.)</p>
<p>Amazon SES does not support the SMTPUTF8 extension, as described in<a
href="https://datatracker.ietf.org/doc/html/rfc6531">RFC6531</a>. For
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
style="white-space: pre;">⁠=?charset?encoding?encoded-text?=⁠</code>.</p>
<p>If you specify the <code>Source</code> parameter and have feedback
forwarding enabled, then bounces and complaints will be sent to this
email address. This takes precedence over any Return-Path header that
you might include in the raw text of the message.</p></td>
</tr>
<tr class="even">
<td><code
id="ses_send_raw_email_:_Destinations">Destinations</code></td>
<td><p>A list of destinations for the message, consisting of To:, CC:,
and BCC: addresses.</p></td>
</tr>
<tr class="odd">
<td><code id="ses_send_raw_email_:_RawMessage">RawMessage</code></td>
<td><p>[required] The raw email message itself. The message has to meet
the following criteria:</p>
<ul>
<li><p>The message has to contain a header and a body, separated by a
blank line.</p></li>
<li><p>All of the required header fields must be present in the
message.</p></li>
<li><p>Each part of a multipart MIME message must be formatted
properly.</p></li>
<li><p>Attachments must be of a content type that Amazon SES supports.
For a list on unsupported content types, see <a
href="https://docs.aws.amazon.com/ses/latest/dg/Welcome.html">Unsupported
Attachment Types</a> in the <em>Amazon SES Developer
Guide</em>.</p></li>
<li><p>The entire message must be base64-encoded.</p></li>
<li><p>If any of the MIME parts in your message contain content that is
outside of the 7-bit ASCII character range, we highly recommend that you
encode that content. For more information, see <a
href="https://docs.aws.amazon.com/ses/latest/dg/send-email-raw.html">Sending
Raw Email</a> in the <em>Amazon SES Developer Guide</em>.</p></li>
<li><p>Per <a
href="https://datatracker.ietf.org/doc/html/rfc5321#section-4.5.3.1.6">RFC
5321</a>, the maximum length of each line of text, including the
\&lt;CRLF\&gt;, must not exceed 1,000 characters.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code id="ses_send_raw_email_:_FromArn">FromArn</code></td>
<td><p>This parameter is used only for sending authorization. It is the
ARN of the identity that is associated with the sending authorization
policy that permits you to specify a particular "From" address in the
header of the raw email.</p>
<p>Instead of using this parameter, you can use the X-header
<code>X-SES-FROM-ARN</code> in the raw message of the email. If you use
both the <code>FromArn</code> parameter and the corresponding X-header,
Amazon SES uses the value of the <code>FromArn</code> parameter.</p>
<p>For information about when to use this parameter, see the description
of <code>send_raw_email</code> in this guide, or see the <a
href="https://docs.aws.amazon.com/ses/latest/dg/sending-authorization-delegate-sender-tasks-email.html">Amazon
SES Developer Guide</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="ses_send_raw_email_:_SourceArn">SourceArn</code></td>
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
<p>Instead of using this parameter, you can use the X-header
<code>X-SES-SOURCE-ARN</code> in the raw message of the email. If you
use both the <code>SourceArn</code> parameter and the corresponding
X-header, Amazon SES uses the value of the <code>SourceArn</code>
parameter.</p>
<p>For information about when to use this parameter, see the description
of <code>send_raw_email</code> in this guide, or see the <a
href="https://docs.aws.amazon.com/ses/latest/dg/sending-authorization-delegate-sender-tasks-email.html">Amazon
SES Developer Guide</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="ses_send_raw_email_:_ReturnPathArn">ReturnPathArn</code></td>
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
<p>Instead of using this parameter, you can use the X-header
<code>X-SES-RETURN-PATH-ARN</code> in the raw message of the email. If
you use both the <code>ReturnPathArn</code> parameter and the
corresponding X-header, Amazon SES uses the value of the
<code>ReturnPathArn</code> parameter.</p>
<p>For information about when to use this parameter, see the description
of <code>send_raw_email</code> in this guide, or see the <a
href="https://docs.aws.amazon.com/ses/latest/dg/sending-authorization-delegate-sender-tasks-email.html">Amazon
SES Developer Guide</a>.</p></td>
</tr>
<tr class="odd">
<td><code id="ses_send_raw_email_:_Tags">Tags</code></td>
<td><p>A list of tags, in the form of name/value pairs, to apply to an
email that you send using <code>send_raw_email</code>. Tags correspond
to characteristics of the email that you define, so that you can publish
email sending events.</p></td>
</tr>
<tr class="even">
<td><code
id="ses_send_raw_email_:_ConfigurationSetName">ConfigurationSetName</code></td>
<td><p>The name of the configuration set to use when you send an email
using <code>send_raw_email</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      MessageId = "string"
    )

### Request syntax

    svc$send_raw_email(
      Source = "string",
      Destinations = list(
        "string"
      ),
      RawMessage = list(
        Data = raw
      ),
      FromArn = "string",
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
    # The following example sends an email with an attachment:
    svc$send_raw_email(
      Destinations = list(),
      FromArn = "",
      RawMessage = list(
        Data = "From: sender@example.com\\nTo: recipient@example.com\\nSubject:..."
      ),
      ReturnPathArn = "",
      Source = "",
      SourceArn = ""
    )

    ## End(Not run)
