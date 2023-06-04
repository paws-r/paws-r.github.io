<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>support_add_attachments_to_set</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Adds one or more attachments to an attachment set

### Description

Adds one or more attachments to an attachment set.

An attachment set is a temporary container for attachments that you add
to a case or case communication. The set is available for 1 hour after
it's created. The `expiryTime` returned in the response is when the set
expires.

-   You must have a Business, Enterprise On-Ramp, or Enterprise Support
    plan to use the Amazon Web Services Support API.

-   If you call the Amazon Web Services Support API from an account that
    doesn't have a Business, Enterprise On-Ramp, or Enterprise Support
    plan, the `SubscriptionRequiredException` error message appears. For
    information about changing your support plan, see [Amazon Web
    Services Support](https://aws.amazon.com/premiumsupport/).

### Usage

    support_add_attachments_to_set(attachmentSetId, attachments)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="support_add_attachments_to_set_:_attachmentSetId">attachmentSetId</code></td>
<td><p>The ID of the attachment set. If an <code>attachmentSetId</code>
is not specified, a new attachment set is created, and the ID of the set
is returned in the response. If an <code>attachmentSetId</code> is
specified, the attachments are added to the specified set, if it
exists.</p></td>
</tr>
<tr class="even">
<td><code
id="support_add_attachments_to_set_:_attachments">attachments</code></td>
<td><p>[required] One or more attachments to add to the set. You can add
up to three attachments per set. The size limit is 5 MB per
attachment.</p>
<p>In the <code>Attachment</code> object, use the <code>data</code>
parameter to specify the contents of the attachment file. In the
previous request syntax, the value for <code>data</code> appear as
<code>blob</code>, which is represented as a base64-encoded string. The
value for <code>fileName</code> is the name of the attachment, such as
<code>troubleshoot-screenshot.png</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      attachmentSetId = "string",
      expiryTime = "string"
    )

### Request syntax

    svc$add_attachments_to_set(
      attachmentSetId = "string",
      attachments = list(
        list(
          fileName = "string",
          data = raw
        )
      )
    )
