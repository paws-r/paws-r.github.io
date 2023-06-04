<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>configservice_put_evaluations</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Used by an Lambda function to deliver evaluation results to Config

### Description

Used by an Lambda function to deliver evaluation results to Config. This
action is required in every Lambda function that is invoked by an Config
rule.

### Usage

    configservice_put_evaluations(Evaluations, ResultToken, TestMode)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="configservice_put_evaluations_:_Evaluations">Evaluations</code></td>
<td><p>The assessments that the Lambda function performs. Each
evaluation identifies an Amazon Web Services resource and indicates
whether it complies with the Config rule that invokes the Lambda
function.</p></td>
</tr>
<tr class="even">
<td><code
id="configservice_put_evaluations_:_ResultToken">ResultToken</code></td>
<td><p>[required] An encrypted token that associates an evaluation with
an Config rule. Identifies the rule and the event that triggered the
evaluation.</p></td>
</tr>
<tr class="odd">
<td><code
id="configservice_put_evaluations_:_TestMode">TestMode</code></td>
<td><p>Use this parameter to specify a test run for
<code>put_evaluations</code>. You can verify whether your Lambda
function will deliver evaluation results to Config. No updates occur to
your existing evaluations, and evaluation results are not sent to
Config.</p>
<p>When <code>TestMode</code> is <code>true</code>,
<code>put_evaluations</code> doesn't require a valid value for the
<code>ResultToken</code> parameter, but the value cannot be
null.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      FailedEvaluations = list(
        list(
          ComplianceResourceType = "string",
          ComplianceResourceId = "string",
          ComplianceType = "COMPLIANT"|"NON_COMPLIANT"|"NOT_APPLICABLE"|"INSUFFICIENT_DATA",
          Annotation = "string",
          OrderingTimestamp = as.POSIXct(
            "2015-01-01"
          )
        )
      )
    )

### Request syntax

    svc$put_evaluations(
      Evaluations = list(
        list(
          ComplianceResourceType = "string",
          ComplianceResourceId = "string",
          ComplianceType = "COMPLIANT"|"NON_COMPLIANT"|"NOT_APPLICABLE"|"INSUFFICIENT_DATA",
          Annotation = "string",
          OrderingTimestamp = as.POSIXct(
            "2015-01-01"
          )
        )
      ),
      ResultToken = "string",
      TestMode = TRUE|FALSE
    )
