<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_delete_predictor</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes a predictor created using the DescribePredictor or CreatePredictor operations

### Description

Deletes a predictor created using the `describe_predictor` or
`create_predictor` operations. You can delete only predictor that have a
status of `ACTIVE` or `CREATE_FAILED`. To get the status, use the
`describe_predictor` operation.

### Usage

    forecastservice_delete_predictor(PredictorArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_delete_predictor_:_PredictorArn">PredictorArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the predictor to
delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_predictor(
      PredictorArn = "string"
    )
