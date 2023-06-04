<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>wellarchitected_get_consolidated_report</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Get a consolidated report of your workloads

### Description

Get a consolidated report of your workloads.

You can optionally choose to include workloads that have been shared
with you.

### Usage

    wellarchitected_get_consolidated_report(Format, IncludeSharedResources,
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
id="wellarchitected_get_consolidated_report_:_Format">Format</code></td>
<td><p>[required] The format of the consolidated report.</p>
<p>For <code>PDF</code>, <code>Base64String</code> is returned. For
<code>JSON</code>, <code>Metrics</code> is returned.</p></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_get_consolidated_report_:_IncludeSharedResources">IncludeSharedResources</code></td>
<td><p>Set to <code>true</code> to have shared resources included in the
report.</p></td>
</tr>
<tr class="odd">
<td><code
id="wellarchitected_get_consolidated_report_:_NextToken">NextToken</code></td>
<td></td>
</tr>
<tr class="even">
<td><code
id="wellarchitected_get_consolidated_report_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return for this
request.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Metrics = list(
        list(
          MetricType = "WORKLOAD",
          RiskCounts = list(
            123
          ),
          WorkloadId = "string",
          WorkloadName = "string",
          WorkloadArn = "string",
          UpdatedAt = as.POSIXct(
            "2015-01-01"
          ),
          Lenses = list(
            list(
              LensArn = "string",
              Pillars = list(
                list(
                  PillarId = "string",
                  RiskCounts = list(
                    123
                  ),
                  Questions = list(
                    list(
                      QuestionId = "string",
                      Risk = "UNANSWERED"|"HIGH"|"MEDIUM"|"NONE"|"NOT_APPLICABLE",
                      BestPractices = list(
                        list(
                          ChoiceId = "string",
                          ChoiceTitle = "string"
                        )
                      )
                    )
                  )
                )
              ),
              RiskCounts = list(
                123
              )
            )
          ),
          LensesAppliedCount = 123
        )
      ),
      NextToken = "string",
      Base64String = "string"
    )

### Request syntax

    svc$get_consolidated_report(
      Format = "PDF"|"JSON",
      IncludeSharedResources = TRUE|FALSE,
      NextToken = "string",
      MaxResults = 123
    )
