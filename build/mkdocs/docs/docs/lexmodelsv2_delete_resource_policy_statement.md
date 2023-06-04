<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>lexmodelsv2_delete_resource_policy_statement</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a policy statement from a resource policy

### Description

Deletes a policy statement from a resource policy. If you delete the
last statement from a policy, the policy is deleted. If you specify a
statement ID that doesn't exist in the policy, or if the bot or bot
alias doesn't have a policy attached, Amazon Lex returns an exception.

### Usage

    lexmodelsv2_delete_resource_policy_statement(resourceArn, statementId,
      expectedRevisionId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="lexmodelsv2_delete_resource_policy_statement_:_resourceArn">resourceArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the bot or bot alias
that the resource policy is attached to.</p></td>
</tr>
<tr class="even">
<td><code
id="lexmodelsv2_delete_resource_policy_statement_:_statementId">statementId</code></td>
<td><p>[required] The name of the statement (SID) to delete from the
policy.</p></td>
</tr>
<tr class="odd">
<td><code
id="lexmodelsv2_delete_resource_policy_statement_:_expectedRevisionId">expectedRevisionId</code></td>
<td><p>The identifier of the revision of the policy to delete the
statement from. If this revision ID doesn't match the current revision
ID, Amazon Lex throws an exception.</p>
<p>If you don't specify a revision, Amazon Lex removes the current
contents of the statement.</p></td>
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

    svc$delete_resource_policy_statement(
      resourceArn = "string",
      statementId = "string",
      expectedRevisionId = "string"
    )
