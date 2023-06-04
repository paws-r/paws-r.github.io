<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_update_action_target</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the name and description of a custom action target in Security Hub

### Description

Updates the name and description of a custom action target in Security
Hub.

### Usage

    securityhub_update_action_target(ActionTargetArn, Name, Description)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_update_action_target_:_ActionTargetArn">ActionTargetArn</code></td>
<td><p>[required] The ARN of the custom action target to
update.</p></td>
</tr>
<tr class="even">
<td><code id="securityhub_update_action_target_:_Name">Name</code></td>
<td><p>The updated name of the custom action target.</p></td>
</tr>
<tr class="odd">
<td><code
id="securityhub_update_action_target_:_Description">Description</code></td>
<td><p>The updated description for the custom action target.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_action_target(
      ActionTargetArn = "string",
      Name = "string",
      Description = "string"
    )

### Examples

    ## Not run: 
    # The following example updates the name and description of a custom
    # action target in Security Hub. You can create custom actions to
    # automatically respond to Security Hub findings using Amazon EventBridge.
    svc$update_action_target(
      ActionTargetArn = "arn:aws:securityhub:us-west-1:123456789012:action/custom/Remediation",
      Description = "Sends specified findings to customer service chat",
      Name = "Chat custom action"
    )

    ## End(Not run)
