<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_start_blueprint_run</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Starts a new run of the specified blueprint

### Description

Starts a new run of the specified blueprint.

### Usage

    glue_start_blueprint_run(BlueprintName, Parameters, RoleArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_start_blueprint_run_:_BlueprintName">BlueprintName</code></td>
<td><p>[required] The name of the blueprint.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_start_blueprint_run_:_Parameters">Parameters</code></td>
<td><p>Specifies the parameters as a <code>BlueprintParameters</code>
object.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_start_blueprint_run_:_RoleArn">RoleArn</code></td>
<td><p>[required] Specifies the IAM role used to create the
workflow.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      RunId = "string"
    )

### Request syntax

    svc$start_blueprint_run(
      BlueprintName = "string",
      Parameters = "string",
      RoleArn = "string"
    )
