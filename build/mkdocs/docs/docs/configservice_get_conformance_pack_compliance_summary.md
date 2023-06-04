<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_get_conformance_pack_compliance_summary</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns compliance details for the conformance pack based on the cumulative compliance results of all the rules in that conformance pack

### Description

Returns compliance details for the conformance pack based on the
cumulative compliance results of all the rules in that conformance pack.

### Usage

    configservice_get_conformance_pack_compliance_summary(
      ConformancePackNames, Limit, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_get_conformance_pack_compliance_summary_:_ConformancePackNames">ConformancePackNames</code></td>
<td><p>[required] Names of conformance packs.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_get_conformance_pack_compliance_summary_:_Limit">Limit</code></td>
<td><p>The maximum number of conformance packs returned on each
page.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_get_conformance_pack_compliance_summary_:_NextToken">NextToken</code></td>
<td><p>The nextToken string returned on a previous page that you use to
get the next page of results in a paginated response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConformancePackComplianceSummaryList = list(
        list(
          ConformancePackName = "string",
          ConformancePackComplianceStatus = "COMPLIANT"|"NON_COMPLIANT"|"INSUFFICIENT_DATA"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_conformance_pack_compliance_summary(
      ConformancePackNames = list(
        "string"
      ),
      Limit = 123,
      NextToken = "string"
    )
