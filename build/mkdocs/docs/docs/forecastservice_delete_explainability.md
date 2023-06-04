<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_delete_explainability</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Explainability resource

### Description

Deletes an Explainability resource.

You can delete only predictor that have a status of `ACTIVE` or
`CREATE_FAILED`. To get the status, use the `describe_explainability`
operation.

### Usage

    forecastservice_delete_explainability(ExplainabilityArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_delete_explainability_:_ExplainabilityArn">ExplainabilityArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Explainability
resource to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_explainability(
      ExplainabilityArn = "string"
    )
