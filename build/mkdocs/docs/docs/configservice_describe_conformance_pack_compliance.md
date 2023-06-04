<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_describe_conformance_pack_compliance</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns compliance details for each rule in that conformance pack

### Description

Returns compliance details for each rule in that conformance pack.

You must provide exact rule names.

### Usage

    configservice_describe_conformance_pack_compliance(ConformancePackName,
      Filters, Limit, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_describe_conformance_pack_compliance_:_ConformancePackName">ConformancePackName</code></td>
<td><p>[required] Name of the conformance pack.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_describe_conformance_pack_compliance_:_Filters">Filters</code></td>
<td><p>A <code>ConformancePackComplianceFilters</code> object.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_describe_conformance_pack_compliance_:_Limit">Limit</code></td>
<td><p>The maximum number of Config rules within a conformance pack are
returned on each page.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_describe_conformance_pack_compliance_:_NextToken">NextToken</code></td>
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
      ConformancePackRuleComplianceList = list(
        list(
          ConfigRuleName = "string",
          ComplianceType = "COMPLIANT"|"NON_COMPLIANT"|"INSUFFICIENT_DATA",
          Controls = list(
            "string"
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$describe_conformance_pack_compliance(
      ConformancePackName = "string",
      Filters = list(
        ConfigRuleNames = list(
          "string"
        ),
        ComplianceType = "COMPLIANT"|"NON_COMPLIANT"|"INSUFFICIENT_DATA"
      ),
      Limit = 123,
      NextToken = "string"
    )
