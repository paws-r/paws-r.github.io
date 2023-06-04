<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_delete_explainability_export</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Deletes an Explainability export

### Description

Deletes an Explainability export.

### Usage

    forecastservice_delete_explainability_export(ExplainabilityExportArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_delete_explainability_export_:_ExplainabilityExportArn">ExplainabilityExportArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Explainability
export to delete.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$delete_explainability_export(
      ExplainabilityExportArn = "string"
    )
