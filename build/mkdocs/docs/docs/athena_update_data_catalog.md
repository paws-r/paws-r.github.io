<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>athena_update_data_catalog</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates the data catalog that has the specified name

### Description

Updates the data catalog that has the specified name.

### Usage

    athena_update_data_catalog(Name, Type, Description, Parameters)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="athena_update_data_catalog_:_Name">Name</code></td>
<td><p>[required] The name of the data catalog to update. The catalog
name must be unique for the Amazon Web Services account and can use a
maximum of 127 alphanumeric, underscore, at sign, or hyphen characters.
The remainder of the length constraint of 256 is reserved for use by
Athena.</p></td>
</tr>
<tr class="even">
<td><code id="athena_update_data_catalog_:_Type">Type</code></td>
<td><p>[required] Specifies the type of data catalog to update. Specify
<code>LAMBDA</code> for a federated catalog, <code>HIVE</code> for an
external hive metastore, or <code>GLUE</code> for an Glue Data
Catalog.</p></td>
</tr>
<tr class="odd">
<td><code
id="athena_update_data_catalog_:_Description">Description</code></td>
<td><p>New or modified text that describes the data catalog.</p></td>
</tr>
<tr class="even">
<td><code
id="athena_update_data_catalog_:_Parameters">Parameters</code></td>
<td><p>Specifies the Lambda function or functions to use for updating
the data catalog. This is a mapping whose values depend on the catalog
type.</p>
<ul>
<li><p>For the <code>HIVE</code> data catalog type, use the following
syntax. The <code style="white-space: pre;">⁠metadata-function⁠</code>
parameter is required. <code
style="white-space: pre;">⁠The sdk-version⁠</code> parameter is optional
and defaults to the currently supported version.</p>
<p><code
style="white-space: pre;">⁠metadata-function=lambda_arn, sdk-version=version_number ⁠</code></p></li>
<li><p>For the <code>LAMBDA</code> data catalog type, use one of the
following sets of required parameters, but not both.</p>
<ul>
<li><p>If you have one Lambda function that processes metadata and
another for reading the actual data, use the following syntax. Both
parameters are required.</p>
<p><code
style="white-space: pre;">⁠metadata-function=lambda_arn, record-function=lambda_arn ⁠</code></p></li>
<li><p>If you have a composite Lambda function that processes both
metadata and data, use the following syntax to specify your Lambda
function.</p>
<p><code style="white-space: pre;">⁠function=lambda_arn ⁠</code></p></li>
</ul></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_data_catalog(
      Name = "string",
      Type = "LAMBDA"|"GLUE"|"HIVE",
      Description = "string",
      Parameters = list(
        "string"
      )
    )
