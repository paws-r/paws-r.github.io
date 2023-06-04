<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_delete_resource_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Removes an existing policy from a bot or bot alias

### Description

Removes an existing policy from a bot or bot alias. If the resource
doesn't have a policy attached, Amazon Lex returns an exception.

### Usage

    lexmodelsv2_delete_resource_policy(resourceArn, expectedRevisionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelsv2_delete_resource_policy_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the bot or bot alias
that has the resource policy attached.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_delete_resource_policy_:_expectedRevisionId">expectedRevisionId</code></td>
<td><p>The identifier of the revision to edit. If this ID doesn't match
the current revision number, Amazon Lex returns an exception</p>
<p>If you don't specify a revision ID, Amazon Lex will delete the
current policy.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      resourceArn = "string",
      revisionId = "string"
    )

### Request syntax

    svc$delete_resource_policy(
      resourceArn = "string",
      expectedRevisionId = "string"
    )
