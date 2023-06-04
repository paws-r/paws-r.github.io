<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_describe_standards_controls</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of security standards controls

### Description

Returns a list of security standards controls.

For each control, the results include information about whether it is
currently enabled, the severity, and a link to remediation information.

### Usage

    securityhub_describe_standards_controls(StandardsSubscriptionArn,
      NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_describe_standards_controls_:_StandardsSubscriptionArn">StandardsSubscriptionArn</code></td>
<td><p>[required] The ARN of a resource that represents your
subscription to a supported standard. To get the subscription ARNs of
the standards you have enabled, use the
<code>get_enabled_standards</code> operation.</p></td>
</tr>
<tr class="even">
<td><code
id="securityhub_describe_standards_controls_:_NextToken">NextToken</code></td>
<td><p>The token that is required for pagination. On your first call to
the <code>describe_standards_controls</code> operation, set the value of
this parameter to <code>NULL</code>.</p>
<p>For subsequent calls to the operation, to continue listing data, set
the value of this parameter to the value returned from the previous
response.</p></td>
</tr>
<tr class="odd">
<td><code
id="securityhub_describe_standards_controls_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of security standard controls to
return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Controls = list(
        list(
          StandardsControlArn = "string",
          ControlStatus = "ENABLED"|"DISABLED",
          DisabledReason = "string",
          ControlStatusUpdatedAt = as.POSIXct(
            "2015-01-01"
          ),
          ControlId = "string",
          Title = "string",
          Description = "string",
          RemediationUrl = "string",
          SeverityRating = "LOW"|"MEDIUM"|"HIGH"|"CRITICAL",
          RelatedRequirements = list(
            "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_standards_controls(
      StandardsSubscriptionArn = "string",
      NextToken = "string",
      MaxResults = 123
    )

### Examples

    ## Not run: 
    # The following example returns a list of security controls and control
    # details that apply to a specified security standard. The list includes
    # controls that are enabled and disabled in the standard.
    svc$describe_standards_controls(
      MaxResults = 2L,
      NextToken = "NULL",
      StandardsSubscriptionArn = "arn:aws:securityhub:us-west-1:123456789012:su..."
    )

    ## End(Not run)
