<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>gluedatabrew_list_job_runs</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Lists all of the previous runs of a particular DataBrew job

### Description

Lists all of the previous runs of a particular DataBrew job.

### Usage

    gluedatabrew_list_job_runs(Name, MaxResults, NextToken)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="gluedatabrew_list_job_runs_:_Name">Name</code></td>
<td><p>[required] The name of the job.</p></td>
</tr>
<tr class="even">
<td><code
id="gluedatabrew_list_job_runs_:_MaxResults">MaxResults</code></td>
<td><p>The maximum number of results to return in this request.</p></td>
</tr>
<tr class="odd">
<td><code
id="gluedatabrew_list_job_runs_:_NextToken">NextToken</code></td>
<td><p>The token returned by a previous call to retrieve the next set of
results.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      JobRuns = list(
        list(
          Attempt = 123,
          CompletedOn = as.POSIXct(
            "2015-01-01"
          ),
          DatasetName = "string",
          ErrorMessage = "string",
          ExecutionTime = 123,
          JobName = "string",
          RunId = "string",
          State = "STARTING"|"RUNNING"|"STOPPING"|"STOPPED"|"SUCCEEDED"|"FAILED"|"TIMEOUT",
          LogSubscription = "ENABLE"|"DISABLE",
          LogGroupName = "string",
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
          RecipeReference = list(
            Name = "string",
            RecipeVersion = "string"
          ),
          StartedBy = "string",
          StartedOn = as.POSIXct(
            "2015-01-01"
          ),
          JobSample = list(
            Mode = "FULL_DATASET"|"CUSTOM_ROWS",
            Size = 123
          ),
          ValidationConfigurations = list(
            list(
              RulesetArn = "string",
              ValidationMode = "CHECK_ALL"
            )
          )
        )
      ),
      NextToken = "string"
    )

### Request syntax

    svc$list_job_runs(
      Name = "string",
      MaxResults = 123,
      NextToken = "string"
    )
