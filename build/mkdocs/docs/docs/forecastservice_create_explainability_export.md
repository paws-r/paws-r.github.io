<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>forecastservice_create_explainability_export</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Exports an Explainability resource created by the CreateExplainability operation

### Description

Exports an Explainability resource created by the
`create_explainability` operation. Exported files are exported to an
Amazon Simple Storage Service (Amazon S3) bucket.

You must specify a DataDestination object that includes an Amazon S3
bucket and an Identity and Access Management (IAM) role that Amazon
Forecast can assume to access the Amazon S3 bucket. For more
information, see aws-forecast-iam-roles.

The `Status` of the export job must be `ACTIVE` before you can access
the export in your Amazon S3 bucket. To get the status, use the
`describe_explainability_export` operation.

### Usage

    forecastservice_create_explainability_export(ExplainabilityExportName,
      ExplainabilityArn, Destination, Tags, Format)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="forecastservice_create_explainability_export_:_ExplainabilityExportName">ExplainabilityExportName</code></td>
<td><p>[required] A unique name for the Explainability export.</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_create_explainability_export_:_ExplainabilityArn">ExplainabilityArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Explainability
to export.</p></td>
</tr>
<tr class="odd">
<td><code
id="forecastservice_create_explainability_export_:_Destination">Destination</code></td>
<td><p>[required]</p></td>
</tr>
<tr class="even">
<td><code
id="forecastservice_create_explainability_export_:_Tags">Tags</code></td>
<td><p>Optional metadata to help you categorize and organize your
resources. Each tag consists of a key and an optional value, both of
which you define. Tag keys and values are case sensitive.</p>
<p>The following restrictions apply to tags:</p>
<ul>
<li><p>For each resource, each tag key must be unique and each tag key
must have one value.</p></li>
<li><p>Maximum number of tags per resource: 50.</p></li>
<li><p>Maximum key length: 128 Unicode characters in UTF-8.</p></li>
<li><p>Maximum value length: 256 Unicode characters in UTF-8.</p></li>
<li><p>Accepted characters: all letters and numbers, spaces
representable in UTF-8, and + - = . _ : / @. If your tagging schema is
used across other services and resources, the character restrictions of
those services also apply.</p></li>
<li><p>Key prefixes cannot include any upper or lowercase combination of
<code style="white-space: pre;">⁠aws:⁠</code> or <code
style="white-space: pre;">⁠AWS:⁠</code>. Values can have this prefix. If a
tag value has <code>aws</code> as its prefix but the key does not,
Forecast considers it to be a user tag and will count against the limit
of 50 tags. Tags with only the key prefix of <code>aws</code> do not
count against your tags per resource limit. You cannot edit or delete
tag keys with this prefix.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code
id="forecastservice_create_explainability_export_:_Format">Format</code></td>
<td><p>The format of the exported data, CSV or PARQUET.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      ExplainabilityExportArn = "string"
    )

### Request syntax

    svc$create_explainability_export(
      ExplainabilityExportName = "string",
      ExplainabilityArn = "string",
      Destination = list(
        S3Config = list(
          Path = "string",
          RoleArn = "string",
          KMSKeyArn = "string"
        )
      ),
      Tags = list(
        list(
          Key = "string",
          Value = "string"
        )
      ),
      Format = "string"
    )
