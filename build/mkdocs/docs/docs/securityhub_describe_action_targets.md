<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_describe_action_targets</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of the custom action targets in Security Hub in your account

### Description

Returns a list of the custom action targets in Security Hub in your
account.

### Usage

    securityhub_describe_action_targets(ActionTargetArns, NextToken,
      MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_describe_action_targets_:_ActionTargetArns">ActionTargetArns</code></td>
<td><p>A list of custom action target ARNs for the custom action targets
to retrieve.</p></td>
</tr>
<tr class="even">
<td><code
id="securityhub_describe_action_targets_:_NextToken">NextToken</code></td>
<td><p>The token that is required for pagination. On your first call to
the <code>describe_action_targets</code> operation, set the value of
this parameter to <code>NULL</code>.</p>
<p>For subsequent calls to the operation, to continue listing data, set
the value of this parameter to the value returned from the previous
response.</p></td>
</tr>
<tr class="odd">
<td><code
id="securityhub_describe_action_targets_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ActionTargets = list(
        list(
          ActionTargetArn = "string",
          Name = "string",
          Description = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_action_targets(
      ActionTargetArns = list(
        "string"
      ),
      NextToken = "string",
      MaxResults = 123
    )

### Examples

    ## Not run: 
    # The following example returns a list of custom action targets. You use
    # custom actions on findings and insights in Security Hub to trigger
    # target actions in Amazon CloudWatch Events.
    svc$describe_action_targets(
      ActionTargetArns = list(
        "arn:aws:securityhub:us-west-1:123456789012:action/custom/Remediation"
      )
    )

    ## End(Not run)
