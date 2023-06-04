<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_delete_action_target</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a custom action target from Security Hub

### Description

Deletes a custom action target from Security Hub.

Deleting a custom action target does not affect any findings or insights
that were already sent to Amazon CloudWatch Events using the custom
action.

### Usage

    securityhub_delete_action_target(ActionTargetArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_delete_action_target_:_ActionTargetArn">ActionTargetArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the custom action
target to delete.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ActionTargetArn = "string"
    )

### Request syntax

    svc$delete_action_target(
      ActionTargetArn = "string"
    )

### Examples

    ## Not run: 
    # The following example deletes a custom action target that triggers
    # target actions in Amazon CloudWatch Events. Deleting a custom action
    # target doesn't affect findings or insights that were already sent to
    # CloudWatch Events based on the custom action.
    svc$delete_action_target(
      ActionTargetArn = "arn:aws:securityhub:us-west-1:123456789012:action/custom/Remediation"
    )

    ## End(Not run)
