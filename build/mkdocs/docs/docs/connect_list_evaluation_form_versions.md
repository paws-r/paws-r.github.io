<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>connect_list_evaluation_form_versions</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists versions of an evaluation form in the specified Amazon Connect instance

### Description

Lists versions of an evaluation form in the specified Amazon Connect
instance.

### Usage

    connect_list_evaluation_form_versions(InstanceId, EvaluationFormId,
      MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="connect_list_evaluation_form_versions_:_InstanceId">InstanceId</code></td>
<td><p>[required] The identifier of the Amazon Connect instance. You can
<a
href="https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html">find
the instance ID</a> in the Amazon Resource Name (ARN) of the
instance.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_list_evaluation_form_versions_:_EvaluationFormId">EvaluationFormId</code></td>
<td><p>[required] The unique identifier for the evaluation
form.</p></td>
</tr>
<tr class="odd">
<td><code
id="connect_list_evaluation_form_versions_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return per page.</p></td>
</tr>
<tr class="even">
<td><code
id="connect_list_evaluation_form_versions_:_NextToken">NextToken</code></td>
<td><p>The token for the next set of results. Use the value returned in
the previous response in the next request to retrieve the next set of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      EvaluationFormVersionSummaryList = list(
        list(
          EvaluationFormArn = "string",
          EvaluationFormId = "string",
          EvaluationFormVersion = 123,
          Locked = TRUE|FALSE,
          Status = "DRAFT"|"ACTIVE",
          CreatedTime = as.POSIXct(
            "2015-01-01"
          ),
          CreatedBy = "string",
          LastModifiedTime = as.POSIXct(
            "2015-01-01"
          ),
          LastModifiedBy = "string"
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_evaluation_form_versions(
      InstanceId = "string",
      EvaluationFormId = "string",
      MaxResults = 123,
      NextToken = "string"
    )
