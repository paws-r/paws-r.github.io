<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_list_standards_control_associations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Specifies whether a control is currently enabled or disabled in each enabled standard in the calling account

### Description

Specifies whether a control is currently enabled or disabled in each
enabled standard in the calling account.

### Usage

    securityhub_list_standards_control_associations(SecurityControlId,
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
id="securityhub_list_standards_control_associations_:_SecurityControlId">SecurityControlId</code></td>
<td><p>[required] The identifier of the control (identified with
<code>SecurityControlId</code>, <code>SecurityControlArn</code>, or a
mix of both parameters) that you want to determine the enablement status
of in each enabled standard.</p></td>
</tr>
<tr class="even">
<td><code
id="securityhub_list_standards_control_associations_:_NextToken">NextToken</code></td>
<td><p>Optional pagination parameter.</p></td>
</tr>
<tr class="odd">
<td><code
id="securityhub_list_standards_control_associations_:_MaxResults">MaxResults</code></td>
<td><p>An optional parameter that limits the total results of the API
response to the specified number. If this parameter isn't provided in
the request, the results include the first 25 standard and control
associations. The results also include a <code>NextToken</code>
parameter that you can use in a subsequent API call to get the next 25
associations. This repeats until all associations for the specified
control are returned. The number of results is limited by the number of
supported Security Hub standards that you've enabled in the calling
account.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      StandardsControlAssociationSummaries = list(
        list(
          StandardsArn = "string",
          SecurityControlId = "string",
          SecurityControlArn = "string",
          AssociationStatus = "ENABLED"|"DISABLED",
          RelatedRequirements = list(
            "string"
          ),
          UpdatedAt = as.POSIXct(
            "2015-01-01"
          ),
          UpdatedReason = "string",
          StandardsControlTitle = "string",
          StandardsControlDescription = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_standards_control_associations(
      SecurityControlId = "string",
      NextToken = "string",
      MaxResults = 123
    )

### Examples

    ## Not run: 
    # The following example specifies whether a control is currently enabled
    # or disabled in each enabled standard in the calling account. The
    # response also provides other details about the control.
    svc$list_standards_control_associations(
      SecurityControlId = "S3.1"
    )

    ## End(Not run)
