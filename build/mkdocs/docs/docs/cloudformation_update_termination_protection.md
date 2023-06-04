<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>cloudformation_update_termination_protection</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates termination protection for the specified stack

### Description

Updates termination protection for the specified stack. If a user
attempts to delete a stack with termination protection enabled, the
operation fails and the stack remains unchanged. For more information,
see [Protecting a Stack From Being
Deleted](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html)
in the *CloudFormation User Guide*.

For [nested
stacks](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html),
termination protection is set on the root stack and can't be changed
directly on the nested stack.

### Usage

    cloudformation_update_termination_protection(
      EnableTerminationProtection, StackName)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="cloudformation_update_termination_protection_:_EnableTerminationProtection">EnableTerminationProtection</code></td>
<td><p>[required] Whether to enable termination protection on the
specified stack.</p></td>
</tr>
<tr class="even">
<td><code
id="cloudformation_update_termination_protection_:_StackName">StackName</code></td>
<td><p>[required] The name or unique ID of the stack for which you want
to set termination protection.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StackId = "string"
    )

### Request syntax

    svc$update_termination_protection(
      EnableTerminationProtection = TRUE|FALSE,
      StackName = "string"
    )
