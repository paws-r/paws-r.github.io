<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_cancel_data_quality_rule_recommendation_run</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Cancels the specified recommendation run that was being used to generate rules

### Description

Cancels the specified recommendation run that was being used to generate
rules.

### Usage

    glue_cancel_data_quality_rule_recommendation_run(RunId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_cancel_data_quality_rule_recommendation_run_:_RunId">RunId</code></td>
<td><p>[required] The unique run identifier associated with this
run.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$cancel_data_quality_rule_recommendation_run(
      RunId = "string"
    )
