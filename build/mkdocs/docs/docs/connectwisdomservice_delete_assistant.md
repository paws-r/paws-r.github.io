<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connectwisdomservice_delete_assistant</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an assistant

### Description

Deletes an assistant.

### Usage

    connectwisdomservice_delete_assistant(assistantId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connectwisdomservice_delete_assistant_:_assistantId">assistantId</code></td>
<td><p>[required] The identifier of the Wisdom assistant. Can be either
the ID or the ARN. URLs cannot contain the ARN.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_assistant(
      assistantId = "string"
    )
