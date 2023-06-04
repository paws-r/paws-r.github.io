<table style="width: 100%;">
<tbody>
<tr class="odd">
<td>glue_update_crawler</td>
<td style="text-align: right;">R Documentation</td>
</tr>
</tbody>
</table>

## Updates a crawler

### Description

Updates a crawler. If a crawler is running, you must stop it using
`stop_crawler` before updating it.

### Usage

    glue_update_crawler(Name, Role, DatabaseName, Description, Targets,
      Schedule, Classifiers, TablePrefix, SchemaChangePolicy, RecrawlPolicy,
      LineageConfiguration, LakeFormationConfiguration, Configuration,
      CrawlerSecurityConfiguration)

### Arguments

<table>
<colgroup>
<col style="width: 35%" />
<col style="width: 65%" />
</colgroup>
<tbody>
<tr class="odd">
<td><code id="glue_update_crawler_:_Name">Name</code></td>
<td><p>[required] Name of the new crawler.</p></td>
</tr>
<tr class="even">
<td><code id="glue_update_crawler_:_Role">Role</code></td>
<td><p>The IAM role or Amazon Resource Name (ARN) of an IAM role that is
used by the new crawler to access customer resources.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_update_crawler_:_DatabaseName">DatabaseName</code></td>
<td><p>The Glue database where results are stored, such as: <code
style="white-space: pre;">⁠arn:aws:daylight:us-east-1::database/sometable/*⁠</code>.</p></td>
</tr>
<tr class="even">
<td><code id="glue_update_crawler_:_Description">Description</code></td>
<td><p>A description of the new crawler.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_update_crawler_:_Targets">Targets</code></td>
<td><p>A list of targets to crawl.</p></td>
</tr>
<tr class="even">
<td><code id="glue_update_crawler_:_Schedule">Schedule</code></td>
<td><p>A <code>cron</code> expression used to specify the schedule (see
<a
href="https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html">Time-Based
Schedules for Jobs and Crawlers</a>. For example, to run something every
day at 12:15 UTC, you would specify: <code
style="white-space: pre;">⁠cron(15 12 * * ? *)⁠</code>.</p></td>
</tr>
<tr class="odd">
<td><code id="glue_update_crawler_:_Classifiers">Classifiers</code></td>
<td><p>A list of custom classifiers that the user has registered. By
default, all built-in classifiers are included in a crawl, but these
custom classifiers always override the default classifiers for a given
classification.</p></td>
</tr>
<tr class="even">
<td><code id="glue_update_crawler_:_TablePrefix">TablePrefix</code></td>
<td><p>The table prefix used for catalog tables that are
created.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_update_crawler_:_SchemaChangePolicy">SchemaChangePolicy</code></td>
<td><p>The policy for the crawler's update and deletion
behavior.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_update_crawler_:_RecrawlPolicy">RecrawlPolicy</code></td>
<td><p>A policy that specifies whether to crawl the entire dataset
again, or to crawl only folders that were added since the last crawler
run.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_update_crawler_:_LineageConfiguration">LineageConfiguration</code></td>
<td><p>Specifies data lineage configuration settings for the
crawler.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_update_crawler_:_LakeFormationConfiguration">LakeFormationConfiguration</code></td>
<td><p>Specifies Lake Formation configuration settings for the
crawler.</p></td>
</tr>
<tr class="odd">
<td><code
id="glue_update_crawler_:_Configuration">Configuration</code></td>
<td><p>Crawler configuration information. This versioned JSON string
allows users to specify aspects of a crawler's behavior. For more
information, see <a
href="https://docs.aws.amazon.com/glue/latest/dg/crawler-configuration.html">Setting
crawler configuration options</a>.</p></td>
</tr>
<tr class="even">
<td><code
id="glue_update_crawler_:_CrawlerSecurityConfiguration">CrawlerSecurityConfiguration</code></td>
<td><p>The name of the <code>SecurityConfiguration</code> structure to
be used by this crawler.</p></td>
</tr>
</tbody>
</table>

### Value

An empty list.

### Request syntax

    svc$update_crawler(
      Name = "string",
      Role = "string",
      DatabaseName = "string",
      Description = "string",
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
      Schedule = "string",
      Classifiers = list(
        "string"
      ),
      TablePrefix = "string",
      SchemaChangePolicy = list(
        UpdateBehavior = "LOG"|"UPDATE_IN_DATABASE",
        DeleteBehavior = "LOG"|"DELETE_FROM_DATABASE"|"DEPRECATE_IN_DATABASE"
      ),
      RecrawlPolicy = list(
        RecrawlBehavior = "CRAWL_EVERYTHING"|"CRAWL_NEW_FOLDERS_ONLY"|"CRAWL_EVENT_MODE"
      ),
      LineageConfiguration = list(
        CrawlerLineageSettings = "ENABLE"|"DISABLE"
      ),
      LakeFormationConfiguration = list(
        UseLakeFormationCredentials = TRUE|FALSE,
        AccountId = "string"
      ),
      Configuration = "string",
      CrawlerSecurityConfiguration = "string"
    )
