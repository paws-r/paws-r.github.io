<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_put_external_evaluation</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Add or updates the evaluations for process checks

### Description

Add or updates the evaluations for process checks. This API checks if
the rule is a process check when the name of the Config rule is
provided.

### Usage

    configservice_put_external_evaluation(ConfigRuleName,
      ExternalEvaluation)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_put_external_evaluation_:_ConfigRuleName">ConfigRuleName</code></td>
<td><p>[required] The name of the Config rule.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_put_external_evaluation_:_ExternalEvaluation">ExternalEvaluation</code></td>
<td><p>[required] An <code>ExternalEvaluation</code> object that
provides details about compliance.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$put_external_evaluation(
      ConfigRuleName = "string",
      ExternalEvaluation = list(
        ComplianceResourceType = "string",
        ComplianceResourceId = "string",
        ComplianceType = "COMPLIANT"|"NON_COMPLIANT"|"NOT_APPLICABLE"|"INSUFFICIENT_DATA",
        Annotation = "string",
        OrderingTimestamp = as.POSIXct(
          "2015-01-01"
        )
      )
    )
