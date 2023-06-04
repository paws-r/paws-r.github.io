<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_get_stack_policy</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the stack policy for a specified stack

### Description

Returns the stack policy for a specified stack. If a stack doesn't have
a policy, a null value is returned.

### Usage

    cloudformation_get_stack_policy(StackName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_get_stack_policy_:_StackName">StackName</code></td>
<td><p>[required] The name or unique stack ID that's associated with the
stack whose policy you want to get.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StackPolicyBody = "string"
    )

### Request syntax

    svc$get_stack_policy(
      StackName = "string"
    )
