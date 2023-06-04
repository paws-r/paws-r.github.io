<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>finspacedata_update_changeset</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a FinSpace Changeset

### Description

Updates a FinSpace Changeset.

### Usage

    finspacedata_update_changeset(clientToken, datasetId, changesetId,
      sourceParams, formatParams)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="finspacedata_update_changeset_:_clientToken">clientToken</code></td>
<td><p>A token that ensures idempotency. This token expires in 10
minutes.</p></td>
</tr>
<tr class="even">
<td><code
id="finspacedata_update_changeset_:_datasetId">datasetId</code></td>
<td><p>[required] The unique identifier for the FinSpace Dataset in
which the Changeset is created.</p></td>
</tr>
<tr class="odd">
<td><code
id="finspacedata_update_changeset_:_changesetId">changesetId</code></td>
<td><p>[required] The unique identifier for the Changeset to
update.</p></td>
</tr>
<tr class="even">
<td><code
id="finspacedata_update_changeset_:_sourceParams">sourceParams</code></td>
<td><p>[required] Options that define the location of the data being
ingested (<code>s3SourcePath</code>) and the source of the changeset
(<code>sourceType</code>).</p>
<p>Both <code>s3SourcePath</code> and <code>sourceType</code> are
required attributes.</p>
<p>Here is an example of how you could specify the
<code>sourceParams</code>:</p>
<p><code
style="white-space: pre;">⁠"sourceParams": { "s3SourcePath": "s3://finspace-landing-us-east-2-bk7gcfvitndqa6ebnvys4d/scratch/wr5hh8pwkpqqkxa4sxrmcw/ingestion/equity.csv", "sourceType": "S3" }⁠</code></p>
<p>The S3 path that you specify must allow the FinSpace role access. To
do that, you first need to configure the IAM policy on S3 bucket. For
more information, see <a
href="https://docs.aws.amazon.com/finspace/latest/data-api/fs-using-the-finspace-api.html#access-s3-buckets">Loading
data from an Amazon S3 Bucket using the FinSpace
API</a>section.</p></td>
</tr>
<tr class="odd">
<td><code
id="finspacedata_update_changeset_:_formatParams">formatParams</code></td>
<td><p>[required] Options that define the structure of the source
file(s) including the format type (<code>formatType</code>), header row
(<code>withHeader</code>), data separation character
(<code>separator</code>) and the type of compression
(<code>compression</code>).</p>
<p><code>formatType</code> is a required attribute and can have the
following values:</p>
<ul>
<li><p><code>PARQUET</code> – Parquet source file format.</p></li>
<li><p><code>CSV</code> – CSV source file format.</p></li>
<li><p><code>JSON</code> – JSON source file format.</p></li>
<li><p><code>XML</code> – XML source file format.</p></li>
</ul>
<p>Here is an example of how you could specify the
<code>formatParams</code>:</p>
<p><code
style="white-space: pre;">⁠"formatParams": { "formatType": "CSV", "withHeader": "true", "separator": ",", "compression":"None" }⁠</code></p>
<p>Note that if you only provide <code>formatType</code> as
<code>CSV</code>, the rest of the attributes will automatically default
to CSV values as following:</p>
<p><code
style="white-space: pre;">⁠{ "withHeader": "true", "separator": "," }⁠</code></p>
<p>For more information about supported file formats, see <a
href="https://docs.aws.amazon.com/finspace/latest/userguide/supported-data-types.html">Supported
Data Types and File Formats</a> in the FinSpace User Guide.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      changesetId = "string",
      datasetId = "string"
    )

### Request syntax

    svc$update_changeset(
      clientToken = "string",
      datasetId = "string",
      changesetId = "string",
      sourceParams = list(
        "string"
      ),
      formatParams = list(
        "string"
      )
    )
