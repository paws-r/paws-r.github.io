<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>workmailmessageflow_get_raw_message_content</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Retrieves the raw content of an in-transit email message, in MIME format

### Description

Retrieves the raw content of an in-transit email message, in MIME
format.

### Usage

    workmailmessageflow_get_raw_message_content(messageId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="workmailmessageflow_get_raw_message_content_:_messageId">messageId</code></td>
<td><p>[required] The identifier of the email message to
retrieve.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      messageContent = raw
    )

### Request syntax

    svc$get_raw_message_content(
      messageId = "string"
    )
