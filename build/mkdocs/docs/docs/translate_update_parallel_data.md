<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>translate_update_parallel_data</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a previously created parallel data resource by importing a new input file from Amazon S3

### Description

Updates a previously created parallel data resource by importing a new
input file from Amazon S3.

### Usage

    translate_update_parallel_data(Name, Description, ParallelDataConfig,
      ClientToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="translate_update_parallel_data_:_Name">Name</code></td>
<td><p>[required] The name of the parallel data resource being
updated.</p></td>
</tr>
<tr class="even">
<td><code
id="translate_update_parallel_data_:_Description">Description</code></td>
<td><p>A custom description for the parallel data resource in Amazon
Translate.</p></td>
</tr>
<tr class="odd">
<td><code
id="translate_update_parallel_data_:_ParallelDataConfig">ParallelDataConfig</code></td>
<td><p>[required] Specifies the format and S3 location of the parallel
data input file.</p></td>
</tr>
<tr class="even">
<td><code
id="translate_update_parallel_data_:_ClientToken">ClientToken</code></td>
<td><p>[required] A unique identifier for the request. This token is
automatically generated when you use Amazon Translate through an AWS
SDK.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string",
      Status = "CREATING"|"UPDATING"|"ACTIVE"|"DELETING"|"FAILED",
      LatestUpdateAttemptStatus = "CREATING"|"UPDATING"|"ACTIVE"|"DELETING"|"FAILED",
      LatestUpdateAttemptAt = as.POSIXct(
        "2015-01-01"
      )
    )

### Request syntax

    svc$update_parallel_data(
      Name = "string",
      Description = "string",
      ParallelDataConfig = list(
        S3Uri = "string",
        Format = "TSV"|"CSV"|"TMX"
      ),
      ClientToken = "string"
    )
