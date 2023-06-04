<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_get_compliance_details_by_resource</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns the evaluation results for the specified Amazon Web Services resource

### Description

Returns the evaluation results for the specified Amazon Web Services
resource. The results indicate which Config rules were used to evaluate
the resource, when each rule was last invoked, and whether the resource
complies with each rule.

### Usage

    configservice_get_compliance_details_by_resource(ResourceType,
      ResourceId, ComplianceTypes, NextToken, ResourceEvaluationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_get_compliance_details_by_resource_:_ResourceType">ResourceType</code></td>
<td><p>The type of the Amazon Web Services resource for which you want
compliance information.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_get_compliance_details_by_resource_:_ResourceId">ResourceId</code></td>
<td><p>The ID of the Amazon Web Services resource for which you want
compliance information.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_get_compliance_details_by_resource_:_ComplianceTypes">ComplianceTypes</code></td>
<td><p>Filters the results by compliance.</p>
<p><code>INSUFFICIENT_DATA</code> is a valid <code>ComplianceType</code>
that is returned when an Config rule cannot be evaluated. However,
<code>INSUFFICIENT_DATA</code> cannot be used as a
<code>ComplianceType</code> for filtering results.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_get_compliance_details_by_resource_:_NextToken">NextToken</code></td>
<td><p>The <code>nextToken</code> string returned on a previous page
that you use to get the next page of results in a paginated
response.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_get_compliance_details_by_resource_:_ResourceEvaluationId">ResourceEvaluationId</code></td>
<td><p>The unique ID of Amazon Web Services resource execution for which
you want to retrieve evaluation results.</p>
<p>You need to only provide either a <code>ResourceEvaluationID</code>
or a <code>ResourceID </code>and <code>ResourceType</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EvaluationResults = list(
        list(
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
          ComplianceType = "COMPLIANT"|"NON_COMPLIANT"|"NOT_APPLICABLE"|"INSUFFICIENT_DATA",
          ResultRecordedTime = as.POSIXct(
            "2015-01-01"
          ),
          ConfigRuleInvokedTime = as.POSIXct(
            "2015-01-01"
          ),
          Annotation = "string",
          ResultToken = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$get_compliance_details_by_resource(
      ResourceType = "string",
      ResourceId = "string",
      ComplianceTypes = list(
        "COMPLIANT"|"NON_COMPLIANT"|"NOT_APPLICABLE"|"INSUFFICIENT_DATA"
      ),
      NextToken = "string",
      ResourceEvaluationId = "string"
    )
