<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>finspacedata_get_working_location</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## A temporary Amazon S3 location, where you can copy your files from a source location to stage or use as a scratch space in FinSpace notebook

### Description

A temporary Amazon S3 location, where you can copy your files from a
source location to stage or use as a scratch space in FinSpace notebook.

### Usage

    finspacedata_get_working_location(locationType)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="finspacedata_get_working_location_:_locationType">locationType</code></td>
<td><p>Specify the type of the working location.</p>
<ul>
<li><p><code>SAGEMAKER</code> – Use the Amazon S3 location as a
temporary location to store data content when working with FinSpace
Notebooks that run on SageMaker studio.</p></li>
<li><p><code>INGESTION</code> – Use the Amazon S3 location as a staging
location to copy your data content and then use the location with the
Changeset creation operation.</p></li>
</ul></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      s3Uri = "string",
      s3Path = "string",
      s3Bucket = "string"
    )

### Request syntax

    svc$get_working_location(
      locationType = "INGESTION"|"SAGEMAKER"
    )
