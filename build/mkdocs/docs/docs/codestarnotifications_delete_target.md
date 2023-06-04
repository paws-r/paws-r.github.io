<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>codestarnotifications_delete_target</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a specified target for notifications

### Description

Deletes a specified target for notifications.

### Usage

    codestarnotifications_delete_target(TargetAddress, ForceUnsubscribeAll)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="codestarnotifications_delete_target_:_TargetAddress">TargetAddress</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Chatbot topic or
Chatbot client to delete.</p></td>
</tr>
<tr class="even">
<td><code
id="codestarnotifications_delete_target_:_ForceUnsubscribeAll">ForceUnsubscribeAll</code></td>
<td><p>A Boolean value that can be used to delete all associations with
this Chatbot topic. The default value is FALSE. If set to TRUE, all
associations between that target and every notification rule in your
Amazon Web Services account are deleted.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_target(
      TargetAddress = "string",
      ForceUnsubscribeAll = TRUE|FALSE
    )
