<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>securityhub_list_security_control_definitions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all of the security controls that apply to a specified standard

### Description

Lists all of the security controls that apply to a specified standard.

### Usage

    securityhub_list_security_control_definitions(StandardsArn, NextToken,
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
id="securityhub_list_security_control_definitions_:_StandardsArn">StandardsArn</code></td>
<td><p>The Amazon Resource Name (ARN) of the standard that you want to
view controls for.</p></td>
</tr>
<tr class="even">
<td><code
id="securityhub_list_security_control_definitions_:_NextToken">NextToken</code></td>
<td><p>Optional pagination parameter.</p></td>
</tr>
<tr class="odd">
<td><code
id="securityhub_list_security_control_definitions_:_MaxResults">MaxResults</code></td>
<td><p>An optional parameter that limits the total results of the API
response to the specified number. If this parameter isn't provided in
the request, the results include the first 25 security controls that
apply to the specified standard. The results also include a
<code>NextToken</code> parameter that you can use in a subsequent API
call to get the next 25 controls. This repeats until all controls for
the standard are returned.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      SecurityControlDefinitions = list(
        list(
          SecurityControlId = "string",
          Title = "string",
          Description = "string",
          RemediationUrl = "string",
          SeverityRating = "LOW"|"MEDIUM"|"HIGH"|"CRITICAL",
          CurrentRegionAvailability = "AVAILABLE"|"UNAVAILABLE"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_security_control_definitions(
      StandardsArn = "string",
      NextToken = "string",
      MaxResults = 123
    )

### Examples

    ## Not run: 
    # The following example lists security controls that apply to a specified
    # Security Hub standard.
    svc$list_security_control_definitions(
      MaxResults = 3L,
      NextToken = "NULL",
      StandardsArn = "arn:aws:securityhub:::standards/aws-foundational-security..."
    )

    ## End(Not run)
