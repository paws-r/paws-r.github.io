<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>finspacedata_create_changeset</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Creates a new Changeset in a FinSpace Dataset

### Description

Creates a new Changeset in a FinSpace Dataset.

### Usage

    finspacedata_create_changeset(clientToken, datasetId, changeType,
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
id="finspacedata_create_changeset_:_clientToken">clientToken</code></td>
<td><p>A token that ensures idempotency. This token expires in 10
minutes.</p></td>
</tr>
<tr class="even">
<td><code
id="finspacedata_create_changeset_:_datasetId">datasetId</code></td>
<td><p>[required] The unique identifier for the FinSpace Dataset where
the Changeset will be created.</p></td>
</tr>
<tr class="odd">
<td><code
id="finspacedata_create_changeset_:_changeType">changeType</code></td>
<td><p>[required] The option to indicate how a Changeset will be applied
to a Dataset.</p>
<ul>
<li><p><code>REPLACE</code> – Changeset will be considered as a
replacement to all prior loaded Changesets.</p></li>
<li><p><code>APPEND</code> – Changeset will be considered as an addition
to the end of all prior loaded Changesets.</p></li>
<li><p><code>MODIFY</code> – Changeset is considered as a replacement to
a specific prior ingested Changeset.</p></li>
</ul></td>
</tr>
<tr class="even">
<td><code
id="finspacedata_create_changeset_:_sourceParams">sourceParams</code></td>
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
data from an Amazon S3 Bucket using the FinSpace API</a>
section.</p></td>
</tr>
<tr class="odd">
<td><code
id="finspacedata_create_changeset_:_formatParams">formatParams</code></td>
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
      datasetId = "string",
      changesetId = "string"
    )

### Request syntax

    svc$create_changeset(
      clientToken = "string",
      datasetId = "string",
      changeType = "REPLACE"|"APPEND"|"MODIFY",
      sourceParams = list(
        "string"
      ),
      formatParams = list(
        "string"
      )
    )
