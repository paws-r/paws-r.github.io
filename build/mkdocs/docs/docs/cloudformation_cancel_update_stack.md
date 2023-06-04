<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_cancel_update_stack</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels an update on the specified stack

### Description

Cancels an update on the specified stack. If the call completes
successfully, the stack rolls back the update and reverts to the
previous stack configuration.

You can cancel only stacks that are in the `UPDATE_IN_PROGRESS` state.

### Usage

    cloudformation_cancel_update_stack(StackName, ClientRequestToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_cancel_update_stack_:_StackName">StackName</code></td>
<td><p>[required] The name or the unique stack ID that's associated with
the stack.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_cancel_update_stack_:_ClientRequestToken">ClientRequestToken</code></td>
<td><p>A unique identifier for this <code>cancel_update_stack</code>
request. Specify this token if you plan to retry requests so that
CloudFormation knows that you're not attempting to cancel an update on a
stack with the same name. You might retry
<code>cancel_update_stack</code> requests to ensure that CloudFormation
successfully received them.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$cancel_update_stack(
      StackName = "string",
      ClientRequestToken = "string"
    )
