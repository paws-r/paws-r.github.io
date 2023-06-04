<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_batch_get_crawlers</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Returns a list of resource metadata for a given list of crawler names

### Description

Returns a list of resource metadata for a given list of crawler names.
After calling the `list_crawlers` operation, you can call this operation
to access the data to which you have been granted permissions. This
operation supports all IAM permissions, including permission conditions
that uses tags.

### Usage

    glue_batch_get_crawlers(CrawlerNames)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code
id="glue_batch_get_crawlers_:_CrawlerNames">CrawlerNames</code></td>
<td><p>[required] A list of crawler names, which might be the names
returned from the <code>list_crawlers</code> operation.</p></td>
</tr>
</tbody>
</table>

### Value

A list with the following syntax:

    list(
      Crawlers = list(
        list(
          Name = "string",
          Role = "string",
          Targets = list(
            S3Targets = list(
              list(
                Path = "string",
                Exclusions = list(
                  "string"
                ),
                ConnectionName = "string",
                SampleSize = 123,
                EventQueueArn = "string",
                DlqEventQueueArn = "string"
              )
            ),
            JdbcTargets = list(
              list(
                ConnectionName = "string",
                Path = "string",
                Exclusions = list(
                  "string"
                ),
                EnableAdditionalMetadata = list(
                  "COMMENTS"|"RAWTYPES"
                )
              )
            ),
            MongoDBTargets = list(
              list(
                ConnectionName = "string",
                Path = "string",
                ScanAll = TRUE|FALSE
              )
            ),
            DynamoDBTargets = list(
              list(
                Path = "string",
                scanAll = TRUE|FALSE,
                scanRate = 123.0
              )
            ),
            CatalogTargets = list(
              list(
                DatabaseName = "string",
                Tables = list(
                  "string"
                ),
                ConnectionName = "string",
                EventQueueArn = "string",
                DlqEventQueueArn = "string"
              )
            ),
            DeltaTargets = list(
              list(
                DeltaTables = list(
                  "string"
                ),
                ConnectionName = "string",
                WriteManifest = TRUE|FALSE,
                CreateNativeDeltaTable = TRUE|FALSE
              )
            )
          ),
          DatabaseName = "string",
          Description = "string",
          Classifiers = list(
            "string"
          ),
          RecrawlPolicy = list(
            RecrawlBehavior = "CRAWL_EVERYTHING"|"CRAWL_NEW_FOLDERS_ONLY"|"CRAWL_EVENT_MODE"
          ),
          SchemaChangePolicy = list(
            UpdateBehavior = "LOG"|"UPDATE_IN_DATABASE",
            DeleteBehavior = "LOG"|"DELETE_FROM_DATABASE"|"DEPRECATE_IN_DATABASE"
          ),
          LineageConfiguration = list(
            CrawlerLineageSettings = "ENABLE"|"DISABLE"
          ),
          State = "READY"|"RUNNING"|"STOPPING",
          TablePrefix = "string",
          Schedule = list(
            ScheduleExpression = "string",
            State = "SCHEDULED"|"NOT_SCHEDULED"|"TRANSITIONING"
          ),
          CrawlElapsedTime = 123,
          CreationTime = as.POSIXct(
            "2015-01-01"
          ),
          LastUpdated = as.POSIXct(
            "2015-01-01"
          ),
          LastCrawl = list(
            Status = "SUCCEEDED"|"CANCELLED"|"FAILED",
            ErrorMessage = "string",
            LogGroup = "string",
            LogStream = "string",
            MessagePrefix = "string",
            StartTime = as.POSIXct(
              "2015-01-01"
            )
          ),
          Version = 123,
          Configuration = "string",
          CrawlerSecurityConfiguration = "string",
          LakeFormationConfiguration = list(
            UseLakeFormationCredentials = TRUE|FALSE,
            AccountId = "string"
          )
        )
      ),
      CrawlersNotFound = list(
        "string"
      )
    )

### Request syntax

    svc$batch_get_crawlers(
      CrawlerNames = list(
        "string"
      )
    )
