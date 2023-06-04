<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_describe_standards</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of the available standards in Security Hub

### Description

Returns a list of the available standards in Security Hub.

For each standard, the results include the standard ARN, the name, and a
description.

### Usage

    securityhub_describe_standards(NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="securityhub_describe_standards_:_NextToken">NextToken</code></td>
<td><p>The token that is required for pagination. On your first call to
the <code>describe_standards</code> operation, set the value of this
parameter to <code>NULL</code>.</p>
<p>For subsequent calls to the operation, to continue listing data, set
the value of this parameter to the value returned from the previous
response.</p></td>
</tr>
<tr class="even">
<td><code
id="securityhub_describe_standards_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of standards to return.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Standards = list(
        list(
          StandardsArn = "string",
          Name = "string",
          Description = "string",
          EnabledByDefault = TRUE|FALSE,
          StandardsManagedBy = list(
            Company = "string",
            Product = "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_standards(
      NextToken = "string",
      MaxResults = 123
    )

### Examples

    ## Not run: 
    # The following example returns a list of available security standards in
    # Security Hub.
    svc$describe_standards()

    ## End(Not run)
