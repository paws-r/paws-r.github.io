<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>gluedatabrew_update_recipe_job</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Modifies the definition of an existing DataBrew recipe job

### Description

Modifies the definition of an existing DataBrew recipe job.

### Usage

    gluedatabrew_update_recipe_job(EncryptionKeyArn, EncryptionMode, Name,
      LogSubscription, MaxCapacity, MaxRetries, Outputs, DataCatalogOutputs,
      DatabaseOutputs, RoleArn, Timeout)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="gluedatabrew_update_recipe_job_:_EncryptionKeyArn">EncryptionKeyArn</code></td>
<td><p>The Amazon Resource Name (ARN) of an encryption key that is used
to protect the job.</p></td>
</tr>
<tr class="even">
<td><code
id="gluedatabrew_update_recipe_job_:_EncryptionMode">EncryptionMode</code></td>
<td><p>The encryption mode for the job, which can be one of the
following:</p>
<ul>
<li><p><code>SSE-KMS</code> - Server-side encryption with keys managed
by KMS.</p></li>
<li><p><code>SSE-S3</code> - Server-side encryption with keys managed by
Amazon S3.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td><code id="gluedatabrew_update_recipe_job_:_Name">Name</code></td>
<td><p>[required] The name of the job to update.</p></td>
</tr>
<tr class="even">
<td><code
id="gluedatabrew_update_recipe_job_:_LogSubscription">LogSubscription</code></td>
<td><p>Enables or disables Amazon CloudWatch logging for the job. If
logging is enabled, CloudWatch writes one log stream for each job
run.</p></td>
</tr>
<tr class="odd">
<td><code
id="gluedatabrew_update_recipe_job_:_MaxCapacity">MaxCapacity</code></td>
<td><p>The maximum number of nodes that DataBrew can consume when the
job processes data.</p></td>
</tr>
<tr class="even">
<td><code
id="gluedatabrew_update_recipe_job_:_MaxRetries">MaxRetries</code></td>
<td><p>The maximum number of times to retry the job after a job run
fails.</p></td>
</tr>
<tr class="odd">
<td><code
id="gluedatabrew_update_recipe_job_:_Outputs">Outputs</code></td>
<td><p>One or more artifacts that represent the output from running the
job.</p></td>
</tr>
<tr class="even">
<td><code
id="gluedatabrew_update_recipe_job_:_DataCatalogOutputs">DataCatalogOutputs</code></td>
<td><p>One or more artifacts that represent the Glue Data Catalog output
from running the job.</p></td>
</tr>
<tr class="odd">
<td><code
id="gluedatabrew_update_recipe_job_:_DatabaseOutputs">DatabaseOutputs</code></td>
<td><p>Represents a list of JDBC database output objects which defines
the output destination for a DataBrew recipe job to write into.</p></td>
</tr>
<tr class="even">
<td><code
id="gluedatabrew_update_recipe_job_:_RoleArn">RoleArn</code></td>
<td><p>[required] The Amazon Resource Name (ARN) of the Identity and
Access Management (IAM) role to be assumed when DataBrew runs the
job.</p></td>
</tr>
<tr class="odd">
<td><code
id="gluedatabrew_update_recipe_job_:_Timeout">Timeout</code></td>
<td><p>The job's timeout in minutes. A job that attempts to run longer
than this timeout period ends with a status of
<code>TIMEOUT</code>.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Name = "string"
    )

### Request syntax

    svc$update_recipe_job(
      EncryptionKeyArn = "string",
      EncryptionMode = "SSE-KMS"|"SSE-S3",
      Name = "string",
      LogSubscription = "ENABLE"|"DISABLE",
      MaxCapacity = 123,
      MaxRetries = 123,
      Outputs = list(
        list(
          CompressionFormat = "GZIP"|"LZ4"|"SNAPPY"|"BZIP2"|"DEFLATE"|"LZO"|"BROTLI"|"ZSTD"|"ZLIB",
          Format = "CSV"|"JSON"|"PARQUET"|"GLUEPARQUET"|"AVRO"|"ORC"|"XML"|"TABLEAUHYPER",
          PartitionColumns = list(
            "string"
          ),
          Location = list(
            Bucket = "string",
            Key = "string",
            BucketOwner = "string"
          ),
          Overwrite = TRUE|FALSE,
          FormatOptions = list(
            Csv = list(
              Delimiter = "string"
            )
          ),
          MaxOutputFiles = 123
        )
      ),
      DataCatalogOutputs = list(
        list(
          CatalogId = "string",
          DatabaseName = "string",
          TableName = "string",
          S3Options = list(
            Location = list(
              Bucket = "string",
              Key = "string",
              BucketOwner = "string"
            )
          ),
          DatabaseOptions = list(
            TempDirectory = list(
              Bucket = "string",
              Key = "string",
              BucketOwner = "string"
            ),
            TableName = "string"
          ),
          Overwrite = TRUE|FALSE
        )
      ),
      DatabaseOutputs = list(
        list(
          GlueConnectionName = "string",
          DatabaseOptions = list(
            TempDirectory = list(
              Bucket = "string",
              Key = "string",
              BucketOwner = "string"
            ),
            TableName = "string"
          ),
          DatabaseOutputMode = "NEW_TABLE"
        )
      ),
      RoleArn = "string",
      Timeout = 123
    )
