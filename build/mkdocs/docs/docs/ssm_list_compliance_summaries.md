<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>ssm_list_compliance_summaries</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a summary count of compliant and non-compliant resources for a compliance type

### Description

Returns a summary count of compliant and non-compliant resources for a
compliance type. For example, this call can return State Manager
associations, patches, or custom compliance types according to the
filter criteria that you specify.

### Usage

    ssm_list_compliance_summaries(Filters, NextToken, MaxResults)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="ssm_list_compliance_summaries_:_Filters">Filters</code></td>
<td><p>One or more compliance or inventory filters. Use a filter to
return a more specific list of results.</p></td>
</tr>
<tr class="even">
<td><code
id="ssm_list_compliance_summaries_:_NextToken">NextToken</code></td>
<td><p>A token to start the list. Use this token to get the next set of
results.</p></td>
</tr>
<tr class="odd">
<td><code
id="ssm_list_compliance_summaries_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of items to return for this call. Currently,
you can specify null or 50. The call also returns a token that you can
specify in a subsequent call to get the next set of results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ComplianceSummaryItems = list(
        list(
          ComplianceType = "string",
          CompliantSummary = list(
            CompliantCount = 123,
            SeveritySummary = list(
              CriticalCount = 123,
              HighCount = 123,
              MediumCount = 123,
              LowCount = 123,
              InformationalCount = 123,
              UnspecifiedCount = 123
            )
          ),
          NonCompliantSummary = list(
            NonCompliantCount = 123,
            SeveritySummary = list(
              CriticalCount = 123,
              HighCount = 123,
              MediumCount = 123,
              LowCount = 123,
              InformationalCount = 123,
              UnspecifiedCount = 123
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_compliance_summaries(
      Filters = list(
        list(
          Key = "string",
          Values = list(
            "string"
          ),
          Type = "EQUAL"|"NOT_EQUAL"|"BEGIN_WITH"|"LESS_THAN"|"GREATER_THAN"
        )
      ),
      NextToken = "string",
      MaxResults = 123
    )
