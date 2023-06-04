<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_get_resource_evaluation_summary</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a summary of resource evaluation for the specified resource evaluation ID from the proactive rules that were run

### Description

Returns a summary of resource evaluation for the specified resource
evaluation ID from the proactive rules that were run. The results
indicate which evaluation context was used to evaluate the rules, which
resource details were evaluated, the evaluation mode that was run, and
whether the resource details comply with the configuration of the
proactive rules.

To see additional information about the evaluation result, such as which
rule flagged a resource as NON\_COMPLIANT, use the
`get_compliance_details_by_resource` API. For more information, see the
[Examples](https://docs.aws.amazon.com/config/latest/APIReference/API_GetResourceEvaluationSummary.html#API_GetResourceEvaluationSummary_Examples)
section.

### Usage

    configservice_get_resource_evaluation_summary(ResourceEvaluationId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_get_resource_evaluation_summary_:_ResourceEvaluationId">ResourceEvaluationId</code></td>
<td><p>[required] The unique <code>ResourceEvaluationId</code> of Amazon
Web Services resource execution for which you want to retrieve the
evaluation summary.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ResourceEvaluationId = "string",
      EvaluationMode = "DETECTIVE"|"PROACTIVE",
      EvaluationStatus = list(
        Status = "IN_PROGRESS"|"FAILED"|"SUCCEEDED",
        FailureReason = "string"
      ),
      EvaluationStartTimestamp = as.POSIXct(
        "2015-01-01"
      ),
      Compliance = "COMPLIANT"|"NON_COMPLIANT"|"NOT_APPLICABLE"|"INSUFFICIENT_DATA",
      EvaluationContext = list(
        EvaluationContextIdentifier = "string"
      ),
      ResourceDetails = list(
        ResourceId = "string",
        ResourceType = "string",
        ResourceConfiguration = "string",
        ResourceConfigurationSchemaType = "CFN_RESOURCE_SCHEMA"
      )
    )

### Request syntax

    svc$get_resource_evaluation_summary(
      ResourceEvaluationId = "string"
    )
