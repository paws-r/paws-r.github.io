<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_get_conformance_pack_compliance_details</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns compliance details of a conformance pack for all Amazon Web Services resources that are monitered by conformance pack

### Description

Returns compliance details of a conformance pack for all Amazon Web
Services resources that are monitered by conformance pack.

### Usage

    configservice_get_conformance_pack_compliance_details(
      ConformancePackName, Filters, Limit, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_get_conformance_pack_compliance_details_:_ConformancePackName">ConformancePackName</code></td>
<td><p>[required] Name of the conformance pack.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_get_conformance_pack_compliance_details_:_Filters">Filters</code></td>
<td><p>A <code>ConformancePackEvaluationFilters</code> object.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_get_conformance_pack_compliance_details_:_Limit">Limit</code></td>
<td><p>The maximum number of evaluation results returned on each page.
If you do no specify a number, Config uses the default. The default is
100.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_get_conformance_pack_compliance_details_:_NextToken">NextToken</code></td>
<td><p>The <code>nextToken</code> string returned in a previous request
that you use to request the next page of results in a paginated
response.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ConformancePackName = "string",
      ConformancePackRuleEvaluationResults = list(
        list(
          ComplianceType = "COMPLIANT"|"NON_COMPLIANT"|"INSUFFICIENT_DATA",
          EvaluationResultIdentifier = list(
            EvaluationResultQualifier = list(
              ConfigRuleName = "string",
              ResourceType = "string",
              ResourceId = "string",
              EvaluationMode = "DETECTIVE"|"PROACTIVE"
            ),
            OrderingTimestamp = as.POSIXct(
              "2015-01-01"
            ),
            ResourceEvaluationId = "string"
          ),
          ConfigRuleInvokedTime = as.POSIXct(
            "2015-01-01"
          ),
          ResultRecordedTime = as.POSIXct(
            "2015-01-01"
          ),
          Annotation = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_conformance_pack_compliance_details(
      ConformancePackName = "string",
      Filters = list(
        ConfigRuleNames = list(
          "string"
        ),
        ComplianceType = "COMPLIANT"|"NON_COMPLIANT"|"INSUFFICIENT_DATA",
        ResourceType = "string",
        ResourceIds = list(
          "string"
        )
      ),
      Limit = 123,
      NextToken = "string"
    )
