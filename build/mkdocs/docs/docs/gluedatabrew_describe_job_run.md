<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>gluedatabrew_describe_job_run</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Represents one run of a DataBrew job

### Description

Represents one run of a DataBrew job.

### Usage

    gluedatabrew_describe_job_run(Name, RunId)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="gluedatabrew_describe_job_run_:_Name">Name</code></td>
<td><p>[required] The name of the job being processed during this
run.</p></td>
</tr>
<tr class="even">
<td><code id="gluedatabrew_describe_job_run_:_RunId">RunId</code></td>
<td><p>[required] The unique identifier of the job run.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Attempt = 123,
      CompletedOn = as.POSIXct(
        "2015-01-01"
      ),
      DatasetName = "string",
      ErrorMessage = "string",
      ExecutionTime = 123,
      JobName = "string",
      ProfileConfiguration = list(
        DatasetStatisticsConfiguration = list(
          IncludedStatistics = list(
            "string"
          ),
          Overrides = list(
            list(
              Statistic = "string",
              Parameters = list(
                "string"
              )
            )
          )
        ),
        ProfileColumns = list(
          list(
            Regex = "string",
            Name = "string"
          )
        ),
        ColumnStatisticsConfigurations = list(
          list(
            Selectors = list(
              list(
                Regex = "string",
                Name = "string"
              )
            ),
            Statistics = list(
              IncludedStatistics = list(
                "string"
              ),
              Overrides = list(
                list(
                  Statistic = "string",
                  Parameters = list(
                    "string"
                  )
                )
              )
            )
          )
        ),
        EntityDetectorConfiguration = list(
          EntityTypes = list(
            "string"
          ),
          AllowedStatistics = list(
            list(
              Statistics = list(
                "string"
              )
            )
          )
        )
      ),
      ValidationConfigurations = list(
        list(
          RulesetArn = "string",
          ValidationMode = "CHECK_ALL"
        )
      ),
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
      )
    )

### Request syntax

    svc$describe_job_run(
      Name = "string",
      RunId = "string"
    )
