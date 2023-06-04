<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_describe_explainability_export</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Describes an Explainability export created using the CreateExplainabilityExport operation

### Description

Describes an Explainability export created using the
`create_explainability_export` operation.

### Usage

    forecastservice_describe_explainability_export(ExplainabilityExportArn)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_describe_explainability_export_:_ExplainabilityExportArn">ExplainabilityExportArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Explainability
export.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ExplainabilityExportArn = "string",
      ExplainabilityExportName = "string",
      ExplainabilityArn = "string",
      Destination = list(
        S3Config = list(
          Path = "string",
          RoleArn = "string",
          KMSKeyArn = "string"
        )
      ),
      Message = "string",
      Status = "string",
      CreationTime = as.POSIXct(
        "2015-01-01"
      ),
      LastModificationTime = as.POSIXct(
        "2015-01-01"
      ),
      Format = "string"
    )

### Request syntax

    svc$describe_explainability_export(
      ExplainabilityExportArn = "string"
    )
